(
var impname = "imp_varlen4_5sec_20ch.aiff";
var fileName = thisProcess.nowExecutingPath.dirname ++ "/" ++ impname;
var score = [];
var reverbDur = 5.0;
var slope = -4;
var tmpFile = thisProcess.nowExecutingPath.dirname ++ "/tmpOSCFile" ;
var chanCnt = 20;
var o = ServerOptions.new.numOutputBusChannels = chanCnt;

fork {
	SynthDef(\impGen, { arg dur, slope;

		var imp = Array.newClear(chanCnt);
		chanCnt.do({| i |
			var shortfac = 0.8 ** i;
			var hold = shortfac * dur;
			var zero = dur - hold;
			var endval = 0.00001 + ((0.1/chanCnt) * i);
			var envy = EnvGen.ar( Env([1,0,0], [hold, zero], -4 ));
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

0.8 ** 20