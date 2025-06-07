(
SynthDef(\dm3DrillPlay,{
	arg buffer, rate, startPos, gain, panL, panR, outbus = 0, speed1, speed2, holdTime;
	var trigSpeed = EnvGen.kr( Env([speed1,speed2,0],[holdTime, 0.01]) );
	var localTrig = Impulse.kr(trigSpeed);
	var raw = PlayBuf.ar(1, buffer, rate * BufRateScale.kr(buffer), startPos: startPos, doneAction:2, trigger: localTrig);
	Out.ar(outbus, raw * gain);
}).add;

SynthDef(\dm3StereoPlay,{
	arg buffer, rate, startPos, gain, panL, panR, outbus = 0;
	var raw = PlayBuf.ar(2, buffer, rate * BufRateScale.kr(buffer), startPos: startPos, doneAction:2, loop: 0);
	Out.ar(outbus, raw[0] * gain);
}).add;

SynthDef(\dm3MonoPlay,{
	arg buffer, rate, startPos, gain, pan = 0, outbus = 0;
	var raw = PlayBuf.ar(1, buffer, rate * BufRateScale.kr(buffer), startPos: startPos, doneAction:2, loop: 0);
	Out.ar(outbus, raw * gain);
}).add;

SynthDef(\xRing,{
	arg freq, sust, dk, bus, blend;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,1);
	var ringed = input * SinOsc.ar(freq) * env;
	XOut.ar(bus, blend, ringed);
}).add;

SynthDef(\xComb,{
	arg delTime = 0.2, ringTime = 3.0, sust, dk, bus, blend = 0.0;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var raw = In.ar(bus,1);
	var combed = CombN.ar(raw, 0.5, delTime, ringTime) * env;
	XOut.ar(bus, blend, combed);
}).add;

// cheating

SynthDef(\xSweep,{
	arg sust, dk, bus, freq1, freq2, rez, blend = 0.5;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var raw = In.ar(bus,1);
	var vfreq = XLine.kr(freq1, freq2, sust);
	var flt = RLPF.ar(raw, vfreq, rez);
	XOut.ar(bus, blend, flt * env);
}).add;

SynthDef(\xSweep1,{
	arg sust, dk, bus, freq1, freq2, rez, blend = 0.5;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var raw = In.ar(bus,1);
	var vfreq = XLine.kr(freq1, freq2, sust);
	var flt = RLPF.ar(raw, vfreq, rez);
	XOut.ar(bus, blend, flt * env);
}).add;

SynthDef(\xSweep2,{
	arg sust, dk, bus, freq1, freq2, rez, blend = 0.5;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var raw = In.ar(bus,1);
	var vfreq = XLine.kr(freq1, freq2, sust);
	var flt = RLPF.ar(raw, vfreq, rez);
	XOut.ar(bus, blend, flt * env);
}).add;

SynthDef(\xStv,{
	arg freq, sust, dk, bus, blend = 0.5, dktime = 2.0, speed1 = 0.2, speed2 = 0.25;
	var move1 = SinOsc.ar(speed1, Rand(0.0,1.0)).range(0.001,0.01);
	var move2 = SinOsc.ar(speed2, Rand(0.0,1.0)).range(0.001,0.01);
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,1);
	var mono1  = CombC.ar(input,0.01, move1, dktime);
	var mono2  = CombC.ar(input,0.01, move2, dktime);
	var stv = (mono1 + mono2) * env;
	XOut.ar(bus, blend, stv);
}).add;

SynthDef(\xAlpverb,{
	arg sust, dk, bus, blend = 0.5, dktime = 2.0;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,1);
	var reverb;
	reverb = DelayN.ar(input,0.003,0.003);
	5.do({
		reverb = AllpassN.ar(reverb, 0.25, Rand(0.005,0.25), dktime);
	});
	XOut.ar(bus, blend, reverb * env);
}).add;

SynthDef(\xCombchord,{
	arg sust, dk, bus, blend, dktime = 2.0;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,1);
	var freqlist = 261 * [0,4,7,11].midiratio;
	var chord  = Mix.ar( Ringz.ar(input, \freqs.kr(freqlist), dktime, mul: 0.01) );
	XOut.ar(bus, blend, chord * env);
}).add;

SynthDef(\xTremolo,{
	arg sust, dk, bus, blend, speed = 2;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,1);
	var tremo = input * SinOsc.ar(speed, pi/2).range(0.0,1.0) * env;
	XOut.ar(bus, blend, tremo);
}).add;

SynthDef(\xBendy,{
	arg sust, dk, bus, blend, speed1 = 1.1, speed2 = 1.34;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,1);
	var bent = CombC.ar(input, 0.1, LFNoise1.ar(speed1).range(0.001,0.099), LFNoise1.ar(speed2).range(0.1,3.0)) * env;
	XOut.ar(bus, blend, bent);
}).add;

SynthDef(\passthrough,{
	arg bus, duration, outbus=0;
	var terminate = Line.kr(0,0,duration, doneAction:2);
	var input = In.ar(bus,1);
	Out.ar(outbus, input);
}).add;

SynthDef(\passthroughQuad,{
	arg bus, duration, panspeed1 = 0.5, panspeed2 = 0.5;
	var terminate = Line.kr(0,0,duration, doneAction:2);
	var input = In.ar(bus,1);
	var xpan = LFNoise1.ar(panspeed1);
	var ypan = LFNoise1.ar(panspeed2);
	var quadOut = Pan4.ar(xpan,ypan);
	Out.ar(0, quadOut);
}).add;

"Loaded Spatial Drum Machine SynthDefs".postln;
)