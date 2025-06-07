(
SynthDef(\play64,
	{ arg buf;
		var harm = PlayBuf.ar(64, buf, doneAction:2);
		Out.ar(0,harm);
	}
).add;
)
(
~buf64 = Buffer.read(s, "/Volumes/Lyonizer5/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Curriculum (from Cube Source)/Day 2 Class 2 - Spectral Spatialization/CelloNote/cello64.aif");

~buf64b = Buffer.read(s, "/Volumes/Lyonizer5/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Curriculum (from Cube Source)/Day 2 Class 2 - Spectral Spatialization/CelloNote/cello64_2.aif");


~buf64c = Buffer.read(s, "/Volumes/Lyonizer5/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Curriculum (from Cube Source)/Day 2 Class 2 - Spectral Spatialization/CelloNote/cello64_3.aif");

~buf64d = Buffer.read(s, "/Volumes/Lyonizer5/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Curriculum (from Cube Source)/Day 2 Class 2 - Spectral Spatialization/CelloNote/cello64_4.aif");
)
// normie
(
Routine({
	loop {
		Synth(\play64,[\buf, ~buf64]);
		1.wait;
	}
}).play;
)

// stretchie
(
Routine({
	loop {
		Synth(\play64,[\buf, ~buf64b]);
		9.wait;
	}
}).play;
)

// stretchie tuned

// stretchie
(
Routine({
	loop {
		Synth(\play64,[\buf, ~buf64c]);
		8.0.wait;
	}
}).play;
)

(
Routine({
	loop {
		Synth(\play64,[\buf, ~buf64d]);
		8.0.wait;
	}
}).play;
)

