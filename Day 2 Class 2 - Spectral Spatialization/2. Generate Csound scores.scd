// source code at
// https://github.com/ericlyon/asd_online_supplement/tree/main/Chapter%2005

(
var indur = 0.42;
var outdur = indur;
var partials = 80;
var fname = "\"cello.ats\"";
var gain = 0.25;
var scale = (30..54).midicps.scramble / 42.midicps;
var transpo = [1,1.25,1.5,(8/9)*2];
postln("f1 0 16384 10 1");
1.do({| j |
	var tfac = scale[j];
	tfac = 1.0; // force no transpose
	partials.do({| i |
		postf("i3 0 % 0 % % % % %\n",outdur,indur,fname, i+1,gain, tfac);
	});
});
)

(
var indur = 0.42;
var outdur = indur;
var partials = 64;
var fname = "\"cello.ats\"";
var gain = 0.25;
var scale = (30..54).midicps.scramble / 42.midicps;
var transpo = [1,1.25,1.5,(8/9)*2];
postln("f1 0 16384 10 1");
1.do({| j |
	var tfac = scale[j];
	tfac = 1.0; // force no transpose
	partials.do({| i |
		postf("i5 0 % 0 % % % % % %\n",outdur,indur,fname, i+1,gain, tfac, i+1);
	});
});
)

// now stretchie

(
var indur = 0.42;
var outdur = indur * 20;
var partials = 64;
var fname = "\"cello.ats\"";
var gain = 0.25;
var scale = (30..54).midicps.scramble / 42.midicps;
var transpo = [1,1.25,1.5,(8/9)*2];
postln("f1 0 16384 10 1");
1.do({| j |
	var tfac = scale[j];
	tfac = 1.0; // force no transpose
	partials.do({| i |
		postf("i5 0 % 0 % % % % % %\n",outdur,indur,fname, i+1,gain, tfac, i+1);
	});
});
)

// also vary pitch of harmonics

(
var indur = 0.42;
var outdur = indur * 20;
var partials = 64;
var fname = "\"cello.ats\"";
var gain = 0.25;
var scale = (30..54).midicps.scramble / 42.midicps;
var transpo = [1,1.25,1.5,(8/9)*2];
postln("f1 0 16384 10 1");
1.do({| j |
	partials.do({| i |
		var tfac = scale.choose;
		postf("i5 0 % 0 % % % % % %\n",outdur,indur,fname, i+1,gain, tfac, i+1);
	});
});
)