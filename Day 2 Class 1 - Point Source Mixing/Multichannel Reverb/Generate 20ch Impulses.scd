(
var impname = "imp_concave_6sec_24ch.aiff";
var fileName = thisProcess.nowExecutingPath.dirname ++ "/" ++ impname;
var score = [];
var reverbDur = 6.0;
var slope = -4;
var tmpFile = thisProcess.nowExecutingPath.dirname ++ "/tmpOSCFile" ;
var chanCnt = 24;
var o = ServerOptions.new.numOutputBusChannels = chanCnt;

fork {
	SynthDef(\impGen, { arg dur, slope;
		var envy = EnvGen.ar( Env([1,0], [dur], slope ), doneAction:2 );
		var imp = Array.newClear(chanCnt);
		chanCnt.do({| i |
			imp[i] = PinkNoise.ar( envy );
		});
		imp = LeakDC.ar(imp);
		Out.ar(0, imp);
	}).writeDefFile;

	o.sampleRate = 48000;

	s.sync;

	score = score.add( [0, [\s_new, \impGen, 1000, 0, 0, \slope, slope, \dur, reverbDur] ] );
	score = score.add( [reverbDur, [\c_set, 0, 0]] );
	Score.recordNRT(score, tmpFile, fileName, headerFormat: "AIFF", options: o);
};
)
s.boot