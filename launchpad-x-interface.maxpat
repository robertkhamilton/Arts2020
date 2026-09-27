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
        "rect": [ 1992.0, 150.0, 2267.0, 1256.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2003.0, 286.0, 153.24675178527832, 20.0 ],
                    "text": "Note key pressure (1-127)"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1947.0, 316.0, 153.24675178527832, 20.0 ],
                    "text": "Note velocity (1-127)"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1895.3766241073608, 349.0, 153.24675178527832, 20.0 ],
                    "text": "Note number (1-127)"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1772.0, 91.0, 293.0, 47.0 ],
                    "text": "Use data from the Launchpad in any open patch via this interface using a receive with the following format:"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1839.0, 345.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1947.0, 285.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1893.0, 315.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 1839.0, 240.0, 127.0, 22.0 ],
                    "text": "unpack 1 2 3"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1839.0, 195.0, 172.0, 22.0 ],
                    "text": "receive 31-lp_panel_data_midi"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1839.0, 134.0, 172.0, 22.0 ],
                    "text": "receive #1-lp_panel_data_midi"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1256.0, 596.0, 293.0, 33.0 ],
                    "text": "Use 2 separate sends here to allow for key pressure changes while holding multiple keys at the same time"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1313.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1256.0, 498.0, 46.0, 22.0 ],
                    "text": "pack i i"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1256.0, 545.0, 213.0, 35.0 ],
                    "text": ";\r$1-lp_panel_input_Key+Velocity $1 $2"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1407.0, 442.5, 293.0, 47.0 ],
                    "text": "Note Number and Velocity: explicitly trigger message on velocity changes using a bang to propogate down stream even when Note Number doesn't change"
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
                    "patching_rect": [ 1341.0, 448.0, 50.0, 22.0 ]
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
                    "patching_rect": [ 1256.0, 448.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 1256.0, 390.0, 104.0, 22.0 ],
                    "text": "unpack"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                    "patching_rect": [ 1256.0, 223.0, 312.9999999999998, 22.0 ],
                    "text": "midiparse"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1445.0, 302.5, 153.24675178527832, 33.0 ],
                    "text": "Note number and \nPolyphonic Key Pressure"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1387.5, 296.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1333.0, 296.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 1333.0, 266.2530143857002, 73.5, 22.0 ],
                    "text": "unpack 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1298.0, 337.5, 220.0, 35.0 ],
                    "text": ";\r$1-lp_panel_input_Key+Pressure $1 $2"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 297.0, 34.5, 225.0, 20.0 ],
                    "text": "Select \"Launchpad X LPX MIDI Out\""
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-2",
                    "items": [ "Launchpad X LPX DAW Out", ",", "Launchpad X LPX MIDI Out", ",", "to Max 1", ",", "to Max 2" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 39.0, 33.0, 251.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5407.0, 1075.0, 37.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "args": [ 63 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-384",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 80.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[63]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 62 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-383",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 80.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[62]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 61 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-382",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 80.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[61]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 60 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-381",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 80.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[60]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 59 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-380",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 80.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[59]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 58 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-379",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 80.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[58]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 57 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-378",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 80.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[57]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 56 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-377",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 79.92375195026398, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[56]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 55 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-376",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 214.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[55]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 54 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-375",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 214.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[54]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 53 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-374",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 214.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[53]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 52 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-373",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 214.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[52]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 51 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-372",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 214.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[51]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 50 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-371",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 214.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[50]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 49 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-370",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 214.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[49]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 48 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-369",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 214.0, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[48]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 47 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-368",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 349.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[47]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 46 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-367",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 349.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[46]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 45 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-366",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 349.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[45]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 44 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-365",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 349.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[44]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 43 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-364",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 349.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[43]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 42 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-363",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 349.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[42]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 41 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-362",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 349.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[41]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 40 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-361",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 349.0, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[40]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 39 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-360",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 484.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[39]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 38 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-359",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 484.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[38]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 37 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-358",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 484.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[37]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 36 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-357",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 484.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[36]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 35 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-356",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 484.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[35]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 34 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-355",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 484.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[34]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 33 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-354",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 484.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[33]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 32 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-353",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 484.0, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[32]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 31 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-352",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 619.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[31]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 30 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-351",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 619.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[30]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 29 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-350",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 619.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[29]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 28 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-349",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 619.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[28]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 27 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-348",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 619.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[27]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 26 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-347",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 619.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[26]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 25 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-346",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 619.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[25]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 24 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-345",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 619.0, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[24]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 23 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-336",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 752.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[23]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 22 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-335",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 752.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[22]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 21 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-334",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 752.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[21]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 20 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-333",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 752.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[20]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 19 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-332",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 752.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[19]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 18 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-331",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 752.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[18]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 17 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-330",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 752.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[17]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 16 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-329",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 752.0, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[16]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 15 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-320",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 888.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[15]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 14 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-319",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 888.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[14]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 13 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-318",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 888.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[13]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 12 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-317",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 888.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[12]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 11 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-316",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 888.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[11]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 10 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-315",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 888.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[10]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 9 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-314",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 888.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[9]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 8 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-313",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 888.0, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[8]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-274",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1593.0, 708.9989814758301, 37.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-275",
                    "maxclass": "messageview",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1252.0, 742.9989814758301, 378.8732444047928, 406.5070472955704 ]
                }
            },
            {
                "box": {
                    "id": "obj-276",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1225.0, 757.9989814758301, 18.88200283050537, 18.88200283050537 ]
                }
            },
            {
                "box": {
                    "id": "obj-277",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1252.0, 699.9989814758301, 161.0, 22.0 ],
                    "text": "receive lp_panel_grid_global"
                }
            },
            {
                "box": {
                    "args": [ 7 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-273",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 1023.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[7]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 6 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-272",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 1023.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[6]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 5 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-271",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 711.0, 1023.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[5]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 4 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-270",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 1023.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[4]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 3 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-269",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.0, 1023.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[3]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 2 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-260",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 309.0, 1023.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[2]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 1 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-259",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.0, 1023.0, 126.50602877140045, 126.50602877140045 ],
                    "varname": "lpx_panel[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 0 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-254",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "launchpadx_panel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ -240.4255301952362, -207.4468070268631 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 1023.0, 126.58227682113647, 126.58227682113647 ],
                    "varname": "lpx_panel[0]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-203",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1256.0, 76.0, 55.0, 23.0 ],
                    "text": "midiinfo"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-204",
                    "items": [ "Launchpad X LPX DAW Out", ",", "Launchpad X LPX MIDI Out", ",", "to Max 1", ",", "to Max 2" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1256.0, 145.0, 222.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-205",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1295.0, 49.0, 77.0, 23.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-206",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1256.0, 185.0, 222.0, 22.0 ],
                    "text": "midiin \"Launchpad X\""
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 1,
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "hidden": 1,
                    "midpoints": [ 164.5, 66.0, 1179.0, 66.0, 1179.0, 180.0, 1265.5, 180.0 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "hidden": 1,
                    "midpoints": [ 1265.5, 102.0, 1233.0, 102.0, 1233.0, 18.0, 48.5, 18.0 ],
                    "order": 1,
                    "source": [ "obj-203", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-204", 0 ],
                    "order": 0,
                    "source": [ "obj-203", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "source": [ "obj-204", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 1 ],
                    "source": [ "obj-205", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-206", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-275", 0 ],
                    "source": [ "obj-274", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-275", 0 ],
                    "order": 0,
                    "source": [ "obj-277", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-276", 0 ],
                    "order": 1,
                    "source": [ "obj-277", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-5", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            }
        ],
        "autosave": 0,
        "styles": [
            {
                "name": "rnbodefault",
                "default": {
                    "accentcolor": [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
                    "bgcolor": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "color": [ 0.929412, 0.929412, 0.352941, 1.0 ],
                    "elementcolor": [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
                    "fontname": [ "Lato" ],
                    "fontsize": [ 12.0 ],
                    "stripecolor": [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
                    "textcolor_inverse": [ 0.968627, 0.968627, 0.968627, 1 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rnbohighcontrast",
                "default": {
                    "accentcolor": [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.0, 0.0, 0.0, 1.0 ],
                        "color1": [ 0.090196078431373, 0.090196078431373, 0.090196078431373, 1.0 ],
                        "color2": [ 0.156862745098039, 0.168627450980392, 0.164705882352941, 1.0 ],
                        "proportion": 0.5,
                        "type": "color"
                    },
                    "clearcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "color": [ 1.0, 0.874509803921569, 0.141176470588235, 1.0 ],
                    "editing_bgcolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "elementcolor": [ 0.223386004567146, 0.254748553037643, 0.998085916042328, 1.0 ],
                    "fontsize": [ 13.0 ],
                    "locked_bgcolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "selectioncolor": [ 0.301960784313725, 0.694117647058824, 0.949019607843137, 1.0 ],
                    "stripecolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textcolor_inverse": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rnbolight",
                "default": {
                    "accentcolor": [ 0.443137254901961, 0.505882352941176, 0.556862745098039, 1.0 ],
                    "bgcolor": [ 0.796078431372549, 0.862745098039216, 0.925490196078431, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.835294117647059, 0.901960784313726, 0.964705882352941, 1.0 ],
                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "clearcolor": [ 0.898039, 0.898039, 0.898039, 1.0 ],
                    "color": [ 0.815686274509804, 0.509803921568627, 0.262745098039216, 1.0 ],
                    "editing_bgcolor": [ 0.898039, 0.898039, 0.898039, 1.0 ],
                    "elementcolor": [ 0.337254901960784, 0.384313725490196, 0.462745098039216, 1.0 ],
                    "fontname": [ "Lato" ],
                    "locked_bgcolor": [ 0.898039, 0.898039, 0.898039, 1.0 ],
                    "stripecolor": [ 0.309803921568627, 0.698039215686274, 0.764705882352941, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rnbomonokai",
                "default": {
                    "accentcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.0, 0.0, 0.0, 1.0 ],
                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "clearcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "color": [ 0.611764705882353, 0.125490196078431, 0.776470588235294, 1.0 ],
                    "editing_bgcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "elementcolor": [ 0.749019607843137, 0.83921568627451, 1.0, 1.0 ],
                    "fontname": [ "Lato" ],
                    "locked_bgcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "stripecolor": [ 0.796078431372549, 0.207843137254902, 1.0, 1.0 ],
                    "textcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ]
    }
}