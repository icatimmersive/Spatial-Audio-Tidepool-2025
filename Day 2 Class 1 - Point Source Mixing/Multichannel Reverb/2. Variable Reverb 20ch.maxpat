{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 51.0, 436.0, 1040.0, 511.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 894.0, 443.0, 65.0, 22.0 ],
					"text" : "replace $1"
				}

			}
, 			{
				"box" : 				{
					"decodemode" : 1,
					"id" : "obj-26",
					"maxclass" : "live.drop",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 894.0, 367.0, 140.0, 60.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "live.drop",
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.drop",
							"parameter_type" : 4
						}

					}
,
					"varname" : "live.drop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 107.0, 187.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 685.0, 142.0, 98.0, 22.0 ],
					"text" : "scale~ -1 1 0.5 1"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Cheetara-Storage:/Work/a2ru-music/CATT Anechoic Sources/AcousticGuitar5.wav",
								"filename" : "AcousticGuitar5.wav",
								"filekind" : "audiofile",
								"id" : "u095004534",
								"loop" : 0,
								"content_state" : 								{
									"loop" : 0
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-12",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 107.0, 104.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 542.5, 142.0, 121.0, 22.0 ],
					"text" : "scale~ -1 1 0.01 0.95"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 542.5, 97.0, 70.0, 22.0 ],
					"text" : "cycle~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-5",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 542.5, 36.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Cheetara-Storage:/Work/a2ru-music/CATT Anechoic Sources/Bongo.wav",
								"filename" : "Bongo.wav",
								"filekind" : "audiofile",
								"id" : "u525002780",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-25",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 315.0, 10.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 805.0, 176.0, 68.0, 22.0 ],
					"restore" : 					{
						"live.drop" : [ "Cheetara-Storage:/Work/Spatial Audio Tidepool 2025/Day 2 Class 1/Multichannel Reverb/imp_varlen4_5sec_20ch.aiff" ],
						"mc.live.gain~" : [ -26.0 ],
						"mc.live.gain~[1]" : [ 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u467001016"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 805.0, 142.0, 86.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 0, 0, 640, 240 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 0, 0, 640, 240 ]
					}
,
					"text" : "pattrstorage",
					"varname" : "u265001012"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"lastchannelcount" : 20,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 685.0, 271.0, 205.0, 126.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Dry gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 20,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 685.0, 242.0, 218.5, 22.0 ],
					"text" : "mc.pack~ 20",
					"varname" : "p2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 20,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 343.0, 201.0, 218.5, 22.0 ],
					"text" : "el.npan~ 20",
					"varname" : "np1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"lastchannelcount" : 20,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 401.0, 271.0, 205.0, 126.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Reverb gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 20,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 66.0, 329.0, 218.5, 22.0 ],
					"text" : "mc.pack~ 20",
					"varname" : "p1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 430.0, 241.0, 35.0 ],
					"text" : "mc.dac~ 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Cheetara-Storage:/Work/a2ru-music/CATT Anechoic Sources/AcousticGuitar1.wav",
								"filename" : "AcousticGuitar1.wav",
								"filekind" : "audiofile",
								"id" : "u479010037",
								"loop" : 0,
								"content_state" : 								{
									"loop" : 0
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-8",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 10.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 38.0, 103.0, 22.0 ],
					"text" : "load imps 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 74.0, 95.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "load-impulses",
						"parameter_enable" : 0
					}
,
					"text" : "js load-impulses"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 20,
					"numoutlets" : 20,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 66.0, 261.0, 218.5, 22.0 ],
					"text" : "multiconvolve~ 20 20 zero",
					"varname" : "m1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 776.0, 478.0, 233.0, 22.0 ],
					"text" : "buffer~ imps imp_concave_6sec_20ch.aiff"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 75.5, 361.0, 358.0, 361.0, 358.0, 260.0, 410.5, 260.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"midpoints" : [ 694.5, 175.0, 127.0, 175.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 19 ],
					"order" : 1,
					"source" : [ "obj-18", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 18 ],
					"order" : 1,
					"source" : [ "obj-18", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 17 ],
					"order" : 1,
					"source" : [ "obj-18", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 16 ],
					"order" : 1,
					"source" : [ "obj-18", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 15 ],
					"order" : 1,
					"source" : [ "obj-18", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 14 ],
					"order" : 1,
					"source" : [ "obj-18", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 13 ],
					"order" : 1,
					"source" : [ "obj-18", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 12 ],
					"order" : 1,
					"source" : [ "obj-18", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 11 ],
					"order" : 1,
					"source" : [ "obj-18", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 10 ],
					"order" : 1,
					"source" : [ "obj-18", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 9 ],
					"order" : 1,
					"source" : [ "obj-18", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 8 ],
					"order" : 1,
					"source" : [ "obj-18", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 7 ],
					"order" : 1,
					"source" : [ "obj-18", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 6 ],
					"order" : 1,
					"source" : [ "obj-18", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 5 ],
					"order" : 1,
					"source" : [ "obj-18", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 4 ],
					"order" : 1,
					"source" : [ "obj-18", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 3 ],
					"order" : 1,
					"source" : [ "obj-18", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"order" : 1,
					"source" : [ "obj-18", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"order" : 1,
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 19 ],
					"order" : 0,
					"source" : [ "obj-18", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 18 ],
					"order" : 0,
					"source" : [ "obj-18", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 17 ],
					"order" : 0,
					"source" : [ "obj-18", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 16 ],
					"order" : 0,
					"source" : [ "obj-18", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 15 ],
					"order" : 0,
					"source" : [ "obj-18", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 14 ],
					"order" : 0,
					"source" : [ "obj-18", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 13 ],
					"order" : 0,
					"source" : [ "obj-18", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 12 ],
					"order" : 0,
					"source" : [ "obj-18", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 11 ],
					"order" : 0,
					"source" : [ "obj-18", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 10 ],
					"order" : 0,
					"source" : [ "obj-18", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 9 ],
					"order" : 0,
					"source" : [ "obj-18", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 8 ],
					"order" : 0,
					"source" : [ "obj-18", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 7 ],
					"order" : 0,
					"source" : [ "obj-18", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 6 ],
					"order" : 0,
					"source" : [ "obj-18", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 5 ],
					"order" : 0,
					"source" : [ "obj-18", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 4 ],
					"order" : 0,
					"source" : [ "obj-18", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 3 ],
					"order" : 0,
					"source" : [ "obj-18", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 2 ],
					"order" : 0,
					"source" : [ "obj-18", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"order" : 0,
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 19 ],
					"source" : [ "obj-2", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 18 ],
					"source" : [ "obj-2", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 17 ],
					"source" : [ "obj-2", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 16 ],
					"source" : [ "obj-2", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 15 ],
					"source" : [ "obj-2", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 14 ],
					"source" : [ "obj-2", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 13 ],
					"source" : [ "obj-2", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 12 ],
					"source" : [ "obj-2", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 11 ],
					"source" : [ "obj-2", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 10 ],
					"source" : [ "obj-2", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 9 ],
					"source" : [ "obj-2", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 8 ],
					"source" : [ "obj-2", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 7 ],
					"source" : [ "obj-2", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 6 ],
					"source" : [ "obj-2", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 5 ],
					"source" : [ "obj-2", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 4 ],
					"source" : [ "obj-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 3 ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 116.5, 219.0, 234.5, 219.0, 234.5, 190.0, 352.5, 190.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 694.5, 413.0, 410.5, 413.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 324.5, 155.0, 116.5, 155.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 903.5, 471.0, 785.5, 471.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 33.5, 234.0, 75.5, 234.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 552.0, 132.5, 694.5, 132.5 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 151.5, 74.0, 352.5, 74.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-14" : [ "mc.live.gain~", "Reverb gain", 0 ],
			"obj-23" : [ "mc.live.gain~[1]", "Dry gain", 0 ],
			"obj-26" : [ "live.drop", "live.drop", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "AcousticGuitar1.wav",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/a2ru-music/CATT Anechoic Sources",
				"patcherrelativepath" : "../../../a2ru-music/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "AcousticGuitar5.wav",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/a2ru-music/CATT Anechoic Sources",
				"patcherrelativepath" : "../../../a2ru-music/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "Bongo.wav",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/a2ru-music/CATT Anechoic Sources",
				"patcherrelativepath" : "../../../a2ru-music/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "el.npan~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "load-impulses.js",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/Spatial Audio Tidepool 2025/Day 2 Class 1/Multichannel Reverb",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "multiconvolve~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
