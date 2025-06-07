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
		"rect" : [ 385.0, 229.0, 1155.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 682.0, 265.0, 68.0, 22.0 ],
					"restore" : 					{
						"live.gain~" : [ -6.0 ]
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
					"patching_rect" : [ 682.0, 231.0, 86.0, 22.0 ],
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
					"channels" : 1,
					"id" : "obj-1",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 29.0, 252.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.0, 37.0, 123.0, 22.0 ],
					"text" : "xconnect n1 da1 64 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 669.0, 73.0, 82.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "el.nconnect",
						"parameter_enable" : 0
					}
,
					"text" : "js el.nconnect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 516.0, 278.0, 79.0, 22.0 ],
					"text" : "phasor~ 0.15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 64,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 284.0, 344.0, 680.5, 22.0 ],
					"text" : "el.npan~ 64",
					"varname" : "n1"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Cheetara-Storage:/Work/d-day museum reception showing/CATT Anechoic Sources/Bongo.wav",
								"filename" : "Bongo.wav",
								"filekind" : "audiofile",
								"id" : "u008001526",
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
					"id" : "obj-23",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 265.0, 85.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Cheetara-Storage:/Work/d-day museum reception showing/CATT Anechoic Sources/Xylophone.wav",
								"filename" : "Xylophone.wav",
								"filekind" : "audiofile",
								"id" : "u783001288",
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
					"id" : "obj-21",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 409.0, 179.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Cheetara-Storage:/Work/d-day museum reception showing/CATT Anechoic Sources/FemaleSpokenWord.wav",
								"filename" : "FemaleSpokenWord.wav",
								"filekind" : "audiofile",
								"id" : "u910001171",
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
					"id" : "obj-19",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 409.0, 124.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 188.0, 17.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 186.0, 46.0, 69.0, 22.0 ],
					"text" : "metro 5500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 365.0, 295.0, 72.0, 22.0 ],
					"text" : "tapout~ 250"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "tapconnect" ],
					"patching_rect" : [ 365.0, 260.0, 65.0, 22.0 ],
					"text" : "tapin~ 250"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 171.0, 147.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 171.0, 111.0, 29.5, 22.0 ],
					"text" : "!- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 113.0, 38.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 64,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 387.0, 680.5, 35.0 ],
					"text" : "dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64",
					"varname" : "da1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 113.0, 234.0, 101.0, 22.0 ],
					"text" : "el.softgate~ 5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 251.0, 234.0, 108.0, 22.0 ],
					"text" : "el.softgate~ 5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 38.0, 417.0, 82.0, 22.0 ],
					"text" : "dac~ 177 178"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Cheetara-Storage:/Work/d-day museum reception showing/CATT Anechoic Sources/Kongas2.wav",
								"filename" : "Kongas2.wav",
								"filekind" : "audiofile",
								"id" : "u506010971",
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
					"id" : "obj-2",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.0, 50.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 63 ],
					"source" : [ "obj-24", 63 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 62 ],
					"source" : [ "obj-24", 62 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 61 ],
					"source" : [ "obj-24", 61 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 60 ],
					"source" : [ "obj-24", 60 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 59 ],
					"source" : [ "obj-24", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 58 ],
					"source" : [ "obj-24", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 57 ],
					"source" : [ "obj-24", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 56 ],
					"source" : [ "obj-24", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 55 ],
					"source" : [ "obj-24", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 54 ],
					"source" : [ "obj-24", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 53 ],
					"source" : [ "obj-24", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 52 ],
					"source" : [ "obj-24", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 51 ],
					"source" : [ "obj-24", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 50 ],
					"source" : [ "obj-24", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 49 ],
					"source" : [ "obj-24", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 48 ],
					"source" : [ "obj-24", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 47 ],
					"source" : [ "obj-24", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 46 ],
					"source" : [ "obj-24", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 45 ],
					"source" : [ "obj-24", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 44 ],
					"source" : [ "obj-24", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 43 ],
					"source" : [ "obj-24", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 42 ],
					"source" : [ "obj-24", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 41 ],
					"source" : [ "obj-24", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 40 ],
					"source" : [ "obj-24", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 39 ],
					"source" : [ "obj-24", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 38 ],
					"source" : [ "obj-24", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 37 ],
					"source" : [ "obj-24", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 36 ],
					"source" : [ "obj-24", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 35 ],
					"source" : [ "obj-24", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 34 ],
					"source" : [ "obj-24", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 33 ],
					"source" : [ "obj-24", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 32 ],
					"source" : [ "obj-24", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 31 ],
					"source" : [ "obj-24", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 30 ],
					"source" : [ "obj-24", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 29 ],
					"source" : [ "obj-24", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 28 ],
					"source" : [ "obj-24", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 27 ],
					"source" : [ "obj-24", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 26 ],
					"source" : [ "obj-24", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 25 ],
					"source" : [ "obj-24", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 24 ],
					"source" : [ "obj-24", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 23 ],
					"source" : [ "obj-24", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 22 ],
					"source" : [ "obj-24", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 21 ],
					"source" : [ "obj-24", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 20 ],
					"source" : [ "obj-24", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 19 ],
					"source" : [ "obj-24", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 18 ],
					"source" : [ "obj-24", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 17 ],
					"source" : [ "obj-24", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 16 ],
					"source" : [ "obj-24", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 15 ],
					"source" : [ "obj-24", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 14 ],
					"source" : [ "obj-24", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 13 ],
					"source" : [ "obj-24", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 12 ],
					"source" : [ "obj-24", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 11 ],
					"source" : [ "obj-24", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 10 ],
					"source" : [ "obj-24", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 9 ],
					"source" : [ "obj-24", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 8 ],
					"source" : [ "obj-24", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 7 ],
					"source" : [ "obj-24", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 6 ],
					"source" : [ "obj-24", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 5 ],
					"source" : [ "obj-24", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 4 ],
					"source" : [ "obj-24", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 3 ],
					"source" : [ "obj-24", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 2 ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "live.gain~", "live.gain~", 0 ],
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
				"name" : "Bongo.wav",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/d-day museum reception showing/CATT Anechoic Sources",
				"patcherrelativepath" : "../../d-day museum reception showing/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "FemaleSpokenWord.wav",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/d-day museum reception showing/CATT Anechoic Sources",
				"patcherrelativepath" : "../../d-day museum reception showing/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "Kongas2.wav",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/d-day museum reception showing/CATT Anechoic Sources",
				"patcherrelativepath" : "../../d-day museum reception showing/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "Xylophone.wav",
				"bootpath" : "/Volumes/Cheetara-Storage/Work/d-day museum reception showing/CATT Anechoic Sources",
				"patcherrelativepath" : "../../d-day museum reception showing/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "el.nconnect.js",
				"bootpath" : "~/Documents/Max 8/Packages/Lyon Package/javascript",
				"patcherrelativepath" : "../../../../../Users/cheetara/Documents/Max 8/Packages/Lyon Package/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "el.npan~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "el.softgate~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Lyon Package/patchers",
				"patcherrelativepath" : "../../../../../Users/cheetara/Documents/Max 8/Packages/Lyon Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
