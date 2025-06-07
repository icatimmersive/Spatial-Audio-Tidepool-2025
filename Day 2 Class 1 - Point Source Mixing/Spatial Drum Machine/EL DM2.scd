
// basic SC declarations
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
s.latency = 1.0;
s.waitForBoot({
	// ~octoChans = (0..7);
});
)

s.quit

s.meter
s.makeGui

// start in stereo
~octoChans = [128,129];

// now Quad
~octoChans = [128,129, 135, 134];

// now floor Octo
~octoChans = [ 129, 130, 131, 132, 133, 134, 135, 136, 137, 138 ] - 1;
~octoChans = [ 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83 ];
// ceiling
~octoChans = [ 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123 ];
~octoChans = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63 ]


~octoChans = [ 128, 130, 129, 131,129, 131,129, 131 ] - 1;
/*
TODO: use button action to initiate a blob at the button's location in the matrix. Make sure the new blob is stored as part of the pattern.

*/

~sfbufs

/* Load functions and SynthDefs */
(
var cwd = thisProcess.nowExecutingPath.dirname;
var synths = cwd ++ "/" ++ "EL_DM_Synths.scd";
var functions = cwd ++ "/" ++ "EL_DM_Functions.scd";
functions.load;
synths.load;
)

s.meter
// 2. Recall Stored Drum Machine Configuration

~recall_dm_configuration.(thisProcess.nowExecutingPath.dirname);

// 2a. Initialize drum machine from a directory

~initialize_dm_from_directory.(thisProcess.nowExecutingPath.dirname);

// 2b. Build Interface and Boot Machine (Only do this when initiating a new drum machine from a directory, not when recalling an existing config.
(
~busPool.do({ arg aBus; aBus.free });
~initialize_front_end.();
)

// 3. Save current state of the drum machine

~store_dm_configuration.(thisProcess.nowExecutingPath.dirname);


s.makeGui

// Note - drum machine must be playing before you can recall a pattern; initial recall might be funky

// work on this to adjust the parameters within the current pattern
(~pat[\blob_matrix].[0,0])[\pan] = 1.0;

/*
THE PLAN:
Iterate through each attack in the attack matrix
If it's 1, then grab the blob at that location
modify that blob according to specifications
*/

// nudge transpose factor
(
~pat[\attack_matrix].rowsDo({
	arg aRow, i;
	aRow.do({
		arg val, j;
		if(val == 1,{
			(~pat[\blob_matrix].[i,j])[\rate] = (~pat[\blob_matrix].[i,j])[\rate] * rrand(0.9,1.1);
			(~pat[\blob_matrix].[i,j])[\pan] = 1.0.rand;
		});
	});
});
)

// randomize transpose

(
~pat[\attack_matrix].rowsDo({
	arg aRow, i;
	aRow.do({
		arg val, j;
		if(val == 1,{
			(~pat[\blob_matrix].[i,j])[\rate] = rrand(0.5,2);
		});
	});
});
)

// full randomize
(
~pat[\attack_matrix].rowsDo({
	arg aRow, i;
	aRow.do({
		arg val, j;
		if(val == 1,{
			(~pat[\blob_matrix].[i,j])[\rate] = rrand(0.5,2.0);
			(~pat[\blob_matrix].[i,j])[\pan] = 1.0.rand;
		});
	});
});
)



// randomize pan only
(
~pat[\attack_matrix].rowsDo({
	arg aRow, i;
	aRow.do({
		arg val, j;
		if(val == 1,{
			(~pat[\blob_matrix].[i,j])[\pan] = 1.0.rand;
		});
	});
});
)

(~pat[\blob_matrix].[0,0])[\rate]


~pat[\attack_matrix].do({
	arg val;
	val.postln;
});

// use this to determine which events are toggled
~pat[\attack_matrix][0,0]

// number of ticks in this pattern

~pat[\tick_count]

// look at this function to reveal the structure of the blob

~make_a_blob.()

s.makeGui

(
var cwd = thisProcess.nowExecutingPath.dirname;
var myPath = cwd ++ "/ASL_drum2_runthrough.aif";
s.prepareForRecord(myPath,2);
)

s.record;
s.stopRecording;

~dm

s.meter