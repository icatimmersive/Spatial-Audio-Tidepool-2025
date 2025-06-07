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
)

s.boot

// define Synth
(
SynthDef(\esine,{|gate = 1, freq = 400, amp = 0.1, chan = 0|
	var env = EnvGen.ar(Env.asr(0.1,1),gate, amp, doneAction:2);
	var sig = SinOsc.ar(freq, mul:env);
	Out.ar(chan,sig);
}).add;
SynthDef(\evsine,{|gate = 1, freq = 400, amp = 0.1, chan = 0, vibdepth = 0.02, vibspeed = 4|
	var env = EnvGen.ar(Env.asr(0.1,1),gate, amp, doneAction:2);
	var vfreq = SinOsc.ar(vibspeed).range(freq, freq * (1 + vibdepth));
	var sig = SinOsc.ar(vfreq, mul:env);
	Out.ar(chan,sig);
}).add;
SynthDef(\evsine2,{|gate = 1, freq = 400, amp = 0.1, chan = 0, vibdepth = 0.02, vibspeed = 4|
	var env = EnvGen.ar(Env.asr(0.1,1),gate, amp, doneAction:2);
	var vfreq = LFNoise1.ar(vibspeed).range(freq, freq * (1 + vibdepth));
	var sig = SinOsc.ar(vfreq, mul:env);
	Out.ar(chan,sig);
}).add;
)

// make a pulse wave (THIS ONE IS MONO)
(
var base = 1125 / (40 * 2);
var amp = 0.005;
var cnt = 64;
base = base * 5;
~syns = [];
cnt.do({|i|
	var freq = (i+1) * base;
	freq.postln;
	~syns = ~syns.add(Synth(\esine,[\freq, freq, \amp, amp]));
});
)

// free synths
~syns.do({|aSyn| aSyn.set(\gate,0)});

///
// spatialize pulse wave harmonics around Catwalk 1
(
fork {
var base = 1125 / (40 * 2);
var amp = 0.005;
var cnt = 66;
var chan = 0;
base = base * 5;
~syns = [];
cnt.do({|i|
	var freq = (i+1) * base;
	freq.postln;
	~syns = ~syns.add(Synth(\esine,[\freq, freq, \amp, amp, \chan, chan]));
	chan = chan + 1;
	0.1.wait;
});
}
)

~syns.do({|aSyn| aSyn.set(\gate,0)});

// decorrelate harmonics

(
var base = 1125 / (40 * 2);
var amp = 0.005;
var cnt = 66;
var chan = 0;
base = base * 5;
~syns = [];
cnt.do({|i|
	var freq = (i+1) * base;
	var vibspeed = rrand(3.0,7.0);
	var vibdepth = rrand(0.01,0.02);
	freq.postln;
	~syns = ~syns.add(Synth(\evsine,[\freq, freq, \amp, amp, \chan, chan,
		\vibdepth, vibdepth, \vibspeed, vibspeed]));
	chan = chan + 1;
});
)

~syns.do({|aSyn| aSyn.set(\gate,0)});
// Seriously decorrelate harmonics

(
var base = 1125 / (40 * 2);
var amp = 0.005;
var cnt = 66;
var chan = 0;
base = base * 5;
~syns = [];
cnt.do({|i|
	var freq = (i+1) * base;
	var vibspeed = rrand(3.0,7.0);
	var vibdepth = rrand(0.01,0.15);
	freq.postln;
	~syns = ~syns.add(Synth(\evsine2,[\freq, freq, \amp, amp, \chan, chan,
		\vibdepth, vibdepth, \vibspeed, vibspeed]));
	chan = chan + 1;
});
)

~syns.do({|aSyn| aSyn.set(\gate,0)});