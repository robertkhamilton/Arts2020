{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 96.0, 146.0, 1718.0, 829.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 857.0, 373.0, 64.0, 22.0 ],
                    "text": "pack 1 2 3"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 858.0, 568.0, 159.0, 22.0 ],
                    "text": "send #1-lp_panel_data_midi"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 748.0, 90.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 800.0, 90.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 748.0, 60.0, 71.0, 22.0 ],
                    "text": "unpack 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 500.0, 90.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 552.0, 90.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 500.0, 60.0, 71.0, 22.0 ],
                    "text": "unpack 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 748.0, 31.0, 228.0, 22.0 ],
                    "text": "receive #1-lp_panel_input_Key+Pressure"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 500.0, 31.0, 222.0, 22.0 ],
                    "text": "receive #1-lp_panel_input_Key+Velocity"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 552.0, 157.0, 45.0, 22.0 ],
                    "text": "text $1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12549019607843137, 0.12549019607843137, 0.12549019607843137, 0.0 ],
                    "id": "obj-15",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 240.0, 302.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.0, 298.0, 100.0, 20.0 ],
                    "text": "0",
                    "texton": "0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 800.0, 140.0, 45.0, 22.0 ],
                    "text": "text $1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12549019607843137, 0.12549019607843137, 0.12549019607843137, 0.0 ],
                    "id": "obj-11",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 309.0, 302.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 287.0, 247.0, 100.0, 20.0 ],
                    "text": "0",
                    "texton": "0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 595.0, 310.0, 60.0, 22.0 ],
                    "text": "select 0 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-62",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 595.0, 278.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-60",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 595.0, 249.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-59",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 652.0, 234.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 595.0, 220.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-57",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 652.0, 189.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 652.0, 153.0, 29.5, 22.0 ],
                    "text": "> 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 590.0, 568.0, 149.0, 22.0 ],
                    "text": "send lp_panel_grid_global"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 403.0, 425.0, 70.0, 22.0 ],
                    "text": "select bang"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 403.0, 460.0, 87.0, 22.0 ],
                    "text": "lp_panel #1 off"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12549019607843137, 0.12549019607843137, 0.12549019607843137, 0.0 ],
                    "id": "obj-94",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 289.0, 219.0, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.0, 118.0, 100.0, 20.0 ],
                    "text": "#1",
                    "texton": "#1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 388.0, 114.0, 77.0, 22.0 ],
                    "text": "size 126 126"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 499.0, 460.0, 87.0, 22.0 ],
                    "text": "lp_panel #1 on"
                }
            },
            {
                "box": {
                    "comment": "",
                    "hidden": 1,
                    "id": "obj-5",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 218.0, 565.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 466.0, 568.0, 113.0, 22.0 ],
                    "text": "send lp_grid_global"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 311.0, 568.0, 141.0, 22.0 ],
                    "text": "send #1-lp_panel_output"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-253",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 240.0, 114.0, 133.0, 22.0 ],
                    "text": "bgfillcolor 0.8 0.8 0.8 1."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-252",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 164.0, 81.0, 133.0, 22.0 ],
                    "text": "bgfillcolor 0.2 0.2 0.2 1."
                }
            },
            {
                "box": {
                    "handoff": "",
                    "id": "obj-249",
                    "maxclass": "ubutton",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 240.0, 207.0, 126.0, 126.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.0, 207.0, 126.0, 126.0 ]
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "id": "obj-250",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 240.0, 207.0, 126.0, 126.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.0, 207.0, 126.0, 126.0 ],
                    "proportion": 0.39
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "hidden": 1,
                    "midpoints": [ 809.5, 351.96484375, 429.5, 351.96484375, 429.5, 288.046875, 318.5, 288.046875 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "hidden": 1,
                    "midpoints": [ 561.5, 288.0, 249.5, 288.0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.34844302173979064, 0.7865399611834257, 0.854902029, 1.0 ],
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 509.5, 123.19140625, 866.5, 123.19140625 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 2,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.34844302173979064, 0.7865399611834257, 0.854902029, 1.0 ],
                    "destination": [ "obj-2", 1 ],
                    "midpoints": [ 561.5, 122.53125, 758.33984375, 122.53125, 758.33984375, 121.83984375, 889.0, 121.83984375 ],
                    "order": 0,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 561.5, 138.0, 661.5, 138.0 ],
                    "order": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.34844302173979064, 0.7865399611834257, 0.854902029, 1.0 ],
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 757.5, 123.70703125, 866.5, 123.70703125 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.34844302173979064, 0.7865399611834257, 0.854902029, 1.0 ],
                    "destination": [ "obj-2", 2 ],
                    "midpoints": [ 809.5, 120.0, 911.5, 120.0 ],
                    "order": 0,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "hidden": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "hidden": 1,
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-252", 0 ],
                    "hidden": 1,
                    "midpoints": [ 249.5, 374.4186370372772, 151.00001430511475, 374.4186370372772, 151.00001430511475, 74.53191828727722, 173.5, 74.53191828727722 ],
                    "order": 1,
                    "source": [ "obj-249", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-253", 0 ],
                    "hidden": 1,
                    "midpoints": [ 356.5, 374.3092620372772, 151.62110805511475, 374.3092620372772, 151.62110805511475, 110.53191828727722, 249.5, 110.53191828727722 ],
                    "source": [ "obj-249", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "midpoints": [ 285.1666666666667, 411.0, 508.5, 411.0 ],
                    "source": [ "obj-249", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "hidden": 1,
                    "midpoints": [ 249.5, 411.0, 412.5, 411.0 ],
                    "order": 0,
                    "source": [ "obj-249", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-250", 0 ],
                    "hidden": 1,
                    "midpoints": [ 173.5, 191.53191828727722, 249.5, 191.53191828727722 ],
                    "source": [ "obj-252", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-250", 0 ],
                    "hidden": 1,
                    "midpoints": [ 249.5, 137.53191828727722, 249.5, 137.53191828727722 ],
                    "source": [ "obj-253", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "hidden": 1,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "hidden": 1,
                    "midpoints": [ 661.5, 216.0, 604.5, 216.0 ],
                    "order": 1,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "hidden": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "midpoints": [ 412.5, 555.0, 599.5, 555.0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "midpoints": [ 412.5, 555.0, 320.5, 555.0 ],
                    "order": 2,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "midpoints": [ 412.5, 555.0, 475.5, 555.0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "hidden": 1,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "hidden": 1,
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-252", 0 ],
                    "hidden": 1,
                    "midpoints": [ 604.5, 352.625, 477.0, 352.625, 477.0, 66.0, 173.5, 66.0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-253", 0 ],
                    "hidden": 1,
                    "midpoints": [ 625.0, 352.25, 399.0, 352.25, 399.0, 147.0, 237.0, 147.0, 237.0, 111.0, 249.5, 111.0 ],
                    "source": [ "obj-63", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "midpoints": [ 508.5, 555.0, 599.5, 555.0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "midpoints": [ 508.5, 555.0, 320.5, 555.0 ],
                    "order": 2,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "midpoints": [ 508.5, 555.0, 475.5, 555.0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "hidden": 1,
                    "midpoints": [ 508.5, 552.0, 227.5, 552.0 ],
                    "order": 3,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-250", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}