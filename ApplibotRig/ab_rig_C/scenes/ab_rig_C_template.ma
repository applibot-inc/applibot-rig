//Maya ASCII 2023 scene
//Name: ab_rig_C_template.ma
//Last modified: Tue, Jan 09, 2024 11:58:12 AM
//Codeset: 932
file -rdi 1 -ns "ab_rig_C" -rfn "ab_rig_CRN" -op "v=0;" -typ "mayaAscii" "D:/ab_rig_C//rig/ab_rig_C.ma";
file -r -ns "ab_rig_C" -dr 1 -rfn "ab_rig_CRN" -op "v=0;" -typ "mayaAscii" "D:/ab_rig_C//rig/ab_rig_C.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "Mayatomr" "10.0.1.8m - 3.7.1.26 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "66A7E7B2-4254-2F93-FF91-0DA1A04ED6D7";
createNode transform -s -n "persp";
	rename -uid "D0649C82-4A60-4979-0DB7-D3B196A21C5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 131.06436925078577 39.083238733113468 266.77660081488835 ;
	setAttr ".r" -type "double3" -2.1383527296081488 27.400000000003242 -2.2390315702958328e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96E7F23D-4D3C-11DC-3540-E79848F298EB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".coi" 291.65472001507436;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 26.207415028523457 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "15D50E58-4512-6DE1-E6E6-8F81CCF00201";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DC083ED7-4DB0-BB36-70A2-E0805D71052F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "A794D8FD-43FB-AFC7-C960-AF8C7B0AE73C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2856F259-4D84-67C0-5C3F-2C9E665BBE04";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "987E574B-4516-EB42-833C-F4AFA5831738";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C019F091-45A6-600E-431D-FF84BDC50775";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "slime_picker";
	rename -uid "A21F7883-4ED1-4E26-EFD5-B9B98A85792B";
	addAttr -ci true -sn "isARSPicker" -ln "isARSPicker" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pickerData" -ln "pickerData" -dt "string";
	addAttr -ci true -sn "assetName" -ln "assetName" -dt "string";
	addAttr -ci true -sn "targetNamespace" -ln "targetNamespace" -dt "string";
	addAttr -ci true -sn "pickerVersion" -ln "pickerVersion" -at "double";
	setAttr -l on ".isARSPicker" yes;
	setAttr ".pickerData" -type "string" (
		"{\"background\": [[\"image\", \"picker/slime.png\", null, [0, 0], [1200, 700], \"D:/ab_rig_C/picker/slime.png\"]], \"item_data\": [{\"item_id\": 0, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 0, 255], \"position\": [-200.0, -350.0], \"size\": [100, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 1, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_Root_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 170, 0, 255], \"position\": [-200.0, 350.0], \"size\": [200, 40], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 2, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper_option\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-610.0, -190.0], \"size\": [100, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 3, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_middle_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 4, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_eye_sub\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [330.0, 0.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 5, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under\", \"shape_type\": \"triangle\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, 200.0], \"size\": [80, 80], \"orient\": 180, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 6, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_sub_under\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [400.0, 70.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 7, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 8, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_middle_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [0.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 9, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_Root_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 170, 0, 255], \"position\": [-200.0, 290.0], \"size\": [100, 30], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 10, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper\", \"shape_type\": \"triangle\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, -260.0], \"size\": [80, 80], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 11, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 12, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under_option\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-610.0, 120.0], \"size\": [100, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 13, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_middle_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-500.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 14, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [200.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 15, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_under_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-500.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 16, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_eye_sub\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [470.0, 0.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 17, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_sub_upper\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [400.0, -70.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 18, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_middle_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-300.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 19, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_upper_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [0.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 20, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_upper_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-400.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 21, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_under_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-400.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 22, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_middle_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [100.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 23, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [85, 85, 127, 255], \"position\": [400.0, 0.0], \"size\": [70, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 24, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_middle_option\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-610.0, -40.0], \"size\": [100, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 25, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_under_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [-100.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 26, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [200.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 27, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_upper_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [100.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 28, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_middle_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [200.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 29, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_under_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [0.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 30, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_root\", \"shape_type\": \"donutSquare\", \"custom_shape_data\": {}, \"color\": [255, 255, 255, 255], \"position\": [400.0, 0.0], \"size\": [300, 300], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 31, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_under_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [100.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 32, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_upper_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-500.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 33, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_middle_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-400.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 34, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_under_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-300.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 35, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_upper_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-300.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 36, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_upper_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [-100.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 37, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_middle_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [-100.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 39, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-707.9843197668918, -478.4083629918206], \"size\": [60, 40], \"orient\": 0, \"label\": \"GEO\", \"label_color\": [0, 0, 0, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -polymeshes $panel` == 1) {\\n        modelEditor -e -polymeshes 0 $panel;\\n    } else {\\n        modelEditor -e -polymeshes 1 $panel;\\n    }\\n}\\n\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 32.467140818796565]}, {\"item_id\": 40, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [170, 0, 255, 255], \"position\": [-707.9843197668918, -234.15960440035974], \"size\": [60, 40], \"orient\": 0, \"label\": \"CTRL\", \"label_color\": [255, 255, 255, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -nurbsCurves $panel` == 1) {\\n        modelEditor -e -nurbsCurves 0 $panel;\\n    } else {\\n        modelEditor -e -nurbsCurves 1 $panel;\\n    }\\n}\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 173.6494712077638]}, {\"item_id\": 41, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-707.9843197668918, -315.57585726418006], \"size\": [60, 40], \"orient\": 0, \"label\": \"Grid\", \"label_color\": [0, 0, 0, 255], \"script_type\": 1, \"scriptStr\": \"ToggleGrid;\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 126.58869441144138]}, {\"item_id\": 42, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-707.9843197668918, -396.9921101280003], \"size\": [60, 40], \"orient\": 0, \"label\": \"Xray\", \"label_color\": [0, 0, 0, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -xray $panel`) {\\n        modelEditor -e -xray false $panel;\\n    } else {\\n        modelEditor -e -xray true $panel;\\n    }\\n}\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 79.52791761511898]}, {\"item_id\": 43, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [170, 0, 255, 255], \"position\": [-707.9843197668918, -152.74335153653948], \"size\": [60, 40], \"orient\": 0, \"label\": \"Shade\\u21d4Wire\", \"label_color\": [255, 255, 255, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -displayAppearance $panel` == \\\"smoothShaded\\\") {\\n        modelEditor -e -displayAppearance \\\"wireframe\\\" -wireframeOnShaded true $panel;\\n    } else {\\n        modelEditor -e -displayAppearance \\\"smoothShaded\\\" -wireframeOnShaded false $panel;\\n    }\\n}\\n\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 220.71024800408622]}, {\"item_id\": 44, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_Other\", \"shape_type\": \"gear\", \"custom_shape_data\": {}, \"color\": [199, 0, 199, 255], \"position\": [390.0, 270.0], \"size\": [40, 40], \"orient\": 0, \"label\": \"Other\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 45, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_pupil_guruguru\", \"shape_type\": \"donut\", \"custom_shape_data\": {}, \"color\": [255, 85, 127, 255], \"position\": [330.0, -70.0], \"size\": [20, 20], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 47, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_ctrl_b\", \"shape_type\": \"rotate\", \"custom_shape_data\": {}, \"color\": [0, 255, 255, 255], \"position\": [360.0, -230.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 48, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_ctrl_a\", \"shape_type\": \"rotateB\", \"custom_shape_data\": {}, \"color\": [0, 255, 255, 255], \"position\": [430.0, -230.0], \"size\": [50, 50], \"orient\": 90, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 49, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_Root_001,Rig_C_Root_002,Rig_C_eye_ctrl_b,Rig_C_body_under_option,Rig_C_body_upper_001,Rig_L_body_middle_001,Rig_C_body_middle_option,Rig_R_body_middle_002,Rig_R_body_middle_001,Rig_C_body_upper,Rig_R_body_upper_002,Rig_R_body_upper_001,Rig_C_body_under_002,Rig_L_body_middle_003,Rig_R_body_under_003,Rig_C_body_middle_002,Rig_R_eye_sub,Rig_C_eye,Rig_C_body_under_001,Rig_C_body_upper_option,Rig_L_eye_sub,Rig_C_eye_root,Rig_R_body_upper_003,Rig_C_eye_sub_upper,Rig_R_body_middle_003,Rig_C_body,Rig_C_body_under,Rig_L_body_upper_003,Rig_C_body_middle_001,Rig_C_body_upper_002,Rig_L_body_under_001,Rig_C_eye_ctrl_a,Rig_L_body_middle_002,Rig_C_pupil_guruguru,Rig_L_body_upper_002,Rig_L_body_under_002,Rig_R_body_under_001,Rig_L_body_upper_001,Rig_L_body_under_003,Rig_Other,Rig_C_eye_sub_under,Rig_R_body_under_002\", \"shape_type\": \"gear\", \"custom_shape_data\": {}, \"color\": [0, 170, 0, 255], \"position\": [510.0, 270.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"ALL\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}]}");
	setAttr ".targetNamespace" -type "string" "ab_rig_C";
	setAttr ".pickerVersion" 3;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1E9ACF7D-4CBF-FF50-DB2A-ACA528918401";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2B0DDAA8-4341-1777-A6C1-CEA24902140D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "36807E1A-4E12-C3C0-E911-05A721B1943E";
createNode displayLayerManager -n "layerManager";
	rename -uid "5D6F0511-490D-1078-87EC-C6B9FFDCD8D2";
	setAttr -s 3 ".dli[1:2]"  6 7;
createNode displayLayer -n "defaultLayer";
	rename -uid "37768B2F-400D-6865-DC0C-0089D4A73C61";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "71C13699-4258-1725-4A83-628B1D97B354";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "415A2A73-47B3-288C-ED2C-43B0E59FFE8A";
	setAttr ".g" yes;
createNode reference -n "ab_rig_CRN";
	rename -uid "CE59F228-4F72-FB25-4DDD-9593A14AF84B";
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_CRN"
		"ab_rig_CRN" 1
		2 "ab_rig_C:pasted__GEO_L" "visibility" " 1"
		"ab_rig_CRN" 79
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "ab_rig_C:JNT_L" "visibility" " 1"
		2 "ab_rig_C:GEO_L" "visibility" " 1";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2F87611D-4C67-159F-9D1B-7D9E68DBEC86";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n"
		+ "            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n"
		+ "            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1205\n            -height 450\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 1\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 0.927166\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"slime_picker\" \n                -opaqueContainers 0\n                -freeform 0\n                -image \"D:/00_??????/MAyaproj/Reach_Sspring_jaku/sourceimages/HG_Layout.tga\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1205\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1205\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 500 -size 1200 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C93251DA-4DE1-3E81-3045-E1A6462E582D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 210 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode shapeEditorManager -n "ab_rig_C:shapeEditorManager1";
	rename -uid "F46BC9E5-4F78-85C6-A56E-929243901B8D";
createNode poseInterpolatorManager -n "ab_rig_C:poseInterpolatorManager1";
	rename -uid "DDDC4941-4D1E-B2B2-0746-659F3F008E1E";
createNode renderLayerManager -n "ab_rig_C:renderLayerManager1";
	rename -uid "7A50FC9E-455B-49C6-3942-4AB23F1AE27B";
createNode renderLayer -n "ab_rig_C:defaultRenderLayer1";
	rename -uid "D7682FDA-4156-9263-3470-9FAE2193EAFA";
	setAttr ".g" yes;
createNode surfaceShader -n "ab_rig_C:surfaceShader5";
	rename -uid "E71F678D-4B18-BCC0-F23F-5680844F95B9";
	setAttr ".oc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "ab_rig_C:surfaceShader1SG1";
	rename -uid "A0A66B62-4EA6-4B16-FD92-6A83524B1BBB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ab_rig_C:materialInfo5";
	rename -uid "3DBC328C-47A4-33FF-C411-F5BA11BE9E87";
createNode surfaceShader -n "ab_rig_C:surfaceShader6";
	rename -uid "5CD30AC0-4BCF-1394-D437-6B84496E6447";
	setAttr ".oc" -type "float3" 0.125008 0.60100001 0.56614947 ;
createNode shadingEngine -n "ab_rig_C:surfaceShader2SG1";
	rename -uid "6C3B8182-459F-1038-FFF1-5CAA2A1EA6C5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ab_rig_C:materialInfo6";
	rename -uid "6A6099E9-4BAC-E771-5209-11A246A7F03C";
createNode surfaceShader -n "ab_rig_C:surfaceShader7";
	rename -uid "3F9F9D44-4DD5-AEB9-E178-55B4F38F3BD3";
createNode shadingEngine -n "ab_rig_C:surfaceShader3SG1";
	rename -uid "49BD99B4-4B9B-2890-7F88-808B3750ECAF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ab_rig_C:materialInfo7";
	rename -uid "19EB9156-4DFB-7FBE-9111-2090EEDC0239";
createNode surfaceShader -n "ab_rig_C:surfaceShader8";
	rename -uid "C4FF0839-4008-D163-9DDD-05986671C927";
	setAttr ".oc" -type "float3" 0 0.16132186 0.25099999 ;
	setAttr ".ot" -type "float3" 0.30952382 0.30952382 0.30952382 ;
createNode shadingEngine -n "ab_rig_C:surfaceShader4SG1";
	rename -uid "4E5C703D-4D1C-D38C-0C50-76984FBA649C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ab_rig_C:materialInfo8";
	rename -uid "ABEAA91D-4104-2635-5EC3-9AB32391873A";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide158";
	rename -uid "C6B4FFB2-4129-5DDD-1972-0CBEC634F755";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide156";
	rename -uid "626DFEE2-4F77-CAE9-4928-AB999FD6EE04";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide157";
	rename -uid "8EB02204-48FD-B264-608C-8F88C40E2D07";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode blendColors -n "ab_rig_C:rig:blendColors23";
	rename -uid "ED47F4A8-4867-5699-738E-EE8A2BAF1656";
	setAttr ".c2" -type "float3" 27 -4.6629367e-15 8.5265128e-14 ;
createNode blendColors -n "ab_rig_C:rig:blendColors21";
	rename -uid "4A23C0FE-4711-C3AB-C0C1-6A98440FDEB2";
createNode condition -n "ab_rig_C:rig:condition14";
	rename -uid "EEA3347B-4F90-532F-D005-AAA33E997F5F";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide108";
	rename -uid "CDBCCF74-4EC7-E014-028D-B584A90787D4";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 54 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide106";
	rename -uid "6F39D3C8-44DB-94C3-BC61-4DBB548CFB22";
	setAttr ".i1" -type "float3" 27 -4.6629367e-15 8.5265128e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide110";
	rename -uid "4DE11738-4C0C-0FC8-6226-60B93FA0E7CF";
	setAttr ".i2" -type "float3" 27 -4.6629367e-15 8.5265128e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide109";
	rename -uid "53EA648E-4E4B-F1AF-33B5-EB82E745CA7D";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode blendColors -n "ab_rig_C:rig:blendColors24";
	rename -uid "445751C2-49E6-87AF-2A9C-B5A5E127461C";
	setAttr ".c2" -type "float3" 27 -6.8833828e-15 2.8421709e-14 ;
createNode blendColors -n "ab_rig_C:rig:blendColors22";
	rename -uid "823BEDEA-42F3-44BA-2C8F-E1AA8735E4AB";
createNode condition -n "ab_rig_C:rig:condition15";
	rename -uid "56E23E28-4A1A-D6DD-F886-F98FA294BA0B";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide107";
	rename -uid "F3F90D67-4C8A-EC01-37C2-04BDBFCD6447";
	setAttr ".i1" -type "float3" 27 -6.8833828e-15 2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide112";
	rename -uid "2796FFD6-49F8-5638-1DA4-6C9D8888EDBD";
	setAttr ".i2" -type "float3" 27 -6.8833828e-15 2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide111";
	rename -uid "E8537BD1-42E3-51F6-88C3-E08407976E6D";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide159";
	rename -uid "EF17F5EB-4D71-0E41-CB12-F299033A2783";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide160";
	rename -uid "89860563-4902-B584-4638-C681D20F15C6";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode blendColors -n "ab_rig_C:rig:blendColors19";
	rename -uid "1CC0CF7C-4B9B-78AA-450C-C38DEB6236F6";
	setAttr ".c2" -type "float3" 27 -5.1070259e-15 -5.6843419e-14 ;
createNode blendColors -n "ab_rig_C:rig:blendColors17";
	rename -uid "1181D17A-459D-B90F-4C0F-FD9C53902451";
createNode condition -n "ab_rig_C:rig:condition12";
	rename -uid "BF9FF27A-4EBE-3105-673D-69A899B693B1";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide101";
	rename -uid "79D7EBED-4C3A-6E69-0555-DBB9CDA08588";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 54 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide99";
	rename -uid "E8CFA6E5-4825-1EAB-B03C-22B692FA8D58";
	setAttr ".i1" -type "float3" 27 -5.1070259e-15 -5.6843419e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide103";
	rename -uid "ECA0CB7D-4F22-E84D-B0AA-5885F99C7D5F";
	setAttr ".i2" -type "float3" 27 -5.1070259e-15 -5.6843419e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide102";
	rename -uid "6A04BF2B-420F-D4B1-F628-5D8828128818";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode blendColors -n "ab_rig_C:rig:blendColors20";
	rename -uid "BC1F6952-48B2-1DD4-C2BD-ED9B59D2E821";
	setAttr ".c2" -type "float3" 27 -7.1054274e-15 -2.8421709e-14 ;
createNode blendColors -n "ab_rig_C:rig:blendColors18";
	rename -uid "9C1C17EA-4D2C-D681-01FE-CC832E0C49A4";
createNode condition -n "ab_rig_C:rig:condition13";
	rename -uid "E8D39DDC-415E-3D88-F869-1E9F96F083EB";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide100";
	rename -uid "5BFF29DE-45A0-4E9A-FF00-489C6449AF8C";
	setAttr ".i1" -type "float3" 27 -7.1054274e-15 -2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide105";
	rename -uid "AFF57097-4465-39B8-EE6A-FF8FBCABCE5D";
	setAttr ".i2" -type "float3" 27 -7.1054274e-15 -2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide104";
	rename -uid "8753ABFF-4D61-1B5D-74CB-28B1DC84498A";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide141";
	rename -uid "A2DB4658-4749-F691-E1CA-18B2A1B8EB3D";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide142";
	rename -uid "306F3481-4F98-F66C-A18E-72A60F91056F";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide143";
	rename -uid "616E1302-476B-DAEC-B576-ED98F094356B";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide144";
	rename -uid "83456D76-4818-6D21-AAB8-DBA20D997F8D";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide145";
	rename -uid "C963717E-4B60-05AF-5556-35BF16205ED6";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide148";
	rename -uid "BC0ACCB6-4CD8-1EF0-17F8-03B633F77E93";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide146";
	rename -uid "51388896-42AB-790A-A924-DBB0AAA73190";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide147";
	rename -uid "E768DA73-4759-9931-68A3-D18505D11527";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide149";
	rename -uid "23CF4D4F-4CEB-A22A-9459-B1B043B4C938";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide150";
	rename -uid "C66370CA-4327-AF00-DCE6-7FBA2180BACD";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide166";
	rename -uid "3CD244D9-462C-71F7-7843-899457E0EEBC";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide167";
	rename -uid "CB114920-40D1-E1C0-4003-A7BEF64264DB";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide168";
	rename -uid "52DEF5F1-4F18-25C2-F011-10A7D8560CB7";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide169";
	rename -uid "9042037D-4BD0-68A0-76DE-5AB387C4441F";
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide170";
	rename -uid "206F9E34-4FF4-498B-5D1E-8F9D68836220";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide131";
	rename -uid "84617709-4F87-1DF4-8237-5E8FE52ED526";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide132";
	rename -uid "1E3E7663-4B06-4D2F-DC98-8288E726AE1A";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide133";
	rename -uid "AE2F535F-48FB-64F6-E30D-AFB6632C89AD";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide134";
	rename -uid "AADC5412-401E-00CB-05E8-7DA40BC9B288";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide135";
	rename -uid "57646B16-46DB-FE5D-869B-BC8277AF088B";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide138";
	rename -uid "9CD10DC9-4616-389D-F6AE-48BBB022CCCE";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide136";
	rename -uid "D701B70A-4BDB-AE55-DB93-EA8F8D74BD36";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide137";
	rename -uid "42084249-4187-5CDC-7768-51B0E06A7C50";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide139";
	rename -uid "C8B59D65-4D85-3C90-242E-55ACF6C1EB9A";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide140";
	rename -uid "CAD35B38-4407-67A0-3CAB-16889EC5CC96";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide128";
	rename -uid "8CD11572-428C-2EE3-4017-24B89D1A3050";
	setAttr ".i2" -type "float3" 11.5 3.5527137e-15 2.1175824e-22 ;
createNode blendTwoAttr -n "ab_rig_C:rig:blendTwoAttr2";
	rename -uid "C74D318F-4443-8622-5856-9C9C8201CB86";
	setAttr -s 2 ".i[0:1]"  1 0;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide127";
	rename -uid "371C9C3A-4CFC-D33E-522A-CDBC3C8B4CEF";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 34.508045 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide129";
	rename -uid "49BB1D8E-43B9-EA9D-5F00-ADA5B9BE0BC5";
	setAttr ".i2" -type "float3" 11.5 -4.4408921e-15 0 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide130";
	rename -uid "0936DD4E-47DF-B932-69C8-5C876081BEA8";
	setAttr ".i2" -type "float3" 11.5 0 -2.1175824e-21 ;
createNode blendColors -n "ab_rig_C:rig:blendColors27";
	rename -uid "7A23F82D-4C9F-3CE2-3BEA-8E83C59F2E68";
	setAttr ".c2" -type "float3" 46 4.3021142e-16 2.1951026e-07 ;
createNode blendColors -n "ab_rig_C:rig:blendColors25";
	rename -uid "C0C20212-457E-D3E1-5819-C288BDA19579";
createNode condition -n "ab_rig_C:rig:condition16";
	rename -uid "7B219477-4F8C-F256-6DDB-46965982A602";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide115";
	rename -uid "EDD46E53-4D69-95B9-F0A7-95A29DBB4749";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 92.300003 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide113";
	rename -uid "3F7AAD36-4606-283E-440B-DD8E2678E097";
	setAttr ".i1" -type "float3" 46 4.3021142e-16 2.1951026e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide117";
	rename -uid "B117BC4F-4AFC-5B7E-AACE-5390F0D578C5";
	setAttr ".i2" -type "float3" 46 4.3021142e-16 2.1951026e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide116";
	rename -uid "4F936A28-4AEF-4585-897B-44B53CBBE27A";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46 1 1 ;
createNode blendColors -n "ab_rig_C:rig:blendColors28";
	rename -uid "5A343C37-43A8-AFDD-08DE-86A386B545EA";
	setAttr ".c2" -type "float3" 46.299999 -1.1365908e-14 1.0658141e-14 ;
createNode blendColors -n "ab_rig_C:rig:blendColors26";
	rename -uid "0D5AF01A-48E3-0CDE-448E-29BDB5F93F48";
createNode condition -n "ab_rig_C:rig:condition17";
	rename -uid "495F68E3-4D7A-5CC8-80F1-D4BE15EC9549";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide114";
	rename -uid "E7BACD68-4CD8-B488-6185-5981C8C952C0";
	setAttr ".i1" -type "float3" 46.299999 -1.1365908e-14 1.0658141e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide119";
	rename -uid "C0091165-455D-C64A-4649-3188E0B55DDD";
	setAttr ".i2" -type "float3" 46.299999 -1.1365908e-14 1.0658141e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide118";
	rename -uid "35CA457A-4231-C9DC-6DEA-35A45B97B337";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46.299999 1 1 ;
createNode blendColors -n "ab_rig_C:rig:blendColors31";
	rename -uid "683E0207-462C-CEE6-518F-31B2B31A70B1";
	setAttr ".c2" -type "float3" 46 -2.1233015e-15 -2.1951023e-07 ;
createNode blendColors -n "ab_rig_C:rig:blendColors29";
	rename -uid "A8DCD548-4E3D-340C-D9DE-AD9DE07DF7B8";
createNode condition -n "ab_rig_C:rig:condition18";
	rename -uid "33887366-4E9E-2072-574A-C899E5F19CCD";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide122";
	rename -uid "4AB27E8B-4084-C12F-7568-0AAF733E5953";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 92.300003 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide120";
	rename -uid "94E4DFDF-4645-A191-F0E1-D8B2607A4FD2";
	setAttr ".i1" -type "float3" 46 -2.1233015e-15 -2.1951023e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide124";
	rename -uid "9909953F-40FE-371A-6485-9782BE35C15B";
	setAttr ".i2" -type "float3" 46 -2.1233015e-15 -2.1951023e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide123";
	rename -uid "91DC5D55-40B2-65C4-5015-98BEBB8C8A3B";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46 1 1 ;
createNode blendColors -n "ab_rig_C:rig:blendColors32";
	rename -uid "8D9F6D0D-4119-7F4F-92CB-19B875F5BEE4";
	setAttr ".c2" -type "float3" 46.299999 -1.3933299e-14 8.8817842e-15 ;
createNode blendColors -n "ab_rig_C:rig:blendColors30";
	rename -uid "9043FD22-4269-ACB4-36E7-599CFF61C0BB";
createNode condition -n "ab_rig_C:rig:condition19";
	rename -uid "596DF781-4B42-B0F5-4A39-C4A12F5727EA";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide121";
	rename -uid "60CD23DB-4709-0846-8651-33B5823EFEB5";
	setAttr ".i1" -type "float3" 46.299999 -1.3933299e-14 8.8817842e-15 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide126";
	rename -uid "A60E5862-462D-6981-F56D-CD8C748909EB";
	setAttr ".i2" -type "float3" 46.299999 -1.3933299e-14 8.8817842e-15 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide125";
	rename -uid "652D8102-4489-7680-E0B0-879FCCFC86A6";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46.299999 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide151";
	rename -uid "193E2CA6-4253-73A6-B3ED-4196013CACD2";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide152";
	rename -uid "B8C3A3D2-485B-544E-C47E-D08F04C45381";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide153";
	rename -uid "E686A4AC-43C5-3C9B-B2C9-6AB439A75B6E";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide154";
	rename -uid "62CD35A4-49EA-652E-CF84-E48B7AC6E3FD";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide155";
	rename -uid "20DD43E4-4793-786A-7B3B-0C9CB62759A0";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide164";
	rename -uid "7EE8C9B9-419A-16E3-8FFA-CD9114F2BD6F";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide165";
	rename -uid "234ECE05-4212-2952-B05A-AC9AFA4F7081";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide163";
	rename -uid "EDC1EE33-4C86-62BA-8EC7-D3BBAF78C240";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide161";
	rename -uid "81EFCF91-4A73-7504-F9C8-529FA6B85970";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig:multiplyDivide162";
	rename -uid "B3A129DC-4A9F-5FF3-978E-7999E1B839D0";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide158";
	rename -uid "F709E145-4D64-3B71-2317-E0AA06330403";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide156";
	rename -uid "975680D1-4B49-75AD-FAF5-11A70C1A1EAA";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide157";
	rename -uid "8B921D00-46DE-9548-F327-8286F378B542";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors23";
	rename -uid "DD94B161-4BEF-3BA3-381D-4688D8CC7163";
	setAttr ".c2" -type "float3" 27 -4.6629367e-15 8.5265128e-14 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors21";
	rename -uid "4751DC89-4D0D-A8DE-3C4F-838BA75FFECE";
createNode condition -n "ab_rig_C:rig1:condition14";
	rename -uid "B9BFB651-4367-B28F-04EC-8D9A8750EAE0";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide108";
	rename -uid "4175C319-4BE0-5895-11FB-458EEE322D66";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 54 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide106";
	rename -uid "2CED155B-4D8E-6C47-662A-018B09A76987";
	setAttr ".i1" -type "float3" 27 -4.6629367e-15 8.5265128e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide110";
	rename -uid "9E9D659E-4675-6788-5394-92AF7E256402";
	setAttr ".i2" -type "float3" 27 -4.6629367e-15 8.5265128e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide109";
	rename -uid "A41A4287-4106-CBFB-49CD-629F8B1A0628";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors24";
	rename -uid "00694430-433D-896F-D0AA-71B25E1702D8";
	setAttr ".c2" -type "float3" 27 -6.8833828e-15 2.8421709e-14 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors22";
	rename -uid "77832A1E-469E-5B4D-1267-3892807C071A";
createNode condition -n "ab_rig_C:rig1:condition15";
	rename -uid "C0695409-4011-14A4-53BF-D7BC92BB158F";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide107";
	rename -uid "CB3AED6D-4D46-119E-390D-55857DC1D882";
	setAttr ".i1" -type "float3" 27 -6.8833828e-15 2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide112";
	rename -uid "C219C6F7-45F3-A1AF-6D51-5A8A26DF3275";
	setAttr ".i2" -type "float3" 27 -6.8833828e-15 2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide111";
	rename -uid "C104A0B2-44C7-ED8A-B993-E9A55EE4AFD2";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide159";
	rename -uid "E1B27BD8-4F4E-D31A-48E2-4FACC5A2CF1C";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide160";
	rename -uid "9545902E-426B-1D67-B00A-DEB1E21B0A7C";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors19";
	rename -uid "911DEB88-4C47-37FA-D38A-F29626C59ED3";
	setAttr ".c2" -type "float3" 27 -5.1070259e-15 -5.6843419e-14 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors17";
	rename -uid "1027F3BA-42A3-AF7D-129B-828BD1AB3B37";
createNode condition -n "ab_rig_C:rig1:condition12";
	rename -uid "B512BC7D-4C6A-F3FC-77FE-C8B05721204E";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide101";
	rename -uid "CA7F8905-4776-FD84-21D8-0BBCEF3AED63";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 54 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide99";
	rename -uid "28D274E1-45EE-C4B5-2179-138A6124EBBA";
	setAttr ".i1" -type "float3" 27 -5.1070259e-15 -5.6843419e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide103";
	rename -uid "76404FBD-40E9-94DB-56A7-1B9B0104281E";
	setAttr ".i2" -type "float3" 27 -5.1070259e-15 -5.6843419e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide102";
	rename -uid "0750D145-44DE-21D9-22B7-CCB4D37A9BA5";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors20";
	rename -uid "5E763AD3-4EFA-3D69-A06B-0688443C1C45";
	setAttr ".c2" -type "float3" 27 -7.1054274e-15 -2.8421709e-14 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors18";
	rename -uid "6CDE2426-4870-9F20-4D8A-4D942AE0D9B1";
createNode condition -n "ab_rig_C:rig1:condition13";
	rename -uid "D28D6D97-4567-4160-DE25-3A8603754014";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide100";
	rename -uid "651635CE-4471-C2FC-289B-65B606301DEB";
	setAttr ".i1" -type "float3" 27 -7.1054274e-15 -2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide105";
	rename -uid "888DF488-4571-0DD5-0147-1CBF697A59BF";
	setAttr ".i2" -type "float3" 27 -7.1054274e-15 -2.8421709e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide104";
	rename -uid "5FA22262-4003-71E6-FA34-32A7D632692A";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 27 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide141";
	rename -uid "57D22A8B-4C43-08A1-E660-DE871FF5978C";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide142";
	rename -uid "83241AA8-4C83-5AB8-E02C-B58270BF58A4";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide143";
	rename -uid "62C78548-4F3B-DB52-B13B-87BF16985139";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide144";
	rename -uid "CD99EA37-4F0E-8A34-8B94-11990747DBF8";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide145";
	rename -uid "25D6C397-401E-CF0C-6A5A-D0AC1BA6CF75";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide148";
	rename -uid "C529C47D-4DAB-5259-F718-1B893E0E0C36";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide146";
	rename -uid "85611689-414E-663D-6CC7-939CBDD9A617";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide147";
	rename -uid "FFC49AEB-433A-E70D-BD5D-82B8CA561492";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide149";
	rename -uid "991591CA-4BC0-8198-05CB-76939A732291";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide150";
	rename -uid "411DAFF9-4DCF-7AA9-2912-6BADA676B1BA";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide166";
	rename -uid "EAB26E18-46F4-5975-016A-A08CAD78FB2C";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide167";
	rename -uid "F59EA9D3-4A42-7D0D-4B3F-BFAA9E8C8178";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide168";
	rename -uid "E830DF0B-47F4-B41A-1B05-398E8220B891";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide169";
	rename -uid "AC3CC1C3-4F3B-C33F-7198-468C426F042D";
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide170";
	rename -uid "D850EB57-4FE5-16DF-10B7-D1AEE996C268";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide131";
	rename -uid "B10D2A0E-4CF1-C996-4234-BFB2CF5AB8B5";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide132";
	rename -uid "F94B221A-49B3-F7F6-6DBF-CEA257F2B63C";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide133";
	rename -uid "403116C7-427F-2199-FE6D-DB8DBFD8DF93";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide134";
	rename -uid "3F06D3E9-4429-D360-5190-95A165FFB76C";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide135";
	rename -uid "1097D0D9-44FC-5973-78AD-98A21A396D19";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide138";
	rename -uid "FBFF48FF-4C16-131B-C133-1A9EDB119076";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide136";
	rename -uid "F0D7D891-4A31-531D-8D66-16B9B2C9D976";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide137";
	rename -uid "C9CE2FAC-48BD-3178-8FBF-86A12383C9B7";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide139";
	rename -uid "6CED5E19-4930-A14C-9131-D197EBF6F4B9";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide140";
	rename -uid "52A0EF01-4835-264F-DF1A-AC8E49E8370D";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide128";
	rename -uid "B868493B-4CC4-1565-2BE0-2EAE9F5FBF33";
	setAttr ".i2" -type "float3" 11.5 3.5527137e-15 2.1175824e-22 ;
createNode blendTwoAttr -n "ab_rig_C:rig1:blendTwoAttr2";
	rename -uid "7494E330-43AB-F942-6163-7EB26EF8106D";
	setAttr -s 2 ".i[0:1]"  1 0;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide127";
	rename -uid "58233083-4C5B-1CD6-5CB9-14A8FA3952EC";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 34.508045 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide129";
	rename -uid "33C34DF9-4AE5-371F-09C7-279AE857F7E6";
	setAttr ".i2" -type "float3" 11.5 -4.4408921e-15 0 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide130";
	rename -uid "FFDDF77A-4515-27AC-8F13-8B9C72A1A837";
	setAttr ".i2" -type "float3" 11.5 0 -2.1175824e-21 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors27";
	rename -uid "AD237F84-4AAE-5E76-3F02-3183747EC93D";
	setAttr ".c2" -type "float3" 46 4.3021142e-16 2.1951026e-07 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors25";
	rename -uid "BEDF738E-4AEC-2E72-A5FE-138FB5D4E279";
createNode condition -n "ab_rig_C:rig1:condition16";
	rename -uid "1FBAFCF4-4078-5D47-A7DB-88B04E833868";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide115";
	rename -uid "3D6593B4-4E30-F794-9348-5A846D927C59";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 92.300003 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide113";
	rename -uid "38F176E6-418B-C3FC-08CA-EDBF39D74478";
	setAttr ".i1" -type "float3" 46 4.3021142e-16 2.1951026e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide117";
	rename -uid "A71026F6-4F12-5215-094F-388D569D25BA";
	setAttr ".i2" -type "float3" 46 4.3021142e-16 2.1951026e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide116";
	rename -uid "8A331D26-4D65-02C4-92EE-2A9102305CDD";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46 1 1 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors28";
	rename -uid "85115181-418E-8A89-4F4E-BF834AD8DEB0";
	setAttr ".c2" -type "float3" 46.299999 -1.1365908e-14 1.0658141e-14 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors26";
	rename -uid "AD62C3E0-4B8B-12AA-BC14-C5B201C2F4FD";
createNode condition -n "ab_rig_C:rig1:condition17";
	rename -uid "044888F1-4DEA-711C-F757-13AFA33FECCA";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide114";
	rename -uid "6BC957AD-494B-3DE6-6073-CFAB0A43F121";
	setAttr ".i1" -type "float3" 46.299999 -1.1365908e-14 1.0658141e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide119";
	rename -uid "56C1DF5D-4477-5238-5209-2ABEB9146C42";
	setAttr ".i2" -type "float3" 46.299999 -1.1365908e-14 1.0658141e-14 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide118";
	rename -uid "24A4662A-4629-7408-0752-C1A2D23F223C";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46.299999 1 1 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors31";
	rename -uid "AA2A0EDC-471A-31E1-B3B7-589C8F73343C";
	setAttr ".c2" -type "float3" 46 -2.1233015e-15 -2.1951023e-07 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors29";
	rename -uid "A6FA34B2-4746-B558-4C93-3680035FD9E5";
createNode condition -n "ab_rig_C:rig1:condition18";
	rename -uid "89B2C8FF-4BA2-DBF4-2572-D3A16B8ED251";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide122";
	rename -uid "D0EFE3A5-4932-D79A-7E00-1A943D0023A9";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 92.300003 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide120";
	rename -uid "3073C434-4F5D-9545-A0A2-D49D87F8075D";
	setAttr ".i1" -type "float3" 46 -2.1233015e-15 -2.1951023e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide124";
	rename -uid "4E06EEC7-4671-ADA1-5C1E-4AA70F1EE46F";
	setAttr ".i2" -type "float3" 46 -2.1233015e-15 -2.1951023e-07 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide123";
	rename -uid "74E74475-451E-C4B2-271D-7EA3005E269F";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46 1 1 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors32";
	rename -uid "03FF5A85-4779-F46B-B1BE-0CBF6F3BCC6D";
	setAttr ".c2" -type "float3" 46.299999 -1.3933299e-14 8.8817842e-15 ;
createNode blendColors -n "ab_rig_C:rig1:blendColors30";
	rename -uid "F8EF1889-43DD-3294-1C17-F98A7FB096F5";
createNode condition -n "ab_rig_C:rig1:condition19";
	rename -uid "8BC5954E-44A1-D82B-A36E-898B315E1461";
	setAttr ".op" 3;
	setAttr ".st" 1;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide121";
	rename -uid "A2CF6ED4-454B-E7EE-F8F9-F7BF3D8725AC";
	setAttr ".i1" -type "float3" 46.299999 -1.3933299e-14 8.8817842e-15 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide126";
	rename -uid "509D5DE5-4148-F209-EDE2-B0B3615B6281";
	setAttr ".i2" -type "float3" 46.299999 -1.3933299e-14 8.8817842e-15 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide125";
	rename -uid "109678F5-47AA-5625-666D-A392FDA8B912";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 46.299999 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide151";
	rename -uid "674B4A31-4D6A-2BA0-307E-8EAC32C756BB";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide152";
	rename -uid "6F06E566-44BD-73E0-2FCC-DC8265EB3830";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide153";
	rename -uid "153EA0B4-4F84-1984-47B2-6C8307515D1E";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide154";
	rename -uid "77C1BC39-4E92-CE19-677F-8F9F888EEEF2";
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide155";
	rename -uid "A5F07C7A-48FD-3A09-8083-35912EB18768";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide164";
	rename -uid "037ECC5B-41C5-BC30-4EF9-0E8EC6023DE2";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide165";
	rename -uid "5A97BB71-4321-2CAA-1922-A0996E0BD1DB";
	setAttr ".i2" -type "float3" 0.60000002 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide163";
	rename -uid "D8D02E14-4F1A-581C-A2B3-6595A747E106";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide161";
	rename -uid "F2CDC230-4A6F-6070-6AF0-329CF123158B";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ab_rig_C:rig1:multiplyDivide162";
	rename -uid "98010BF2-432D-72E4-25F2-2BA68F575D92";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage53";
	rename -uid "2F4BB3DF-43DB-E083-A21F-AD9182483517";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide121";
	rename -uid "EA93D918-412F-9B9A-20B6-05A430F46962";
	setAttr ".i2" -type "float3" 0.89999998 0.89999998 0.89999998 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide140";
	rename -uid "63B1EB8B-461D-CC7A-55D1-F1997D555187";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage56";
	rename -uid "EE54FD06-4650-D03E-521E-5BBFB18DCCE1";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide124";
	rename -uid "76E71C09-4BEB-44F4-FDB4-45B10EE3A00B";
	setAttr ".i2" -type "float3" 0.75 0.75 0.75 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide139";
	rename -uid "137C0FA3-4CA6-06B5-C8A0-2CBA25E3AC9F";
	setAttr ".i2" -type "float3" 0.41999999 0.41999999 0.41999999 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage54";
	rename -uid "ED584C3D-461C-63AF-53EB-CDA5933408C5";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide123";
	rename -uid "ABA4FB31-4296-608B-3741-29B4467F7C50";
	setAttr ".i2" -type "float3" 0.5 0.5 0.5 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide138";
	rename -uid "BEEE939E-4BF9-2C28-0BDD-9888CBF582AD";
	setAttr ".i2" -type "float3" 0.72000003 0.72000003 0.72000003 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage55";
	rename -uid "231B3D59-4485-9F83-F359-EB9862529C9E";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide122";
	rename -uid "76BB6602-449A-E2AA-E9CE-86BC1381C0C5";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide137";
	rename -uid "1317863C-46DB-6804-4062-31BC0A3A75C4";
	setAttr ".i2" -type "float3" 0.98000002 0.98000002 0.98000002 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage62";
	rename -uid "65757DB1-436E-2BE6-0E37-00ACE0C11E29";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide129";
	rename -uid "AAF34C00-4AF5-5622-D0C9-6DBFE4C49CEF";
	setAttr ".i2" -type "float3" 0.94999999 0.94999999 0.94999999 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage61";
	rename -uid "6BC04E43-46FD-DC77-85E4-A5B1781CA4FF";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide130";
	rename -uid "C13CC79D-4801-F4C0-12DC-DA90FF8C535D";
	setAttr ".i2" -type "float3" 0.75 0.75 0.75 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage63";
	rename -uid "D77A04FE-450A-096A-DB2B-23AC01D25938";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide131";
	rename -uid "E4703172-41D9-99CF-C50A-5AAF61579C77";
	setAttr ".i2" -type "float3" 0.5 0.5 0.5 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage66";
	rename -uid "3F02A751-4735-7933-9A57-3FA7256EB790";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide132";
	rename -uid "C2DA28ED-4E43-AB52-8FFB-BBA2E68396E4";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage57";
	rename -uid "91A472FC-463B-8751-00A9-868905603180";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide125";
	rename -uid "919768FB-4E70-A6D2-3175-DCB003A1400B";
	setAttr ".i2" -type "float3" -0.89999998 0.89999998 0.89999998 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide144";
	rename -uid "D1B2EC1D-4D1B-2352-B415-1C9A44B8AD75";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage58";
	rename -uid "7B984937-4726-1975-9C73-39A28B8DA7FE";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide126";
	rename -uid "4D03DDC7-4C49-A2FB-305D-929860DDE1C4";
	setAttr ".i2" -type "float3" -0.75 0.75 0.75 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide143";
	rename -uid "41821DD1-4B26-6E9A-403B-8497AE4A5449";
	setAttr ".i2" -type "float3" 0.41999999 0.41999999 0.41999999 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage59";
	rename -uid "66A11763-4062-6C62-45F2-06B9E1632AD5";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide127";
	rename -uid "448DAB46-4A9F-94AE-EE8F-A99AAE2626D8";
	setAttr ".i2" -type "float3" -0.5 0.5 0.5 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide141";
	rename -uid "823C6B80-4A07-E533-2BD6-EDBE010B57F4";
	setAttr ".i2" -type "float3" 0.72000003 0.72000003 0.72000003 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage60";
	rename -uid "DD72684F-4FEA-6E2E-24CC-769CF9F89370";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide128";
	rename -uid "D1E6EAC6-4910-B3C4-3245-148FE2545EF0";
	setAttr ".i2" -type "float3" -0.1 0.1 0.1 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide142";
	rename -uid "05C2A22B-4BE6-BAD1-85A7-F5B1FDFD686E";
	setAttr ".i2" -type "float3" 0.98000002 0.98000002 0.98000002 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage68";
	rename -uid "1810BC41-488A-B95B-49D1-4FB4A54A991A";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide133";
	rename -uid "AE6FA0C8-4CE0-8E8B-6B3C-CCA6B4A148B3";
	setAttr ".i2" -type "float3" -0.1 0.1 0.1 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage65";
	rename -uid "BAD2A184-4CFE-06C8-74D5-8AAF2253AD9A";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide134";
	rename -uid "AAC74224-4241-8FC7-BF81-67A9977F0595";
	setAttr ".i2" -type "float3" -0.5 0.5 0.5 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage67";
	rename -uid "B03D0FDE-44CE-5843-BABC-EB96C0E85603";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide135";
	rename -uid "8E03A7CE-4DBE-0226-E68B-C98D2CA9A391";
	setAttr ".i2" -type "float3" -0.75 0.75 0.75 ;
createNode plusMinusAverage -n "ab_rig_C:pasted__plusMinusAverage64";
	rename -uid "FA1D96C5-4B7D-527F-DF15-C493C00C6FB1";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide136";
	rename -uid "D128D069-44B2-927F-AAAC-AD9B35D8A6FA";
	setAttr ".i2" -type "float3" -0.94999999 0.94999999 0.94999999 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide160";
	rename -uid "FCA64189-4323-F7C6-964B-07BA32B7C065";
	setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide151";
	rename -uid "C51B010E-4180-EC64-6C01-C5949146C93E";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide150";
	rename -uid "7F39DB5F-4CB5-6512-E96B-42962BB9AF76";
	setAttr ".i2" -type "float3" 0.69999999 0.69999999 0.69999999 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide148";
	rename -uid "F09F3139-40FD-B671-E8DD-4AA92A0E47BF";
	setAttr ".i2" -type "float3" 0.30000001 0.30000001 0.30000001 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide147";
	rename -uid "7E671FB1-4360-1122-264F-6DBBBAA2E054";
	setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide149";
	rename -uid "74123903-46E4-A863-844A-D5AF957A6058";
	setAttr ".i2" -type "float3" 1.1 1.1 1.1 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide153";
	rename -uid "427BF1F2-4C48-6D4F-1CA8-A5A57CCCBE2D";
	setAttr ".i2" -type "float3" 0.69999999 0.69999999 0.69999999 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide152";
	rename -uid "3C82FEE3-4906-32E0-707B-72B85FFCE1C9";
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide145";
	rename -uid "0C5E290F-403B-84BA-3620-7F8F4A899385";
	setAttr ".i2" -type "float3" 8 -8 2 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide157";
	rename -uid "8C468252-4A27-D0AB-C216-B6B7FBFCB2F3";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide155";
	rename -uid "A566554F-4D64-59F0-59E0-1FA0D9EF9F29";
	setAttr ".i2" -type "float3" 0.69999999 0.69999999 0.69999999 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide158";
	rename -uid "2DB08753-4F99-522C-5DA1-BA8293B54F04";
	setAttr ".i2" -type "float3" 0.30000001 0.30000001 0.30000001 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide159";
	rename -uid "E1834459-4745-C935-D8B5-01A9BC675744";
	setAttr ".i2" -type "float3" 0.69999999 0.69999999 0.69999999 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide156";
	rename -uid "77DFD3C4-4208-2EBD-B2D1-AF841A4BB7F6";
	setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide154";
	rename -uid "EC8BC2A4-45BE-FC61-5072-479BDF6B4C93";
	setAttr ".i2" -type "float3" 1.1 1.1 1.1 ;
createNode multiplyDivide -n "ab_rig_C:pasted__multiplyDivide146";
	rename -uid "38752832-4D84-4B4B-4567-F9A79720ADE3";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode renderLayerManager -n "pasted__renderLayerManager";
	rename -uid "DB905273-401F-0270-0CA1-6589ADA90906";
createNode renderLayer -n "pasted__defaultRenderLayer";
	rename -uid "E2A0C3FC-428D-8F34-317A-019E08F7D522";
	setAttr ".g" yes;
createNode reference -n "pasted__ab_rig_CRN";
	rename -uid "E84B5F0E-47D6-4D3E-4837-14B58EE345A9";
	setAttr ".ed" -type "dataReferenceEdits" 
		"pasted__ab_rig_CRN"
		"ab_rig_CRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DE892211-44FD-9254-3527-65B27B9EC677";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "197A9859-448E-E9E3-5849-058FA67DDA25";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "9970B4CB-421C-175D-3E76-CD9B2DB53CAB";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "58C08503-4C76-2ADC-9B41-1993968A3DB9";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 39;
	setAttr -av -k on ".unw" 39;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rm";
	setAttr -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hom";
	setAttr -k on ".hodm";
	setAttr -k on ".xry";
	setAttr -k on ".jxr";
	setAttr -k on ".sslt";
	setAttr -k on ".cbr";
	setAttr -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -av -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -k on ".mbcsx";
	setAttr -k on ".mbcsy";
	setAttr -k on ".mbasx";
	setAttr -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -k on ".blth";
	setAttr -k on ".blfr";
	setAttr -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -k on ".aasq";
	setAttr -k on ".laa";
	setAttr -k on ".fprt" yes;
	setAttr -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 22 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 20 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 526 ".u";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".r";
select -ne :defaultTextureList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".tx";
lockNode -l 0 -lu 1;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -cb on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -cb on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
lockNode -l 0 -lu 1;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -k on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -k on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -k on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -k on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -k on ".ar";
	setAttr -av -k on ".fs" 1;
	setAttr -av -k on ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -av -k on ".me";
	setAttr -k on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -k on ".ofe";
	setAttr -k on ".efe";
	setAttr -k on ".oft";
	setAttr -k on ".umfn";
	setAttr -k on ".ufe";
	setAttr -av -k on ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -k on ".gv";
	setAttr -k on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -k on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -k on ".prm";
	setAttr -av -k on ".pom";
	setAttr -k on ".pfrm";
	setAttr -k on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -k on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -k on ".isl";
	setAttr -k on ".ism";
	setAttr -k on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -k on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -k on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -cb on ".hwcc";
	setAttr -av -cb on ".hwdp";
	setAttr -av -cb on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
select -ne :hyperGraphLayout;
	setAttr -s 3 ".hyp";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ab_rig_C:surfaceShader1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ab_rig_C:surfaceShader2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ab_rig_C:surfaceShader3SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ab_rig_C:surfaceShader4SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ab_rig_C:surfaceShader1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ab_rig_C:surfaceShader2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ab_rig_C:surfaceShader3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ab_rig_C:surfaceShader4SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ab_rig_C:renderLayerManager1.rlmi[0]" "ab_rig_C:defaultRenderLayer1.rlid"
		;
connectAttr "ab_rig_C:surfaceShader5.oc" "ab_rig_C:surfaceShader1SG1.ss";
connectAttr "ab_rig_C:surfaceShader1SG1.msg" "ab_rig_C:materialInfo5.sg";
connectAttr "ab_rig_C:surfaceShader5.msg" "ab_rig_C:materialInfo5.m";
connectAttr "ab_rig_C:surfaceShader5.msg" "ab_rig_C:materialInfo5.t" -na;
connectAttr "ab_rig_C:surfaceShader6.oc" "ab_rig_C:surfaceShader2SG1.ss";
connectAttr "ab_rig_C:surfaceShader2SG1.msg" "ab_rig_C:materialInfo6.sg";
connectAttr "ab_rig_C:surfaceShader6.msg" "ab_rig_C:materialInfo6.m";
connectAttr "ab_rig_C:surfaceShader6.msg" "ab_rig_C:materialInfo6.t" -na;
connectAttr "ab_rig_C:surfaceShader7.oc" "ab_rig_C:surfaceShader3SG1.ss";
connectAttr "ab_rig_C:surfaceShader3SG1.msg" "ab_rig_C:materialInfo7.sg";
connectAttr "ab_rig_C:surfaceShader7.msg" "ab_rig_C:materialInfo7.m";
connectAttr "ab_rig_C:surfaceShader7.msg" "ab_rig_C:materialInfo7.t" -na;
connectAttr "ab_rig_C:surfaceShader8.oc" "ab_rig_C:surfaceShader4SG1.ss";
connectAttr "ab_rig_C:surfaceShader4SG1.msg" "ab_rig_C:materialInfo8.sg";
connectAttr "ab_rig_C:surfaceShader8.msg" "ab_rig_C:materialInfo8.m";
connectAttr "ab_rig_C:surfaceShader8.msg" "ab_rig_C:materialInfo8.t" -na;
connectAttr "ab_rig_C:rig:blendColors21.op" "ab_rig_C:rig:blendColors23.c1";
connectAttr "ab_rig_C:rig:condition14.oc" "ab_rig_C:rig:blendColors21.c2";
connectAttr "ab_rig_C:rig:multiplyDivide110.o" "ab_rig_C:rig:blendColors21.c1";
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:condition14.ft";
connectAttr "ab_rig_C:rig:multiplyDivide106.o" "ab_rig_C:rig:condition14.ct";
connectAttr "ab_rig_C:rig:multiplyDivide106.i1" "ab_rig_C:rig:condition14.cf";
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:multiplyDivide106.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:multiplyDivide106.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:multiplyDivide106.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide109.ox" "ab_rig_C:rig:multiplyDivide110.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide109.ox" "ab_rig_C:rig:multiplyDivide110.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide109.ox" "ab_rig_C:rig:multiplyDivide110.i1z"
		;
connectAttr "ab_rig_C:rig:blendColors22.op" "ab_rig_C:rig:blendColors24.c1";
connectAttr "ab_rig_C:rig:condition15.oc" "ab_rig_C:rig:blendColors22.c2";
connectAttr "ab_rig_C:rig:multiplyDivide112.o" "ab_rig_C:rig:blendColors22.c1";
connectAttr "ab_rig_C:rig:multiplyDivide107.o" "ab_rig_C:rig:condition15.ct";
connectAttr "ab_rig_C:rig:multiplyDivide107.i1" "ab_rig_C:rig:condition15.cf";
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:condition15.ft";
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:multiplyDivide107.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:multiplyDivide107.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide108.ox" "ab_rig_C:rig:multiplyDivide107.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide111.ox" "ab_rig_C:rig:multiplyDivide112.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide111.ox" "ab_rig_C:rig:multiplyDivide112.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide111.ox" "ab_rig_C:rig:multiplyDivide112.i1z"
		;
connectAttr "ab_rig_C:rig:blendColors17.op" "ab_rig_C:rig:blendColors19.c1";
connectAttr "ab_rig_C:rig:condition12.oc" "ab_rig_C:rig:blendColors17.c2";
connectAttr "ab_rig_C:rig:multiplyDivide103.o" "ab_rig_C:rig:blendColors17.c1";
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:condition12.ft";
connectAttr "ab_rig_C:rig:multiplyDivide99.o" "ab_rig_C:rig:condition12.ct";
connectAttr "ab_rig_C:rig:multiplyDivide99.i1" "ab_rig_C:rig:condition12.cf";
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:multiplyDivide99.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:multiplyDivide99.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:multiplyDivide99.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide102.ox" "ab_rig_C:rig:multiplyDivide103.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide102.ox" "ab_rig_C:rig:multiplyDivide103.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide102.ox" "ab_rig_C:rig:multiplyDivide103.i1z"
		;
connectAttr "ab_rig_C:rig:blendColors18.op" "ab_rig_C:rig:blendColors20.c1";
connectAttr "ab_rig_C:rig:condition13.oc" "ab_rig_C:rig:blendColors18.c2";
connectAttr "ab_rig_C:rig:multiplyDivide105.o" "ab_rig_C:rig:blendColors18.c1";
connectAttr "ab_rig_C:rig:multiplyDivide100.o" "ab_rig_C:rig:condition13.ct";
connectAttr "ab_rig_C:rig:multiplyDivide100.i1" "ab_rig_C:rig:condition13.cf";
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:condition13.ft";
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:multiplyDivide100.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:multiplyDivide100.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide101.ox" "ab_rig_C:rig:multiplyDivide100.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide104.ox" "ab_rig_C:rig:multiplyDivide105.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide104.ox" "ab_rig_C:rig:multiplyDivide105.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide104.ox" "ab_rig_C:rig:multiplyDivide105.i1z"
		;
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide128.i1x";
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide128.i1y";
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide128.i1z";
connectAttr "ab_rig_C:rig:multiplyDivide127.ox" "ab_rig_C:rig:blendTwoAttr2.i[1]"
		;
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide129.i1x";
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide129.i1y";
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide129.i1z";
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide130.i1x";
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide130.i1y";
connectAttr "ab_rig_C:rig:blendTwoAttr2.o" "ab_rig_C:rig:multiplyDivide130.i1z";
connectAttr "ab_rig_C:rig:blendColors25.op" "ab_rig_C:rig:blendColors27.c1";
connectAttr "ab_rig_C:rig:condition16.oc" "ab_rig_C:rig:blendColors25.c2";
connectAttr "ab_rig_C:rig:multiplyDivide117.o" "ab_rig_C:rig:blendColors25.c1";
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:condition16.ft";
connectAttr "ab_rig_C:rig:multiplyDivide113.o" "ab_rig_C:rig:condition16.ct";
connectAttr "ab_rig_C:rig:multiplyDivide113.i1" "ab_rig_C:rig:condition16.cf";
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:multiplyDivide113.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:multiplyDivide113.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:multiplyDivide113.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide116.ox" "ab_rig_C:rig:multiplyDivide117.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide116.ox" "ab_rig_C:rig:multiplyDivide117.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide116.ox" "ab_rig_C:rig:multiplyDivide117.i1z"
		;
connectAttr "ab_rig_C:rig:blendColors26.op" "ab_rig_C:rig:blendColors28.c1";
connectAttr "ab_rig_C:rig:condition17.oc" "ab_rig_C:rig:blendColors26.c2";
connectAttr "ab_rig_C:rig:multiplyDivide119.o" "ab_rig_C:rig:blendColors26.c1";
connectAttr "ab_rig_C:rig:multiplyDivide114.o" "ab_rig_C:rig:condition17.ct";
connectAttr "ab_rig_C:rig:multiplyDivide114.i1" "ab_rig_C:rig:condition17.cf";
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:condition17.ft";
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:multiplyDivide114.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:multiplyDivide114.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide115.ox" "ab_rig_C:rig:multiplyDivide114.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide118.ox" "ab_rig_C:rig:multiplyDivide119.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide118.ox" "ab_rig_C:rig:multiplyDivide119.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide118.ox" "ab_rig_C:rig:multiplyDivide119.i1z"
		;
connectAttr "ab_rig_C:rig:blendColors29.op" "ab_rig_C:rig:blendColors31.c1";
connectAttr "ab_rig_C:rig:condition18.oc" "ab_rig_C:rig:blendColors29.c2";
connectAttr "ab_rig_C:rig:multiplyDivide124.o" "ab_rig_C:rig:blendColors29.c1";
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:condition18.ft";
connectAttr "ab_rig_C:rig:multiplyDivide120.o" "ab_rig_C:rig:condition18.ct";
connectAttr "ab_rig_C:rig:multiplyDivide120.i1" "ab_rig_C:rig:condition18.cf";
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:multiplyDivide120.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:multiplyDivide120.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:multiplyDivide120.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide123.ox" "ab_rig_C:rig:multiplyDivide124.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide123.ox" "ab_rig_C:rig:multiplyDivide124.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide123.ox" "ab_rig_C:rig:multiplyDivide124.i1z"
		;
connectAttr "ab_rig_C:rig:blendColors30.op" "ab_rig_C:rig:blendColors32.c1";
connectAttr "ab_rig_C:rig:condition19.oc" "ab_rig_C:rig:blendColors30.c2";
connectAttr "ab_rig_C:rig:multiplyDivide126.o" "ab_rig_C:rig:blendColors30.c1";
connectAttr "ab_rig_C:rig:multiplyDivide121.o" "ab_rig_C:rig:condition19.ct";
connectAttr "ab_rig_C:rig:multiplyDivide121.i1" "ab_rig_C:rig:condition19.cf";
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:condition19.ft";
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:multiplyDivide121.i2x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:multiplyDivide121.i2y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide122.ox" "ab_rig_C:rig:multiplyDivide121.i2z"
		;
connectAttr "ab_rig_C:rig:multiplyDivide125.ox" "ab_rig_C:rig:multiplyDivide126.i1x"
		;
connectAttr "ab_rig_C:rig:multiplyDivide125.ox" "ab_rig_C:rig:multiplyDivide126.i1y"
		;
connectAttr "ab_rig_C:rig:multiplyDivide125.ox" "ab_rig_C:rig:multiplyDivide126.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors21.op" "ab_rig_C:rig1:blendColors23.c1";
connectAttr "ab_rig_C:rig1:condition14.oc" "ab_rig_C:rig1:blendColors21.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide110.o" "ab_rig_C:rig1:blendColors21.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:condition14.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide106.o" "ab_rig_C:rig1:condition14.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide106.i1" "ab_rig_C:rig1:condition14.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:multiplyDivide106.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:multiplyDivide106.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:multiplyDivide106.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide109.ox" "ab_rig_C:rig1:multiplyDivide110.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide109.ox" "ab_rig_C:rig1:multiplyDivide110.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide109.ox" "ab_rig_C:rig1:multiplyDivide110.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors22.op" "ab_rig_C:rig1:blendColors24.c1";
connectAttr "ab_rig_C:rig1:condition15.oc" "ab_rig_C:rig1:blendColors22.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide112.o" "ab_rig_C:rig1:blendColors22.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide107.o" "ab_rig_C:rig1:condition15.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide107.i1" "ab_rig_C:rig1:condition15.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:condition15.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:multiplyDivide107.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:multiplyDivide107.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide108.ox" "ab_rig_C:rig1:multiplyDivide107.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide111.ox" "ab_rig_C:rig1:multiplyDivide112.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide111.ox" "ab_rig_C:rig1:multiplyDivide112.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide111.ox" "ab_rig_C:rig1:multiplyDivide112.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors17.op" "ab_rig_C:rig1:blendColors19.c1";
connectAttr "ab_rig_C:rig1:condition12.oc" "ab_rig_C:rig1:blendColors17.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide103.o" "ab_rig_C:rig1:blendColors17.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:condition12.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide99.o" "ab_rig_C:rig1:condition12.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide99.i1" "ab_rig_C:rig1:condition12.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:multiplyDivide99.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:multiplyDivide99.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:multiplyDivide99.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide102.ox" "ab_rig_C:rig1:multiplyDivide103.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide102.ox" "ab_rig_C:rig1:multiplyDivide103.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide102.ox" "ab_rig_C:rig1:multiplyDivide103.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors18.op" "ab_rig_C:rig1:blendColors20.c1";
connectAttr "ab_rig_C:rig1:condition13.oc" "ab_rig_C:rig1:blendColors18.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide105.o" "ab_rig_C:rig1:blendColors18.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide100.o" "ab_rig_C:rig1:condition13.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide100.i1" "ab_rig_C:rig1:condition13.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:condition13.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:multiplyDivide100.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:multiplyDivide100.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide101.ox" "ab_rig_C:rig1:multiplyDivide100.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide104.ox" "ab_rig_C:rig1:multiplyDivide105.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide104.ox" "ab_rig_C:rig1:multiplyDivide105.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide104.ox" "ab_rig_C:rig1:multiplyDivide105.i1z"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide128.i1x"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide128.i1y"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide128.i1z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide127.ox" "ab_rig_C:rig1:blendTwoAttr2.i[1]"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide129.i1x"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide129.i1y"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide129.i1z"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide130.i1x"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide130.i1y"
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.o" "ab_rig_C:rig1:multiplyDivide130.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors25.op" "ab_rig_C:rig1:blendColors27.c1";
connectAttr "ab_rig_C:rig1:condition16.oc" "ab_rig_C:rig1:blendColors25.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide117.o" "ab_rig_C:rig1:blendColors25.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:condition16.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide113.o" "ab_rig_C:rig1:condition16.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide113.i1" "ab_rig_C:rig1:condition16.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:multiplyDivide113.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:multiplyDivide113.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:multiplyDivide113.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide116.ox" "ab_rig_C:rig1:multiplyDivide117.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide116.ox" "ab_rig_C:rig1:multiplyDivide117.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide116.ox" "ab_rig_C:rig1:multiplyDivide117.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors26.op" "ab_rig_C:rig1:blendColors28.c1";
connectAttr "ab_rig_C:rig1:condition17.oc" "ab_rig_C:rig1:blendColors26.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide119.o" "ab_rig_C:rig1:blendColors26.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide114.o" "ab_rig_C:rig1:condition17.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide114.i1" "ab_rig_C:rig1:condition17.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:condition17.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:multiplyDivide114.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:multiplyDivide114.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide115.ox" "ab_rig_C:rig1:multiplyDivide114.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide118.ox" "ab_rig_C:rig1:multiplyDivide119.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide118.ox" "ab_rig_C:rig1:multiplyDivide119.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide118.ox" "ab_rig_C:rig1:multiplyDivide119.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors29.op" "ab_rig_C:rig1:blendColors31.c1";
connectAttr "ab_rig_C:rig1:condition18.oc" "ab_rig_C:rig1:blendColors29.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide124.o" "ab_rig_C:rig1:blendColors29.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:condition18.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide120.o" "ab_rig_C:rig1:condition18.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide120.i1" "ab_rig_C:rig1:condition18.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:multiplyDivide120.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:multiplyDivide120.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:multiplyDivide120.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide123.ox" "ab_rig_C:rig1:multiplyDivide124.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide123.ox" "ab_rig_C:rig1:multiplyDivide124.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide123.ox" "ab_rig_C:rig1:multiplyDivide124.i1z"
		;
connectAttr "ab_rig_C:rig1:blendColors30.op" "ab_rig_C:rig1:blendColors32.c1";
connectAttr "ab_rig_C:rig1:condition19.oc" "ab_rig_C:rig1:blendColors30.c2";
connectAttr "ab_rig_C:rig1:multiplyDivide126.o" "ab_rig_C:rig1:blendColors30.c1"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide121.o" "ab_rig_C:rig1:condition19.ct";
connectAttr "ab_rig_C:rig1:multiplyDivide121.i1" "ab_rig_C:rig1:condition19.cf";
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:condition19.ft";
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:multiplyDivide121.i2x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:multiplyDivide121.i2y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide122.ox" "ab_rig_C:rig1:multiplyDivide121.i2z"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide125.ox" "ab_rig_C:rig1:multiplyDivide126.i1x"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide125.ox" "ab_rig_C:rig1:multiplyDivide126.i1y"
		;
connectAttr "ab_rig_C:rig1:multiplyDivide125.ox" "ab_rig_C:rig1:multiplyDivide126.i1z"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide121.o" "ab_rig_C:pasted__plusMinusAverage53.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide140.o" "ab_rig_C:pasted__plusMinusAverage53.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide124.o" "ab_rig_C:pasted__plusMinusAverage56.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide139.o" "ab_rig_C:pasted__plusMinusAverage56.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide123.o" "ab_rig_C:pasted__plusMinusAverage54.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide138.o" "ab_rig_C:pasted__plusMinusAverage54.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide122.o" "ab_rig_C:pasted__plusMinusAverage55.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide137.o" "ab_rig_C:pasted__plusMinusAverage55.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide129.o" "ab_rig_C:pasted__plusMinusAverage62.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide140.o" "ab_rig_C:pasted__plusMinusAverage62.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide130.o" "ab_rig_C:pasted__plusMinusAverage61.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide139.o" "ab_rig_C:pasted__plusMinusAverage61.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide131.o" "ab_rig_C:pasted__plusMinusAverage63.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide138.o" "ab_rig_C:pasted__plusMinusAverage63.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide132.o" "ab_rig_C:pasted__plusMinusAverage66.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide137.o" "ab_rig_C:pasted__plusMinusAverage66.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide125.o" "ab_rig_C:pasted__plusMinusAverage57.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide144.o" "ab_rig_C:pasted__plusMinusAverage57.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide126.o" "ab_rig_C:pasted__plusMinusAverage58.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide143.o" "ab_rig_C:pasted__plusMinusAverage58.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide127.o" "ab_rig_C:pasted__plusMinusAverage59.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide141.o" "ab_rig_C:pasted__plusMinusAverage59.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide128.o" "ab_rig_C:pasted__plusMinusAverage60.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide142.o" "ab_rig_C:pasted__plusMinusAverage60.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide133.o" "ab_rig_C:pasted__plusMinusAverage68.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide142.o" "ab_rig_C:pasted__plusMinusAverage68.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide134.o" "ab_rig_C:pasted__plusMinusAverage65.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide141.o" "ab_rig_C:pasted__plusMinusAverage65.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide135.o" "ab_rig_C:pasted__plusMinusAverage67.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide143.o" "ab_rig_C:pasted__plusMinusAverage67.i3[1]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide136.o" "ab_rig_C:pasted__plusMinusAverage64.i3[0]"
		;
connectAttr "ab_rig_C:pasted__multiplyDivide144.o" "ab_rig_C:pasted__plusMinusAverage64.i3[1]"
		;
connectAttr "pasted__renderLayerManager.rlmi[0]" "pasted__defaultRenderLayer.rlid"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "ab_rig_C:surfaceShader1SG1.pa" ":renderPartition.st" -na;
connectAttr "ab_rig_C:surfaceShader2SG1.pa" ":renderPartition.st" -na;
connectAttr "ab_rig_C:surfaceShader3SG1.pa" ":renderPartition.st" -na;
connectAttr "ab_rig_C:surfaceShader4SG1.pa" ":renderPartition.st" -na;
connectAttr "ab_rig_C:surfaceShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "ab_rig_C:surfaceShader6.msg" ":defaultShaderList1.s" -na;
connectAttr "ab_rig_C:surfaceShader7.msg" ":defaultShaderList1.s" -na;
connectAttr "ab_rig_C:surfaceShader8.msg" ":defaultShaderList1.s" -na;
connectAttr "ab_rig_C:rig:multiplyDivide99.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig:multiplyDivide100.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide101.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:condition12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:condition13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide102.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide103.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide104.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide105.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:blendColors17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide106.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide107.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide108.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:condition14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:condition15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide109.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide110.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide111.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide112.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:blendColors21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide113.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide114.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide115.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:condition16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:condition17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide116.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide117.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide118.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide119.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:blendColors25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide120.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide121.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide122.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:condition18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:condition19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide123.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide124.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide125.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide126.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:blendColors29.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors30.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors31.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendColors32.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:blendTwoAttr2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig:multiplyDivide127.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide128.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide129.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide130.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide131.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide132.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide133.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide134.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide135.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide136.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide137.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide138.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide139.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide140.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide141.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide142.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide143.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide144.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide145.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide146.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide147.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide148.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide149.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide150.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide151.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide152.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide153.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide154.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide155.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide156.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide157.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide158.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide159.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide160.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide161.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide162.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide163.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide164.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide165.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide166.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide167.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide168.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide169.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig:multiplyDivide170.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig1:multiplyDivide99.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ab_rig_C:rig1:multiplyDivide100.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide101.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:condition12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:condition13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:multiplyDivide102.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide103.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide104.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide105.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:blendColors17.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors18.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors19.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors20.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:multiplyDivide106.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide107.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide108.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:condition14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:condition15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:multiplyDivide109.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide110.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide111.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide112.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:blendColors21.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors22.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors23.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors24.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:multiplyDivide113.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide114.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide115.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:condition16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:condition17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:multiplyDivide116.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide117.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide118.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide119.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:blendColors25.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors26.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors27.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors28.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:multiplyDivide120.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide121.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide122.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:condition18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:condition19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ab_rig_C:rig1:multiplyDivide123.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide124.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide125.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide126.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:blendColors29.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors30.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors31.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendColors32.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:blendTwoAttr2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ab_rig_C:rig1:multiplyDivide127.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide128.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide129.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide130.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide131.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide132.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide133.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide134.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide135.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide136.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide137.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide138.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide139.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide140.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide141.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide142.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide143.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide144.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide145.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide146.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide147.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide148.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide149.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide150.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide151.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide152.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide153.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide154.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide155.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide156.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide157.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide158.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide159.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide160.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide161.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide162.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide163.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide164.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide165.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide166.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide167.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide168.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide169.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:rig1:multiplyDivide170.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage53.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage54.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage55.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage56.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide121.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide122.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide123.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide124.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide125.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide126.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide127.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide128.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage57.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage58.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage59.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage60.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage61.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage62.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage63.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage64.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage65.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage66.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage67.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__plusMinusAverage68.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide129.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide130.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide131.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide132.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide133.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide134.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide135.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide136.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide137.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide138.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide139.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide140.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide141.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide142.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide143.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide144.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide145.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide146.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide147.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide148.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide149.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide150.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide151.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide152.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide153.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide154.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide155.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide156.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide157.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide158.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide159.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ab_rig_C:pasted__multiplyDivide160.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ab_rig_C:defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
// End of ab_rig_C_template.ma
