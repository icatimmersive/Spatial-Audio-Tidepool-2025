// Load Cube Audio Interface
s.quit
(
s.options.device = "AXCNTR";
s.options.numOutputBusChannels = 256;
s.options.numPrivateAudioBusChannels = 4096;
s.options.sampleRate = 48000;
s.options.maxSynthDefs = 8192;
s.options.numBuffers = 8192;
s.options.maxNodes = 8192;
s.options.numWireBufs= 8192;
s.options.blockSize = 64;
s.options.memSize = 2 ** 20;
s.latency = 0.1;
s.boot;
)


// Harmonics 1 - 8 for male voice

~sfroot = "/Volumes/Lyonizer5/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Curriculum (from Cube Source)/Day 2 Class 2 - Spectral Spatialization/Infinite/";




// start server

//~sfroot = ~root;
// iterate folder to load every file (only sound files should be there)

(
var fold = PathName.new(~sfroot);
~sfs = [];
fold.filesDo({ |aFile|
	aFile.fullPath.postln;
	~sfs = ~sfs.add( Buffer.read(s, aFile.fullPath ) );
});
)

// playback synthdef

(
SynthDef(\playHarm,
	{ arg buf, chan;
		var harm = PlayBuf.ar(1, buf, doneAction:2);
		Out.ar(chan,harm);
	}
).add;
)



~sfs.do({ arg harm; harm.play});

~sfs[0] = Buffer.read(s, "/Volumes/Lyonizer5/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Curriculum (from Cube Source)/Day 2 Class 2 - Spectral Spatialization/Infinite/infinite_1.aiff")
// mono playback


(
Routine({
	~sfs.do({ arg harm;
		harm.play;
	});

}).play;
)

// stagger harmonics (mono)
(Routine({
	~sfs.do({ arg harm;
		harm.play;
		0.05.wait;
	});

}).play;
)

// spread & loop harmonics
(Routine({
	var chans = [4,12,20,28,36,44,52,60];
	loop {
		~sfs.do({ arg harm, i;
			Synth(\playHarm,[\buf, harm, \chan, chans[i]]);
		});
		1.2.wait;
	}
}).play;
)

// spread & loop harmonics, stagger onsets
(Routine({
	var chans = [4,12,20,28,36,44,52,60];
	loop {
		~sfs.do({ arg harm, i;
			Synth(\playHarm,[\buf, harm, \chan, chans[i]]);
			0.1.wait;
		});
		1.2.wait;
	}
}).play;
)