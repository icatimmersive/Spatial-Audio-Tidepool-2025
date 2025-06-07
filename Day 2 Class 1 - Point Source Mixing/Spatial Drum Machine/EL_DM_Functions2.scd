(
// Functions for Woodstockhausen 2024 drum machine


~restore_buttons = {
	var button_matrix = ~interface[\button_matrix];
	~dm[\instr_count].do({
		arg i;
		~pat[\tick_count].do({
			arg j;
			button_matrix[i,j].value = ~pat[\attack_matrix] [i, j];
		});
	});
};

/* clear the interface */

~clear = {
	~dm[\instr_count].do({
		arg i;
		~pat[\tick_count].do({
			arg j;
			~pat[\attack_matrix][i, j] = 0;
			~interface[\button_matrix][i, j].value = 0;
		});
	});
};

~initialize_front_end = {
	~initialize_pattern.();
	~build_pattern_window.();
	~build_control_panel.();
	~build_algorithm_panel.();
	~build_pattern_recall_window.();
	~busPool = Array.newClear(128);
	128.do({arg i; ~busPool[i] = Bus.audio(s,1) });
	~bus_index = 0;
};


/* save drum machine state and patterns to a file */

~store_dm_configuration = {
	arg startPath;
	Dialog.savePanel({
		arg path;
		~dm.writeArchive(path);
	}, path:startPath);
};

/* read stored drum machine state and patterns from a file */

~recall_dm_configuration = {
	arg startPath;
	Dialog.openPanel({
		arg path;
		~dm = Object.readArchive(path);
		~sfbufs = [];
		~dm[\instr_count].do({
			arg i;
			~sfbufs  = ~sfbufs.add( Buffer.read(s, ~dm[\fullPaths][i]));
		});
		~dm[\maxpats] = 64; // only for older stored patches
		~initialize_front_end.();
		~dm[\global_gain] = 1.0;
	},path:startPath );
};

/* create a fresh drum machine from a directory with drum sounds */

~initialize_dm_from_directory = {
	arg startPath;
	Buffer.freeAll;
	~dm = Dictionary.new;
	~dm[\sfdurs] = [];
	~dm[\chans] = [];
	~dm[\fullPaths] = [];
	~dm[\names] = [];
	~dm[\maxpats] = 64; // maximum number of patterns to store
	~dm[\allpats] = Array.newClear(~dm[\maxpats]);
	~dm[\current_pattern] = nil;
	~dm[\next_pattern] = nil;
	~dm[\processor_odds] = Array.fill(9,{1});
	~dm[\tempo]= 120;
	~dm[\min_rate] = 0.9;
	~dm[\max_rate] = 1.1;
	~dm[\retro_odds] = 0.2;
	~dm[\blend_min] = 0.01;
	~dm[\blend_max] = 0.35;
	~dm[\global_gain] = 1.0;
	~sfbufs = [];
	FileDialog({
		arg path;
		var folder = PathName.new(path);
		folder.filesDo({ |aFile|
			var match = ["aif","aiff","wav","WAV"];
			var fileOk = false;
			var info = aFile.fileName.splitext;
			match.do({ |testStr| if( info[1] == testStr, {fileOk = true}) });
			if( fileOk, { ("loading" + aFile.fileName).postln;
				~sfbufs = ~sfbufs.add( Buffer.read(s, aFile.fullPath, action:{
					arg buf;
					~dm[\sfdurs] = ~dm[\sfdurs].add(buf.numFrames / buf.sampleRate);
					~dm[\chans] = ~dm[\chans].add(buf.numChannels);
					~dm[\fullPaths] = ~dm[\fullPaths].add(aFile.fullPath);
					~dm[\names] = ~dm[\names].add( info[0] );
				}) );
			});
		});
		~dm[\instr_count] = ~sfbufs.size;
		~dm[\global_gains] = Array.fill(~dm[\instr_count],{0.25});
	},
	fileMode: 2,
	stripResult: true,
	path:startPath
	);
};

/* create all randomized parameters for the blob */

~make_a_blob = {
	var available_synths = [\xRing, \xComb, \xSweep1, \xSweep2, \xStv, \xAlpverb, \xCombchord, \xBendy, \xTremolo];
	var odds = ~dm[\processor_odds];
	var processor_count = 3; // this should be global
	var my_blob = Dictionary.new;
	my_blob[\pan] = 1.0.rand;
	my_blob[\rate] = rrand(~dm[\min_rate] , ~dm[\max_rate]);
	my_blob[\overlap] = rrand(0.05,1.0);
	my_blob[\procs] = Array.newClear(processor_count);
	my_blob[\params] = Array.newClear(processor_count);
	my_blob[\blends] = Array.newClear(processor_count);
	if( ~dm[\retro_odds].coin, {my_blob[\retro] = true},{my_blob[\retro] = false});
	processor_count.do({|i|
		var synthName = available_synths.wchoose(odds.normalizeSum);
		my_blob[\params][i] = Dictionary.new;
		my_blob[\procs][i] = synthName;
		my_blob[\blends][i] = rrand(~dm[\blend_min],~dm[\blend_max]);
		my_blob[\params][i][\blend] = rrand(~dm[\blend_min],~dm[\blend_max]);

		switch(synthName,
			\xRing,{
				my_blob[\params][i][\freq] = exprand(100.0,4000.0);
			},
			\xComb, {
				my_blob[\params][i][\delTime] = rrand(0.03,0.49);
				my_blob[\params][i][\ringTime] = rrand(0.25,6);
			},
			\xSweep1, {
				my_blob[\params][i][\freq1] = rrand(1000.0,4000);
				my_blob[\params][i][\freq2] = rrand(200.0,400);
				my_blob[\params][i][\rez] = rrand(0.1,0.5);
			},
			\xSweep2, {
				my_blob[\params][i][\freq2] = rrand(1000.0,4000);
				my_blob[\params][i][\freq1] = rrand(400.0,600);
				my_blob[\params][i][\rez] = rrand(0.1,0.5);
			},
			\xStv, {
				my_blob[\params][i][\speed1] = rrand(0.05,0.6);
				my_blob[\params][i][\speed2] = rrand(0.01,0.6);
				my_blob[\params][i][\dktime] = rrand(0.02,0.60);
			},
			\xAlpverb, {
				my_blob[\params][i][\dktime] = rrand(5.0,10.0);
			},
			\xCombchord, {
				var chords = [[0,4,7,10],[0,5,10,15], [0,4,7,11], [0,2,4,6],[0,4,11,13]];
				var freqs = chords.choose.midiratio * rrand(200.0,500.0);
				my_blob[\params][i][\dktime] = rrand(0.5, 3);
				my_blob[\params][i][\freqs] = freqs;
			},
			\xBendy, {
				my_blob[\params][i][\speed1] = rrand(0.5,3.0);
				my_blob[\params][i][\speed2] = rrand(0.5,3.0);
			},
			\xTremolo, {
				my_blob[\params][i][\speed] = rrand(3.0,15.0);
			},
		);
	});
	my_blob;
};


~dispatch2 = { | index, the_blob |
	var start =  0;
	var chans = ~dm[\chans][index];
	var rate = the_blob[\rate];
	var pan = the_blob[\pan];
	var gain = 0.5 * ~dm[\global_gains][index] * ~dm[\global_gain];
	var retro = the_blob[\retro];
	var overlap = the_blob[\overlap];
	var dk = 0.2;
	var sust = ~dm[\sfdurs][index] + overlap;
	var thisBus = ~busPool[~bus_index];
	var current_node;
	var processor_count = 3;
	var blend, synthName, params, procs;

	~bus_index = (~bus_index +1) % ~busPool.size;
	if( retro, {rate = rate * -1; start = ~sfbufs[index].numFrames - 2},{  });
	if( chans == 1, {
		current_node = Synth(\dm3MonoPlay,[\buffer, ~sfbufs[index], \rate, rate, \startPos, start, \gain, gain, \pan, 0.0, \outbus, thisBus]);
	},{
		current_node = Synth(\dm3StereoPlay,[\buffer, ~sfbufs[index], \rate, rate, \startPos, start, \gain, gain,
			\outbus, thisBus]);
	});
	processor_count.do({ arg i;
		blend = the_blob[\blends][i];
		synthName = the_blob[\procs][i];
		the_blob[\params][i][\sust] = sust;
		the_blob[\params][i][\dk] = dk;
		the_blob[\params][i][\bus] = thisBus.asBus;
		params = the_blob[\params][i];
		current_node = ~adder2.value(i, blend, synthName, params, current_node, thisBus, sust, dk);
	});
	// Synth.after(current_node, \passthroughQuad, [\bus, thisBus, \duration, sust + dk]);
	Synth.after(current_node, \passthrough, [\bus, thisBus, \duration, sust + dk, \outbus, ~octoChans.choose]);

};

~adder2 = { | cnt, blend, synthName, params, lastNode, thisBus, sust, dk |
	var thisNode;
	thisNode = Synth.after(lastNode, synthName.asSymbol, params.getPairs);
	thisNode;
};


/* set buttons from current pattern */

/* play the drum loop */

~play_current_pattern = {
	var counter = 0;
	var player;
	player = Routine({
		loop {
			var tempo = ~dm[\tempo];
			var subdiv =  ~pat[\tsig_subdiv];
			var numerator = ~pat[\tsig_numerator];
			var denominator = ~pat[\tsig_denominator];
			var tadv = ((60 / tempo) * (4 / denominator)) / subdiv;
			var attack_matrix = ~pat[\attack_matrix];
			var blob_matrix = ~pat[\blob_matrix];
			var tick_count = ~pat[\tick_count];
			if( (counter == (tick_count - 1) ) && ~dm[\next_pattern].notNil && (~dm[\next_pattern] != ~dm[\current_pattern]), {
				~pat = ~dm[\allpats][~dm[\next_pattern]].deepCopy;
				{
					~rebuild_button_matrix.(~pat[\tsig_numerator],~pat[\tsig_denominator], ~pat[\tsig_subdiv]);
					~restore_buttons.();
					~interface[\ts_num_box].value = ~pat[\tsig_numerator];
					~interface[\ts_denom_box].value = ~pat[\tsig_denominator];
					~interface[\subdiv_box].value = ~pat[\tsig_subdiv];
					~dm[\current_pattern] = ~dm[\next_pattern];
				}.defer(0);
			});
			~dm[\instr_count].do({
				arg i;
				if( attack_matrix[i,counter] == 1,{
					var the_blob = blob_matrix[i,counter];
					~dispatch2.(i,the_blob);
				});
			});
			tadv.wait;
			counter = (counter + 1) % tick_count;
		};
	});
	player.play; // start loop
};



/* initialize pattern */

~initialize_pattern = {
	var maxticks = 64;
	~pat = Dictionary.new;
	~pat[\tsig_numerator] = 4;
	~pat[\tsig_denominator] = 4;
	~pat[\tsig_subdiv] = 4;
	~pat[\tick_count] = ~pat[\tsig_numerator] * ~pat[\tsig_subdiv];
	~pat[\attack_matrix] = Array2D.new(~dm[\instr_count], maxticks);
	~pat[\blob_matrix] = Array2D.new(~dm[\instr_count], maxticks);
	~dm[\instr_count].do({
		arg i;
		maxticks.do({
			arg j;
			~pat[\attack_matrix] [i, j] = 0;
		});
	});
};

/* build pattern window */

~build_pattern_window = {
	var h = 20, v = 20;
	var hadv;
	var instr_count = ~dm[\instr_count];
	var tick_count  = ~pat[\tick_count] ;
	var subdiv = ~pat[\tsig_subdiv];
	var button_matrix = Array2D.new(instr_count,tick_count);
	var name_texts = Array.newClear(instr_count);
	var color1 = Color.white;
	var color2 = Color.black;
	var w = Window.new( "Drum Machine WS",Rect(550,800, 700, 600));
	w.front;
	instr_count.do({
		arg j;
		hadv = 100 / subdiv;
		name_texts[j] = StaticText.new(w, Rect(20, v, 160, 20) );
		name_texts[j].string = ~dm[\names][j];
		h = 180;
		tick_count.do({
			arg i;
			button_matrix[j,i] = Button(w, Rect(h, v, 20, 20));
			button_matrix[j,i].states =  [["", Color.black, color1],  ["", Color.black, color2]];
			h = h + hadv;
		});
		v = v + 25;
	});
	~interface = Dictionary.new;
	~interface[\w] = w;
	~interface[\name_texts] = name_texts;
	~interface[\button_matrix] = button_matrix;
	~update_button_actions.();
};

~rebuild_button_matrix = { | num, denom, subdiv |
	var tick_count = num * subdiv;
	var button_matrix;
	var attack_matrix;
	var instr_count = ~dm[\instr_count];
	var previous_num = ~dm[\previous_numerator];
	var previous_denom = ~dm[\previous_denominator];
	var previous_subdiv = ~dm[\previous_subdiv];

	if( (num != previous_num) || (denom != previous_denom) || (subdiv != previous_subdiv),{
		var h = 180, v = 20;
		var hadv = 100 / subdiv * (4 / denom);
		var w;
		if(hadv < 20, { hadv = 20});
		w = ~interface[\w];
		button_matrix = ~interface[\button_matrix];
		attack_matrix = ~dm[\attack_matrix];
		button_matrix.rows.do({
			arg i;
			button_matrix.cols.do({
				arg j;
				button_matrix[i,j].remove;
			});
		});
		button_matrix = Array2D(instr_count, tick_count);
		attack_matrix = Array2D(instr_count, tick_count);
		instr_count.do({
			arg i;
			h = 180;
			tick_count.do({
				arg j;
				button_matrix[i,j] = Button(w, Rect(h, v, 20, 20));
				attack_matrix[i,j] = 0;
				button_matrix[i,j].states =  [ ["", Color.black, Color.white],  ["", Color.black, Color.black] ];
				h = h + hadv;
			});
			v = v + 25;
		});
		~pat[\tick_count] = tick_count;
		~dm[\previous_subdiv] = subdiv;
		~dm[\previous_numerator] = ~pat[\tsig_numerator] ;
		~dm[\previous_denominator] = ~pat[\tsig_denominator] ;
		~interface[\button_matrix] = button_matrix;
		~dm[\attack_matrix] = attack_matrix;
		~update_button_actions.();
		~pat[\tsig_numerator] = num;
		~pat[\tsig_denominator] = denom;
		~pat[\tsig_subdiv] = subdiv;
	});
};
//used
~update_button_actions = {
	var button_matrix = ~interface[\button_matrix];
	~dm[\instr_count].do({
		arg i;
		~pat[\tick_count].do({
			arg j;
			button_matrix[i,j].action = {
				~pat[\attack_matrix][i, j] = button_matrix[i,j].value;
				~pat[\blob_matrix][i, j] = ~make_a_blob.();
			};
		});
	});
};

/* build control panel */

~build_control_panel = {
	var w, clearb, play_button, store_menu, store_label, recall_menu, recall_label;
	var rate_slider, rate_label;
	var retro_slider, retro_label;
	var tempo_label, tempo_numbox;
	var ts_label, ts_num, ts_denom, subdiv_label, subdiv;
	var ts_update_button;
	var globgains_label, global_gains;
	var rate_spec;
	var h = 20, v = 20;
	var play_routine;
	w = Window.new( "DMIII Control Panel",Rect(50,800, 500, 600));
	rate_spec = ControlSpec(0.25,2.0);
	clearb = Button(w, Rect(h, v, 80, 30));
	clearb.action = ~clear;
	clearb.string = "Clear";
	h = h + 90;
	play_button =  Button(w, Rect(h, v, 90, 30));
	play_button.states = [["Start Playing"],["Stop Playing"]];
	play_button.action = {
		arg b;
		var state = b.value;
		if(state == 1, {
			play_routine = ~play_current_pattern.(~dm[\tempo]);
		}, {
			play_routine.stop;
		});
	};
	v = v + 35;
	h = 20;
	store_label = StaticText(w, Rect(h,v, 80, 30));
	store_label.string = "Store pattern";
	h = h + 90;
	store_menu = PopUpMenu(w, Rect(h,v,45, 30));
	store_menu.items = (0..63);
	store_menu.allowsReselection = true;
	store_menu.action = {
		arg menu;
		var index = menu.item;
		~dm[\allpats][index] = ~pat.deepCopy;
		post("Saving current pattern to index" + index + "\n");
	};
	v = v + 35;
	h = 20;
	recall_label = StaticText(w, Rect(h,v, 85, 30));
	recall_label.string = "Recall pattern";
	h = h + 90;
	recall_menu = PopUpMenu(w, Rect(h,v,45, 30));
	recall_menu.items = (0..63);
	recall_menu.allowsReselection = true;
	recall_menu.action = {
		arg menu;
		var index = menu.item;
		if( ~dm[\allpats][index].isNil, {
			post("No pattern found at index" + index + "\n");
		},{
			~dm[\next_pattern] = index;
			post("Recalling pattern" + index + "\n");
		});
	};
	v = v + 35;
	h = 20;
	rate_label = StaticText(w, Rect(h,v, 85, 30));
	rate_label.string = "Rate range";
	h = h + 90;
	rate_slider = RangeSlider(w, Rect(h,v,30,80));
	rate_slider.lo = rate_spec.unmap(~dm[\min_rate] );
	rate_slider.hi = rate_spec.unmap(~dm[\max_rate] );
	rate_slider.action = {
		arg slider;
		~dm[\min_rate] = rate_spec.map(rate_slider.lo);
		~dm[\max_rate] = rate_spec.map(rate_slider.hi);
	};
	h = h + 50;
	retro_label = StaticText(w, Rect(h,v, 85, 30));
	retro_label.string = "Retro odds";
	h = h + 70;
	retro_slider = Slider(w, Rect(h,v,30,80));
	retro_slider.action = {
		arg slider;
		~dm[\retro_odds] = slider.value;
	};
	retro_slider.value = ~dm[\retro_odds];
	v = v + 90;
	h = 20;
	tempo_label = StaticText(w, Rect(h,v, 60, 30)).string_("Tempo");
	h = h + 90;
	tempo_numbox = NumberBox(w, Rect(h,v,40,30));
	tempo_numbox.action = {
		arg num;
		~dm[\tempo] = num.value;
	};
	tempo_numbox.value = ~dm[\tempo];// new
	v = v + 35;
	h = 20;
	ts_label = StaticText(w, Rect(h,v, 120, 30)).string_("Time Signature");
	h = h + 120;
	ts_num = NumberBox(w, Rect(h,v,40,30)).value_(4);
	h = h + 40;
	ts_denom = NumberBox(w, Rect(h,v,40,30)).value_(4);
	h = h + 55;
	subdiv_label = StaticText(w, Rect(h,v, 80, 30)).string_("Subdivision");
	h = h + 80;
	subdiv = NumberBox(w, Rect(h,v,40,30)).value_(4);
	v = v + 35;
	h = 20;
	ts_update_button = Button(w, Rect(h,v,160,30)).string_("Update Time Signature");
	ts_update_button.action = {
		~rebuild_button_matrix.(ts_num.value,ts_denom.value,subdiv.value);
		~clear.();
	};
	v = v + 35;
	h = 20;
	globgains_label = StaticText(w, Rect(h,v + 30, 80, 30)).string_("Global Gains");
	h = h + 90;
	global_gains = MultiSliderView(w, Rect(h,v,~dm[\global_gains].size * 17,90));
	global_gains.value = ~dm[\global_gains];
	global_gains.elasticMode = 1;
	global_gains.isFilled_(true);
	global_gains.action = {
		arg mslider;
		~dm[\global_gains] = mslider.value;
	};
	~interface[\ts_num_box] = ts_num;
	~interface[\ts_denom_box] = ts_denom;
	~interface[\subdiv_box] = subdiv;
	w.front;
};

/* Build pattern recall panel */


~build_pattern_recall_window = {
	var w = Window.new("Stored Patterns");
	var h = 0,v = 5, cnt;
	var bsize = 30;
	var rowSize = 8;
	var buttons;
	var maxpats = ~dm[\maxpats];
	buttons = Array.newClear(maxpats);
	maxpats.do({
		arg i;
		cnt = i % rowSize;

		h = 25 + (cnt* bsize);
		if(cnt == 0, {
			v = v + bsize;
		});
		buttons[i] = Button(w, Rect(h, v, bsize, bsize));
		buttons[i].string = i.asString;
	});
	/* Now set status of buttons based on if a stored pattern exists */

	buttons.do({
		arg thisButton, index;
		if((~dm[\allpats][index]).notNil,{
			thisButton.states = [ [index.asString, Color.black, Color.fromHexString("#CCFF99")] ];
		},{
			thisButton.states = [ [index.asString] ];
		});
		thisButton.action = {
			var last_index;
			if( ~dm[\allpats][index].isNil, {
				post("No pattern found at index" + index + "\n");
			},{
				~dm[\next_pattern] = index;
				post("Recalling pattern" + index + "\n");
				thisButton.states = [[index.asString, Color.black, Color.fromHexString("00CCFF")]];
				last_index = ~dm[\current_pattern];
				buttons[last_index].states = [ [last_index.asString, Color.black, Color.fromHexString("#CCFF99")] ]
			});
		};
	});

	w.front;
};

/* Build algorithm panel */

~build_algorithm_panel = {
	var w, h = 20, v = 20;
	var randfill_label, randfill_odds, randfill_button;
	var ts_num = ~interface[\ts_num_box];
	var ts_denom = ~interface[\ts_denom_box];
	var subdiv = ~interface[\subdiv_box];
	var button;
	var blend_label, blend_slider;
	var procodds_label, procodds_mslider;
	w = Window.new( "DMIII Algorithm Panel",Rect(1250,800, 500, 600));
	randfill_label = StaticText(w, Rect(h,v, 120, 30)).string_("Random Fill Odds");
	h = h + 120;
	randfill_odds = NumberBox(w, Rect(h,v,40,30)).value_(0.05);
	h = h + 40;
	randfill_button = Button(w, Rect(h,v,160,30)).string_("Apply Random Fill");
	randfill_button.action = {
		~dm[\instr_count].do({
			arg i;
			~pat[\tick_count].do({
				arg j;
				button = ~interface[\button_matrix][i,j];
				if( button.notNil,{
				if( randfill_odds.value.coin, {
					~interface[\button_matrix][i,j].value = 1;
					~pat[\attack_matrix][i,j] = 1;
					~pat[\blob_matrix][i, j] = ~make_a_blob.();
				}, {
					~interface[\button_matrix][i,j].value = 0;
					~pat[\attack_matrix][i,j] = 0;
				});
				},{ ["invalid button at",i,j].postln;});
			});
		});
	};
	h = 20;
	v = v + 35;
	blend_label = StaticText(w, Rect(h,v, 90, 30)).string_("Blend Range");
	h = h + 90;
	blend_slider = RangeSlider(w, Rect(h,v,90,30));
	blend_slider.lo = ~dm[\blend_min];
	blend_slider.hi = ~dm[\blend_max];
	blend_slider.action = {
		arg slider;
		~dm[\blend_min] = slider.lo;
		~dm[\blend_max] = slider.hi;
	};
	h = 20;
	v = v + 35;
	procodds_label = StaticText(w, Rect(h,v + 30, 90, 30)).string_("Processor Odds");
		h = h + 90;
	procodds_mslider = MultiSliderView(w, Rect(h,v,~dm[\processor_odds].size * 17,90));
	procodds_mslider.value = ~dm[\processor_odds];
	procodds_mslider.elasticMode = 1;
	procodds_mslider.isFilled_(true);
	procodds_mslider.action = {
		arg mslider;
		~dm[\processor_odds] = mslider.value;
	};
	w.front;
};


"Loaded Spatial Drum Machine Functions".postln;
)