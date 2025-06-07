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
		"rect" : [ 59.0, 106.0, 1324.0, 732.0 ],
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
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 117.0, 513.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1075.0, 203.0, 79.0, 22.0 ],
					"text" : "phasor~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.0, 40.0, 149.0, 22.0 ],
					"text" : "xconnect npan pack 128 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 95.0, 82.0, 22.0 ],
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
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 128,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 117.0, 422.0, 1352.5, 22.0 ],
					"text" : "mc.pack~ 128",
					"varname" : "pack"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-4",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 111.0, 138.0, 48.0, 136.0 ],
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
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Lyonizer5:/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Tidepool Resources/CATT Anechoic Sources/Bongo.wav",
								"filename" : "Bongo.wav",
								"filekind" : "audiofile",
								"id" : "u428007090",
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
					"id" : "obj-3",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 111.0, 95.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 128,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 111.0, 317.0, 1352.5, 22.0 ],
					"text" : "el.npan~ 128",
					"varname" : "npan"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 127 ],
					"source" : [ "obj-1", 127 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 126 ],
					"source" : [ "obj-1", 126 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 125 ],
					"source" : [ "obj-1", 125 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 124 ],
					"source" : [ "obj-1", 124 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 123 ],
					"source" : [ "obj-1", 123 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 122 ],
					"source" : [ "obj-1", 122 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 121 ],
					"source" : [ "obj-1", 121 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 120 ],
					"source" : [ "obj-1", 120 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 119 ],
					"source" : [ "obj-1", 119 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 118 ],
					"source" : [ "obj-1", 118 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 117 ],
					"source" : [ "obj-1", 117 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 116 ],
					"source" : [ "obj-1", 116 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 115 ],
					"source" : [ "obj-1", 115 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 114 ],
					"source" : [ "obj-1", 114 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 113 ],
					"source" : [ "obj-1", 113 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 112 ],
					"source" : [ "obj-1", 112 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 111 ],
					"source" : [ "obj-1", 111 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 110 ],
					"source" : [ "obj-1", 110 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 109 ],
					"source" : [ "obj-1", 109 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 108 ],
					"source" : [ "obj-1", 108 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 107 ],
					"source" : [ "obj-1", 107 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 106 ],
					"source" : [ "obj-1", 106 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 105 ],
					"source" : [ "obj-1", 105 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 104 ],
					"source" : [ "obj-1", 104 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 103 ],
					"source" : [ "obj-1", 103 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 102 ],
					"source" : [ "obj-1", 102 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 101 ],
					"source" : [ "obj-1", 101 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 100 ],
					"source" : [ "obj-1", 100 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 99 ],
					"source" : [ "obj-1", 99 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 98 ],
					"source" : [ "obj-1", 98 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 97 ],
					"source" : [ "obj-1", 97 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 96 ],
					"source" : [ "obj-1", 96 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 95 ],
					"source" : [ "obj-1", 95 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 94 ],
					"source" : [ "obj-1", 94 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 93 ],
					"source" : [ "obj-1", 93 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 92 ],
					"source" : [ "obj-1", 92 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 91 ],
					"source" : [ "obj-1", 91 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 90 ],
					"source" : [ "obj-1", 90 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 89 ],
					"source" : [ "obj-1", 89 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 88 ],
					"source" : [ "obj-1", 88 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 87 ],
					"source" : [ "obj-1", 87 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 86 ],
					"source" : [ "obj-1", 86 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 85 ],
					"source" : [ "obj-1", 85 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 84 ],
					"source" : [ "obj-1", 84 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 83 ],
					"source" : [ "obj-1", 83 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 82 ],
					"source" : [ "obj-1", 82 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 81 ],
					"source" : [ "obj-1", 81 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 80 ],
					"source" : [ "obj-1", 80 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 79 ],
					"source" : [ "obj-1", 79 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 78 ],
					"source" : [ "obj-1", 78 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 77 ],
					"source" : [ "obj-1", 77 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 76 ],
					"source" : [ "obj-1", 76 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 75 ],
					"source" : [ "obj-1", 75 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 74 ],
					"source" : [ "obj-1", 74 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 73 ],
					"source" : [ "obj-1", 73 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 72 ],
					"source" : [ "obj-1", 72 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 71 ],
					"source" : [ "obj-1", 71 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 70 ],
					"source" : [ "obj-1", 70 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 69 ],
					"source" : [ "obj-1", 69 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 68 ],
					"source" : [ "obj-1", 68 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 67 ],
					"source" : [ "obj-1", 67 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 66 ],
					"source" : [ "obj-1", 66 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 65 ],
					"source" : [ "obj-1", 65 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 64 ],
					"source" : [ "obj-1", 64 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 63 ],
					"source" : [ "obj-1", 63 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 62 ],
					"source" : [ "obj-1", 62 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 61 ],
					"source" : [ "obj-1", 61 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 60 ],
					"source" : [ "obj-1", 60 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 59 ],
					"source" : [ "obj-1", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 58 ],
					"source" : [ "obj-1", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 57 ],
					"source" : [ "obj-1", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 56 ],
					"source" : [ "obj-1", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 55 ],
					"source" : [ "obj-1", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 54 ],
					"source" : [ "obj-1", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 53 ],
					"source" : [ "obj-1", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 52 ],
					"source" : [ "obj-1", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 51 ],
					"source" : [ "obj-1", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 50 ],
					"source" : [ "obj-1", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 49 ],
					"source" : [ "obj-1", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 48 ],
					"source" : [ "obj-1", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 47 ],
					"source" : [ "obj-1", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 46 ],
					"source" : [ "obj-1", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 45 ],
					"source" : [ "obj-1", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 44 ],
					"source" : [ "obj-1", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 43 ],
					"source" : [ "obj-1", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 42 ],
					"source" : [ "obj-1", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 41 ],
					"source" : [ "obj-1", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 40 ],
					"source" : [ "obj-1", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 39 ],
					"source" : [ "obj-1", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 38 ],
					"source" : [ "obj-1", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 37 ],
					"source" : [ "obj-1", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 36 ],
					"source" : [ "obj-1", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 35 ],
					"source" : [ "obj-1", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 34 ],
					"source" : [ "obj-1", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 33 ],
					"source" : [ "obj-1", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 32 ],
					"source" : [ "obj-1", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 31 ],
					"source" : [ "obj-1", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 30 ],
					"source" : [ "obj-1", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 29 ],
					"source" : [ "obj-1", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 28 ],
					"source" : [ "obj-1", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 27 ],
					"source" : [ "obj-1", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 26 ],
					"source" : [ "obj-1", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 25 ],
					"source" : [ "obj-1", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 24 ],
					"source" : [ "obj-1", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 23 ],
					"source" : [ "obj-1", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 22 ],
					"source" : [ "obj-1", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 21 ],
					"source" : [ "obj-1", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 20 ],
					"source" : [ "obj-1", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 19 ],
					"source" : [ "obj-1", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 18 ],
					"source" : [ "obj-1", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 17 ],
					"source" : [ "obj-1", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 16 ],
					"source" : [ "obj-1", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 15 ],
					"source" : [ "obj-1", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 14 ],
					"source" : [ "obj-1", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 13 ],
					"source" : [ "obj-1", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 12 ],
					"source" : [ "obj-1", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 11 ],
					"source" : [ "obj-1", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 10 ],
					"source" : [ "obj-1", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 9 ],
					"source" : [ "obj-1", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 8 ],
					"source" : [ "obj-1", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 7 ],
					"source" : [ "obj-1", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 6 ],
					"source" : [ "obj-1", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 5 ],
					"source" : [ "obj-1", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"source" : [ "obj-1", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-4" : [ "live.gain~", "live.gain~", 0 ],
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
				"bootpath" : "/Volumes/Lyonizer5/Virginia Tech/Academic/2025/Spatial Audio Tidepool/Tidepool Resources/CATT Anechoic Sources",
				"patcherrelativepath" : "../../Tidepool Resources/CATT Anechoic Sources",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "el.nconnect.js",
				"bootpath" : "~/Documents/Max 8/Packages/Lyon Package/javascript",
				"patcherrelativepath" : "../../../../../../../../Users/cheetara/Documents/Max 8/Packages/Lyon Package/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "el.npan~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
