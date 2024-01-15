//Maya ASCII 2023 scene
//Name: ab_rig_C_status_02_lp.ma
//Last modified: Tue, Jan 09, 2024 12:45:42 PM
//Codeset: 932
file -rdi 1 -ns "ab_rig_C" -rfn "ab_rig_CRN" -op "v=0;" -typ "mayaAscii" "D:/ab_rig_C//rig/ab_rig_C.ma";
file -r -ns "ab_rig_C" -dr 1 -rfn "ab_rig_CRN" -op "v=0;" -typ "mayaAscii" "D:/ab_rig_C//rig/ab_rig_C.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "Mayatomr" "10.0.1.8m - 3.7.1.26 ";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "771C217F-42C4-6E1D-09D3-939604E05D92";
createNode transform -s -n "persp";
	rename -uid "D0649C82-4A60-4979-0DB7-D3B196A21C5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 254.54640070804552 74.731903793593261 353.0979896104057 ;
	setAttr ".r" -type "double3" -6.9383527297271534 -682.19999999997299 5.031535951252751e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96E7F23D-4D3C-11DC-3540-E79848F298EB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".coi" 418.79722515594;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.0034308543872754 35.498459400914896 26.8881602419575 ;
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
	setAttr ".t" -type "double3" 0 26.923316779522867 1000.5362071256782 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2856F259-4D84-67C0-5C3F-2C9E665BBE04";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.5362071256782;
	setAttr ".ow" 380.16282538631737;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 26.923316779522867 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "987E574B-4516-EB42-833C-F4AFA5831738";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.4433210344689 26.207415028523457 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C019F091-45A6-600E-431D-FF84BDC50775";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.4433210344689;
	setAttr ".ow" 281.80798867219738;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 26.207415028523457 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "slime_picker";
	rename -uid "0920CA45-4D97-A780-6AD1-588B462EF48E";
	addAttr -ci true -sn "isARSPicker" -ln "isARSPicker" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pickerData" -ln "pickerData" -dt "string";
	addAttr -ci true -sn "assetName" -ln "assetName" -dt "string";
	addAttr -ci true -sn "targetNamespace" -ln "targetNamespace" -dt "string";
	addAttr -ci true -sn "pickerVersion" -ln "pickerVersion" -at "double";
	setAttr -l on ".isARSPicker" yes;
	setAttr ".pickerData" -type "string" (
		"{\"background\": [[\"image\", \"picker/slime.png\", null, [0, 0], [1200, 700], \"D:/ab_rig_C/picker/slime.png\"]], \"item_data\": [{\"item_id\": 0, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 0, 255], \"position\": [-200.0, -350.0], \"size\": [100, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 1, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_Root_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 170, 0, 255], \"position\": [-200.0, 350.0], \"size\": [200, 40], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 2, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper_option\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-610.0, -190.0], \"size\": [100, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 3, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_middle_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 4, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_eye_sub\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [330.0, 0.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 5, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under\", \"shape_type\": \"triangle\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, 200.0], \"size\": [80, 80], \"orient\": 180, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 6, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_sub_under\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [400.0, 70.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 7, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 8, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_middle_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [0.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 9, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_Root_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 170, 0, 255], \"position\": [-200.0, 290.0], \"size\": [100, 30], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 10, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper\", \"shape_type\": \"triangle\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, -260.0], \"size\": [80, 80], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 11, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [-200.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 12, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under_option\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-610.0, 120.0], \"size\": [100, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 13, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_middle_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-500.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 14, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_under_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [200.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 15, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_under_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-500.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 16, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_eye_sub\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [470.0, 0.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 17, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_sub_upper\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [400.0, -70.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 18, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_middle_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-300.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 19, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_upper_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [0.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 20, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_upper_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-400.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 21, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_under_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-400.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 22, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_middle_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [100.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 23, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [85, 85, 127, 255], \"position\": [400.0, 0.0], \"size\": [70, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 24, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_middle_option\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-610.0, -40.0], \"size\": [100, 70], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 25, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_under_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [-100.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 26, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_upper_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [200.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 27, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_upper_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [100.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 28, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_body_middle_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 255, 127, 255], \"position\": [200.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 29, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_under_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [0.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 30, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_root\", \"shape_type\": \"donutSquare\", \"custom_shape_data\": {}, \"color\": [255, 255, 255, 255], \"position\": [400.0, 0.0], \"size\": [300, 300], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 31, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_under_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [100.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 32, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_upper_003\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-500.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 33, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_middle_002\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-400.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 34, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_under_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-300.0, 120.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 35, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_R_body_upper_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [255, 0, 0, 255], \"position\": [-300.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 36, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_upper_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [-100.0, -190.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 37, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_L_body_middle_001\", \"shape_type\": \"square\", \"custom_shape_data\": {}, \"color\": [0, 0, 255, 255], \"position\": [-100.0, -40.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 39, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-707.4222892989293, -474.54976495673407], \"size\": [60, 40], \"orient\": 0, \"label\": \"GEO\", \"label_color\": [0, 0, 0, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -polymeshes $panel` == 1) {\\n        modelEditor -e -polymeshes 0 $panel;\\n    } else {\\n        modelEditor -e -polymeshes 1 $panel;\\n    }\\n}\\n\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 32.467140818796565]}, {\"item_id\": 40, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [170, 0, 255, 255], \"position\": [-707.4222892989293, -232.2709923707007], \"size\": [60, 40], \"orient\": 0, \"label\": \"CTRL\", \"label_color\": [255, 255, 255, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -nurbsCurves $panel` == 1) {\\n        modelEditor -e -nurbsCurves 0 $panel;\\n    } else {\\n        modelEditor -e -nurbsCurves 1 $panel;\\n    }\\n}\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 173.6494712077638]}, {\"item_id\": 41, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-707.4222892989293, -313.0305832327118], \"size\": [60, 40], \"orient\": 0, \"label\": \"Grid\", \"label_color\": [0, 0, 0, 255], \"script_type\": 1, \"scriptStr\": \"ToggleGrid;\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 126.58869441144138]}, {\"item_id\": 42, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [255, 170, 0, 255], \"position\": [-707.4222892989293, -393.79017409472294], \"size\": [60, 40], \"orient\": 0, \"label\": \"Xray\", \"label_color\": [0, 0, 0, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -xray $panel`) {\\n        modelEditor -e -xray false $panel;\\n    } else {\\n        modelEditor -e -xray true $panel;\\n    }\\n}\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 79.52791761511898]}, {\"item_id\": 43, \"page\": 1, \"object_type\": 0, \"objects\": \"\", \"shape_type\": \"tab\", \"custom_shape_data\": {}, \"color\": [170, 0, 255, 255], \"position\": [-707.4222892989293, -151.51140150868957], \"size\": [60, 40], \"orient\": 0, \"label\": \"Shade\\u21d4Wire\", \"label_color\": [255, 255, 255, 255], \"script_type\": 1, \"scriptStr\": \"string $panels[] = `getPanel -type \\\"modelPanel\\\"`;\\nfor ($panel in $panels) {\\n    if (`modelEditor -q -displayAppearance $panel` == \\\"smoothShaded\\\") {\\n        modelEditor -e -displayAppearance \\\"wireframe\\\" -wireframeOnShaded true $panel;\\n    } else {\\n        modelEditor -e -displayAppearance \\\"smoothShaded\\\" -wireframeOnShaded false $panel;\\n    }\\n}\\n\", \"exclude_drag\": true, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": 1, \"fixPos\": [41.76608323432416, 220.71024800408622]}, {\"item_id\": 44, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_Other\", \"shape_type\": \"gear\", \"custom_shape_data\": {}, \"color\": [199, 0, 199, 255], \"position\": [390.0, 270.0], \"size\": [40, 40], \"orient\": 0, \"label\": \"Other\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 45, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_pupil_guruguru\", \"shape_type\": \"donut\", \"custom_shape_data\": {}, \"color\": [255, 85, 127, 255], \"position\": [330.0, -70.0], \"size\": [20, 20], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 47, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_ctrl_b\", \"shape_type\": \"rotate\", \"custom_shape_data\": {}, \"color\": [0, 255, 255, 255], \"position\": [360.0, -230.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 48, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_eye_ctrl_a\", \"shape_type\": \"rotateB\", \"custom_shape_data\": {}, \"color\": [0, 255, 255, 255], \"position\": [430.0, -230.0], \"size\": [50, 50], \"orient\": 90, \"label\": \"\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}, {\"item_id\": 49, \"page\": 1, \"object_type\": 0, \"objects\": \"Rig_C_Root_001,Rig_C_Root_002,Rig_C_eye_ctrl_b,Rig_C_body_under_option,Rig_C_body_upper_001,Rig_L_body_middle_001,Rig_C_body_middle_option,Rig_R_body_middle_002,Rig_R_body_middle_001,Rig_C_body_upper,Rig_R_body_upper_002,Rig_R_body_upper_001,Rig_C_body_under_002,Rig_L_body_middle_003,Rig_R_body_under_003,Rig_C_body_middle_002,Rig_R_eye_sub,Rig_C_eye,Rig_C_body_under_001,Rig_C_body_upper_option,Rig_L_eye_sub,Rig_C_eye_root,Rig_R_body_upper_003,Rig_C_eye_sub_upper,Rig_R_body_middle_003,Rig_C_body,Rig_C_body_under,Rig_L_body_upper_003,Rig_C_body_middle_001,Rig_C_body_upper_002,Rig_L_body_under_001,Rig_C_eye_ctrl_a,Rig_L_body_middle_002,Rig_C_pupil_guruguru,Rig_L_body_upper_002,Rig_L_body_under_002,Rig_R_body_under_001,Rig_L_body_upper_001,Rig_L_body_under_003,Rig_Other,Rig_C_eye_sub_under,Rig_R_body_under_002\", \"shape_type\": \"gear\", \"custom_shape_data\": {}, \"color\": [0, 170, 0, 255], \"position\": [510.0, 270.0], \"size\": [50, 50], \"orient\": 0, \"label\": \"ALL\", \"label_color\": [255, 255, 255, 255], \"script_type\": 0, \"scriptStr\": \"\", \"exclude_drag\": false, \"ignore_namespace\": false, \"is_label\": false, \"fixTo\": null}]}");
	setAttr ".targetNamespace" -type "string" "ab_rig_C";
	setAttr ".pickerVersion" 3;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F1D68D4B-49AD-E818-FEAC-9DB18A663193";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "07EDF7A6-4A5F-F649-5631-E8841BDBDA28";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "37B8479F-4CF9-88C3-F0A7-EFBBE2235EDE";
createNode displayLayerManager -n "layerManager";
	rename -uid "368F1D24-4A4A-2F03-375C-958D275297B6";
	setAttr -s 3 ".dli[1:2]"  6 7;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "37768B2F-400D-6865-DC0C-0089D4A73C61";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B960507D-488B-D189-C516-EEB68389133F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "415A2A73-47B3-288C-ED2C-43B0E59FFE8A";
	setAttr ".g" yes;
createNode reference -n "ab_rig_CRN";
	rename -uid "CE59F228-4F72-FB25-4DDD-9593A14AF84B";
	setAttr -s 235 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_CRN"
		"ab_rig_CRN" 0
		"ab_rig_CRN" 247
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other" 
		"eye_type" " -k 1"
		2 "|ab_rig_C:All_Grp|ab_rig_C:sine" "visibility" " 1"
		2 "|ab_rig_C:All_Grp|ab_rig_C:sine|ab_rig_C:group1" "visibility" " 0"
		2 "ab_rig_C:JNT_L" "visibility" " 1"
		2 "ab_rig_C:GEO_L" "visibility" " 1"
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateX" 
		"ab_rig_CRN.placeHolderList[1]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateY" 
		"ab_rig_CRN.placeHolderList[2]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateX" 
		"ab_rig_CRN.placeHolderList[4]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateY" 
		"ab_rig_CRN.placeHolderList[5]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[6]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.scaleX" 
		"ab_rig_CRN.placeHolderList[7]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.scaleY" 
		"ab_rig_CRN.placeHolderList[8]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.scaleZ" 
		"ab_rig_CRN.placeHolderList[9]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateX" 
		"ab_rig_CRN.placeHolderList[10]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateY" 
		"ab_rig_CRN.placeHolderList[11]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateZ" 
		"ab_rig_CRN.placeHolderList[12]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateX" 
		"ab_rig_CRN.placeHolderList[13]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateY" 
		"ab_rig_CRN.placeHolderList[14]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[15]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateX" 
		"ab_rig_CRN.placeHolderList[16]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateY" 
		"ab_rig_CRN.placeHolderList[17]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateZ" 
		"ab_rig_CRN.placeHolderList[18]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateX" 
		"ab_rig_CRN.placeHolderList[19]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateY" 
		"ab_rig_CRN.placeHolderList[20]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateZ" 
		"ab_rig_CRN.placeHolderList[21]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateX" 
		"ab_rig_CRN.placeHolderList[22]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateY" 
		"ab_rig_CRN.placeHolderList[23]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateZ" 
		"ab_rig_CRN.placeHolderList[24]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateX" 
		"ab_rig_CRN.placeHolderList[25]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateY" 
		"ab_rig_CRN.placeHolderList[26]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[27]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleX" 
		"ab_rig_CRN.placeHolderList[28]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleY" 
		"ab_rig_CRN.placeHolderList[29]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[30]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[31]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[32]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[33]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[34]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[35]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[36]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[37]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[38]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[39]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[40]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[41]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[42]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[43]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[44]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[45]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[46]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[47]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[48]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[49]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[50]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[51]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[52]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[53]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[54]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateX" 
		"ab_rig_CRN.placeHolderList[55]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateY" 
		"ab_rig_CRN.placeHolderList[56]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateZ" 
		"ab_rig_CRN.placeHolderList[57]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateX" 
		"ab_rig_CRN.placeHolderList[58]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateY" 
		"ab_rig_CRN.placeHolderList[59]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[60]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[61]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[62]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[63]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[64]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[65]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[66]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[67]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[68]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[69]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[70]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[71]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[72]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateX" 
		"ab_rig_CRN.placeHolderList[73]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateY" 
		"ab_rig_CRN.placeHolderList[74]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateZ" 
		"ab_rig_CRN.placeHolderList[75]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateX" 
		"ab_rig_CRN.placeHolderList[76]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateY" 
		"ab_rig_CRN.placeHolderList[77]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[78]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateX" 
		"ab_rig_CRN.placeHolderList[79]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateY" 
		"ab_rig_CRN.placeHolderList[80]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateZ" 
		"ab_rig_CRN.placeHolderList[81]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateX" 
		"ab_rig_CRN.placeHolderList[82]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateY" 
		"ab_rig_CRN.placeHolderList[83]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[84]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleX" 
		"ab_rig_CRN.placeHolderList[85]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleY" 
		"ab_rig_CRN.placeHolderList[86]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[87]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[88]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[89]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[90]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[91]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[92]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[93]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[94]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[95]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[96]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[97]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[98]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[99]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[100]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[101]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[102]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[103]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[104]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[105]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[106]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[107]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[108]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[109]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[110]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[111]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateX" 
		"ab_rig_CRN.placeHolderList[112]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateY" 
		"ab_rig_CRN.placeHolderList[113]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateZ" 
		"ab_rig_CRN.placeHolderList[114]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateX" 
		"ab_rig_CRN.placeHolderList[115]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateY" 
		"ab_rig_CRN.placeHolderList[116]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[117]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[118]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[119]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[120]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[121]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[122]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[123]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[124]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[125]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[126]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[127]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[128]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[129]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateX" 
		"ab_rig_CRN.placeHolderList[130]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateY" 
		"ab_rig_CRN.placeHolderList[131]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateZ" 
		"ab_rig_CRN.placeHolderList[132]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateX" 
		"ab_rig_CRN.placeHolderList[133]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateY" 
		"ab_rig_CRN.placeHolderList[134]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[135]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateX" 
		"ab_rig_CRN.placeHolderList[136]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateY" 
		"ab_rig_CRN.placeHolderList[137]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateZ" 
		"ab_rig_CRN.placeHolderList[138]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateX" 
		"ab_rig_CRN.placeHolderList[139]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateY" 
		"ab_rig_CRN.placeHolderList[140]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateZ" 
		"ab_rig_CRN.placeHolderList[141]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateX" 
		"ab_rig_CRN.placeHolderList[142]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateY" 
		"ab_rig_CRN.placeHolderList[143]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateZ" 
		"ab_rig_CRN.placeHolderList[144]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateX" 
		"ab_rig_CRN.placeHolderList[145]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateY" 
		"ab_rig_CRN.placeHolderList[146]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[147]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleX" 
		"ab_rig_CRN.placeHolderList[148]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleY" 
		"ab_rig_CRN.placeHolderList[149]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[150]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[151]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[152]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[153]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[154]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[155]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[156]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[157]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[158]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[159]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[160]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[161]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[162]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[163]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[164]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[165]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[166]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[167]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[168]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[169]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[170]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[171]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[172]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[173]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[174]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateX" 
		"ab_rig_CRN.placeHolderList[175]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateY" 
		"ab_rig_CRN.placeHolderList[176]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateZ" 
		"ab_rig_CRN.placeHolderList[177]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateX" 
		"ab_rig_CRN.placeHolderList[178]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateY" 
		"ab_rig_CRN.placeHolderList[179]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[180]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[181]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[182]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[183]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[184]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[185]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[186]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[187]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[188]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[189]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[190]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[191]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[192]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateX" 
		"ab_rig_CRN.placeHolderList[193]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateY" 
		"ab_rig_CRN.placeHolderList[194]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateZ" 
		"ab_rig_CRN.placeHolderList[195]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateX" 
		"ab_rig_CRN.placeHolderList[196]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateY" 
		"ab_rig_CRN.placeHolderList[197]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[198]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateX" 
		"ab_rig_CRN.placeHolderList[199]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateY" 
		"ab_rig_CRN.placeHolderList[200]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateZ" 
		"ab_rig_CRN.placeHolderList[201]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateX" 
		"ab_rig_CRN.placeHolderList[202]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateY" 
		"ab_rig_CRN.placeHolderList[203]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateZ" 
		"ab_rig_CRN.placeHolderList[204]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b.rotateY" 
		"ab_rig_CRN.placeHolderList[205]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a.translateZ" 
		"ab_rig_CRN.placeHolderList[206]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a.rotateX" 
		"ab_rig_CRN.placeHolderList[207]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.vis" 
		"ab_rig_CRN.placeHolderList[208]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.body_option_parent" 
		"ab_rig_CRN.placeHolderList[209]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateX" 
		"ab_rig_CRN.placeHolderList[210]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateY" 
		"ab_rig_CRN.placeHolderList[211]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateZ" 
		"ab_rig_CRN.placeHolderList[212]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateX" 
		"ab_rig_CRN.placeHolderList[213]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateY" 
		"ab_rig_CRN.placeHolderList[214]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateZ" 
		"ab_rig_CRN.placeHolderList[215]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleX" 
		"ab_rig_CRN.placeHolderList[216]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleY" 
		"ab_rig_CRN.placeHolderList[217]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleZ" 
		"ab_rig_CRN.placeHolderList[218]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[219]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[220]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[221]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[222]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[223]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[224]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[225]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[226]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[227]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[228]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[229]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[230]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:group2|ab_rig_C:Rig_C_pupil_guruguru.rotateZ" 
		"ab_rig_CRN.placeHolderList[231]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_tre" 
		"ab_rig_CRN.placeHolderList[232]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_strength" 
		"ab_rig_CRN.placeHolderList[233]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.eye_type" 
		"ab_rig_CRN.placeHolderList[234]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.color" 
		"ab_rig_CRN.placeHolderList[235]" "";
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
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 450\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n"
		+ "            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 450\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 0.296542\n                -animateTransition 0\n"
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
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n"
		+ "            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 500 -size 1200 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C93251DA-4DE1-3E81-3045-E1A6462E582D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 59 -ast -60 -aet 75 ";
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
createNode displayLayer -n "ab_rig_C:JNT_L1";
	rename -uid "3297FDFF-4D0D-BB07-56CA-3BAF11FE6FD8";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "ab_rig_C:GEO_L1";
	rename -uid "3F41BD18-4355-7F94-64F4-379060874F87";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
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
createNode animCurveTL -n "Rig_C_body_translateX";
	rename -uid "4AE43F4A-481C-038D-DFAC-8ABEBDF9D286";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_translateY";
	rename -uid "7246C111-4017-A8AD-DD45-D9B4D150BCC3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_translateZ";
	rename -uid "4A5256EA-4F9E-FB3F-0956-419AC3DC01B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_rotateX";
	rename -uid "31491BC1-4A5E-4C6C-3A67-A49AD3762EF2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_rotateY";
	rename -uid "BC2616DA-46B7-6A4B-64EF-06ACEFA68DAA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_rotateZ";
	rename -uid "98687995-4AE3-A27B-1F04-2FB51732426B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_Root_001_translateX";
	rename -uid "A7DC08FB-4714-8F8D-8A4F-3F898028F09C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_Root_001_translateY";
	rename -uid "D96F977A-4499-84C5-449E-BFA40D708539";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_Root_001_translateZ";
	rename -uid "B0FD3822-476D-31AB-636B-C4A5552CE12D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateX";
	rename -uid "70DB4C5C-4FE5-A9DA-6969-6F9D737A979D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateY";
	rename -uid "1B0973FD-4893-8CC2-D3B6-DD8C82AF1C69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateZ";
	rename -uid "93724C05-4921-96A5-5053-A7B37687D2F7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_Root_001_scaleX";
	rename -uid "3B54AA32-44EB-859A-D430-52BFCA6743E0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_Root_001_scaleY";
	rename -uid "1D7DC727-43FB-CC89-96C6-DD909C64F54A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_Root_001_scaleZ";
	rename -uid "1930F610-4148-C871-2834-7082742046CA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateX";
	rename -uid "4DAD9164-42CE-618B-DA3F-85B90E568BD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateY";
	rename -uid "34D2AD7C-4699-2C29-C433-77A89255C16D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.3660564564748627 5 -1.7906755991598686
		 20 3.5514003893013921 33 4.9402884010588961 45 -0.77763948888356627 60 -2.3660564564748627;
	setAttr -s 6 ".kix[0:5]"  0.58638153155462058 0.11200116612445143 
		0.12785143797949938 0.18192789403896992 0.12685955009368835 0.58630075949305693;
	setAttr -s 6 ".kiy[0:5]"  -0.81003499890539143 0.99370807523475568 
		0.99179333018859039 -0.98331187390905916 -0.99192068964712443 -0.81009346338423471;
	setAttr -s 6 ".kox[0:5]"  0.58654993298576774 0.11208256409841805 
		0.12785143797949938 0.18192789403896992 0.12668699741376199 0.58638153155462081;
	setAttr -s 6 ".koy[0:5]"  -0.80991306701052268 0.99369889746598994 
		0.99179333018859039 -0.98331187390905916 -0.99194274264510118 -0.81003499890539132;
createNode animCurveTL -n "Rig_C_body_upper_option_translateZ";
	rename -uid "243F249D-4F96-2D4A-DCEA-2EA0BDB154F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.2762792151154345 10 -4.9144188226731522
		 40 1.4041196636209001 60 -3.2762792151154345;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  -5.6164786544836032 0 0 -5.6164786544836032;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  -2.8082393272418016 0 0 -2.8082393272418016;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateX";
	rename -uid "4DA2B08B-4CE2-680F-F2AD-18A35292C638";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.2416171540448282 10 -10.881927393061982
		 40 3.1592692431470248 60 -7.2416171540448282;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  -0.21783565530826629 0 0 -0.21783565530826629;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  -0.10891782765413319 0 0 -0.10891782765413319;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateY";
	rename -uid "BAB2E422-434A-A7E6-C6C3-6BBBDE7972AD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateZ";
	rename -uid "202964BD-430C-C032-61B4-A8BAD20CB645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleX";
	rename -uid "301E75C8-4845-7F12-A26C-4A82CFE01DFB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1090896351909225 7 1.0992327764965455
		 20 0.99059732620765018 33 0.97495763755640041 47 1.0807495080905241 60 1.1090896351909225;
	setAttr -s 6 ".kix[0:5]"  0.99968251893112148 0.9845879184172841 
		0.98817550039526547 0.99464573138069146 0.98985404072527927 0.99968226000443883;
	setAttr -s 6 ".kiy[0:5]"  0.025196454979379352 -0.17489033966094117 
		-0.15332703746752144 0.10334345187852635 0.14208792369458126 0.025206725936097074;
	setAttr -s 6 ".kox[0:5]"  0.99968291340259607 0.98460451768992896 
		0.98817550039526547 0.99464573138069146 0.98982239275570627 0.99968251893112148;
	setAttr -s 6 ".koy[0:5]"  0.025180799250573937 -0.17479686422983234 
		-0.15332703746752144 0.10334345187852635 0.1423082246371177 0.025196454979379359;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleY";
	rename -uid "32E1525A-47BA-EFBF-17B7-E7A37A23BC11";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleZ";
	rename -uid "FBEC6D0C-4851-97DC-2278-488FE1C38B87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1090896351909225 7 1.0992327764965455
		 20 0.99059732620765018 33 0.97495763755640041 47 1.0807495080905241 60 1.1090896351909225;
	setAttr -s 6 ".kix[0:5]"  0.99968251893112148 0.9845879184172841 
		0.98817550039526547 0.99464573138069146 0.98985404072527927 0.99968226000443883;
	setAttr -s 6 ".kiy[0:5]"  0.025196454979379352 -0.17489033966094117 
		-0.15332703746752144 0.10334345187852635 0.14208792369458126 0.025206725936097074;
	setAttr -s 6 ".kox[0:5]"  0.99968291340259607 0.98460451768992896 
		0.98817550039526547 0.99464573138069146 0.98982239275570627 0.99968251893112148;
	setAttr -s 6 ".koy[0:5]"  0.025180799250573937 -0.17479686422983234 
		-0.15332703746752144 0.10334345187852635 0.1423082246371177 0.025196454979379359;
createNode animCurveTL -n "Rig_C_body_middle_001_translateX";
	rename -uid "52ABCD97-4958-CE7D-699D-5094DB24B472";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateY";
	rename -uid "C4D0AE6E-4EF6-DAD7-32D7-E88E807B76F7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateZ";
	rename -uid "6C22872B-4469-77BE-9FFD-A7AD4391D422";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateX";
	rename -uid "E91BBFD5-430D-0A80-FE71-BFBD22EE672D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateY";
	rename -uid "F1C0FE8B-4F94-A777-CBD6-94AC4D2AF333";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateZ";
	rename -uid "080979B3-4564-36A5-06EA-84926A0AA332";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateX";
	rename -uid "D07D8B52-4820-DC00-B28D-2AAC421B1EE7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateY";
	rename -uid "859B2E7F-4C14-9C06-023A-1C83FF295E29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.70205983181045184 60 0.70205983181045184;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateZ";
	rename -uid "BA415433-437F-9DBC-ED4D-92B324CECAAB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateX";
	rename -uid "DC1C24A8-4871-41D7-4C09-4DA55FC7406A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateY";
	rename -uid "CB39A659-4C07-7DC9-1016-919FCAB1460F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateZ";
	rename -uid "459E3EDF-401A-F633-DD31-6BB9CA7BFDBA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_translateX";
	rename -uid "F142CF32-4CC3-6260-FB47-449C0921248E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_translateY";
	rename -uid "048C7A01-4D43-DBC0-2CFB-6F9B3E8308A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.5665991884297359 15 1.3237454537188302
		 29 0.90834098109986883 41 3.5665991884297359 60 3.5665991884297359;
	setAttr -s 5 ".kix[0:4]"  0.46147189629054558 0.33153904148507385 
		0.34864617584908636 0.37277924992984934 0.4614963156126885;
	setAttr -s 5 ".kiy[0:4]"  -0.88715482805089207 -0.94344150002592031 
		0.93725441800282161 0.9279200562665616 -0.88714212540940351;
	setAttr -s 5 ".kox[0:4]"  0.46178981265281316 0.33162705720498192 
		0.34864617584908636 0.37242430602616078 0.46147189629054569;
	setAttr -s 5 ".koy[0:4]"  -0.88698938490270551 -0.94341056541124435 
		0.93725441800282161 0.92806257131776015 -0.88715482805089207;
createNode animCurveTL -n "Rig_C_body_under_translateZ";
	rename -uid "B3389FA0-47D8-59DD-F222-F9AE28B74A3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_rotateX";
	rename -uid "BC202684-4246-B0D8-1105-7C8535E38C5C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_rotateY";
	rename -uid "CC6960EE-4403-4B82-3419-FABB6606C529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_rotateZ";
	rename -uid "712BBBBA-4C2A-4E92-9C94-06AC99A063F1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateX";
	rename -uid "EFAD790C-4630-F497-77CF-0391E1F3B3B4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateY";
	rename -uid "77A9B5AE-401D-2ED2-0BEC-E6B89B79A7C8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateZ";
	rename -uid "7AE8A7AF-4FC1-AC98-74C7-3394A05428D4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateX";
	rename -uid "9FD6DD54-4F58-93C4-6D9A-B79D3F834360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateY";
	rename -uid "8E372414-4925-8E59-C729-C4A1577E5677";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateZ";
	rename -uid "A3942490-41F9-683C-DB51-56AF1F7CF6E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateX";
	rename -uid "9EC3A45D-425C-9B7A-ABEC-FF8567A0D3EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateY";
	rename -uid "57D0C841-4238-DDF1-06D9-589E1A7F8E7A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateZ";
	rename -uid "CB251FD0-4F98-7816-67F9-D69852734706";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateX";
	rename -uid "45390885-45FC-A0E0-512E-16A56F26D3D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateY";
	rename -uid "83272313-45D9-5653-6D5F-8195B2214331";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateZ";
	rename -uid "4F5638DB-4017-EAC2-C07A-4C92FD40FCC0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_Root_002_translateX";
	rename -uid "A6FE06E0-414A-A978-177C-D891637C062E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_Root_002_translateY";
	rename -uid "734ADA92-4027-3E2B-FCB7-CBB200466782";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_Root_002_translateZ";
	rename -uid "AC9666FB-41ED-AB5B-79F0-908A9A023534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateX";
	rename -uid "B8B1E7F4-4B4B-F810-0527-50823060C7F9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.4999999999999991 30 7.4999999999999991
		 60 -7.4999999999999991;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateY";
	rename -uid "A903280D-406E-F3D5-CEEE-5B86BC83DF83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateZ";
	rename -uid "49E6E6C9-4B5C-42F7-1E38-A085C2BB9842";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.6111111111111116 10 -7.4999999999999991
		 40 7.4999999999999991 60 -3.6111111111111116;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  -0.23271056693257725 0 0 -0.23271056693257725;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  -0.11635528346628865 0 0 -0.11635528346628865;
createNode animCurveTL -n "Rig_C_body_upper_translateX";
	rename -uid "EE0FE728-4F20-05A0-C1AF-EF99E10F5A5B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_translateY";
	rename -uid "E4999609-4732-67D3-A7D4-84BEC77FD4BB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_translateZ";
	rename -uid "2E58F9B0-48B8-B1B2-303D-728654000111";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateX";
	rename -uid "9C358F05-4931-2E14-2100-04A3959C8A78";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateY";
	rename -uid "A59EB4D3-4E12-DBB5-6A4D-F797A81202D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateZ";
	rename -uid "7F8CF65F-4257-73AD-6719-BA9831011F1E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateX";
	rename -uid "208FD1F5-4D66-4665-9FA0-F3995F8BFBA0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateY";
	rename -uid "146ECB15-46A9-9049-737A-E2933EEE46A3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateZ";
	rename -uid "E8EBA729-416B-6D1F-0BEB-B98FD81B835E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateX";
	rename -uid "71E84204-4EB6-E9D2-9518-D088136A28F6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateY";
	rename -uid "D671D76F-46F2-DBE3-23A3-AA87978969B4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateZ";
	rename -uid "4242E691-4A1E-5EF5-C57D-22A897FAB667";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateX";
	rename -uid "3DC06B2D-486D-F9E4-DD89-18BA2EE2070A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateY";
	rename -uid "82E1217B-4F37-B022-96A8-D7ABD4B05404";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.7875978624206974 15 -0.82360523208971159
		 29 -0.40820075947075019 41 -2.5679717104780435 60 -2.7875978624206974;
	setAttr -s 5 ".kix[0:4]"  1 0.36544474714502051 0.43147634203990343 
		0.40946859988055728 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.93083303378431514 -0.90212425211822367 
		-0.9123242108548123 0;
	setAttr -s 5 ".kox[0:4]"  1 0.36553918721980583 0.43147634203990343 
		0.40909169953072555 1;
	setAttr -s 5 ".koy[0:4]"  0 0.93079595111210267 -0.90212425211822367 
		-0.91249327744102449 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateZ";
	rename -uid "D279F2E9-4430-0AFB-D3D7-19950CBF45DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateX";
	rename -uid "6E69D07D-43EF-7705-C46B-8B8302833C8B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.4999999999999991 30 -7.4999999999999991
		 60 7.4999999999999991;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateY";
	rename -uid "766306D5-4C15-0723-9468-42AACE84B527";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateZ";
	rename -uid "FE14FDA1-4BDE-C470-D9EC-5BAAFF891B50";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.6111111111111116 10 7.4999999999999991
		 40 -7.4999999999999991 60 3.6111111111111116;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  0.23271056693257725 0 0 0.23271056693257725;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  0.11635528346628865 0 0 0.11635528346628865;
createNode animCurveTU -n "Rig_C_body_under_option_scaleX";
	rename -uid "529A1B7A-4F5B-F401-F406-1592B307CDF9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2416262910266984 3 1.2346433232141991
		 15 1.126007872925304 29 1.110368184274054 43 1.2161600548081779 60 1.2416262910266984;
	setAttr -s 6 ".kix[0:5]"  0.99968251893112148 0.97429471467266471 
		0.98817550039526547 0.9950321034222942 0.99253106425255988 0.99968248311342534;
	setAttr -s 6 ".kiy[0:5]"  0.025196454979379054 -0.22527718251281242 
		-0.15332703746752144 0.099554573772401872 0.12199215750891861 0.025197876025090708;
	setAttr -s 6 ".kox[0:5]"  0.99968256300178759 0.97434924520998911 
		0.98817550039526547 0.9950321034222942 0.99251287637287378 0.99968251893112148;
	setAttr -s 6 ".koy[0:5]"  0.02519470639196118 -0.22504121480014372 
		-0.15332703746752144 0.099554573772401872 0.12214004353218733 0.02519645497937905;
createNode animCurveTU -n "Rig_C_body_under_option_scaleY";
	rename -uid "4B7117FC-41CB-D376-BAE5-CB8468E7ED10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleZ";
	rename -uid "5C90D060-407E-B706-D36D-6DBC47B06223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2416262910266984 3 1.2346433232141991
		 15 1.126007872925304 29 1.110368184274054 43 1.2161600548081779 60 1.2416262910266984;
	setAttr -s 6 ".kix[0:5]"  0.99968251893112148 0.97429471467266471 
		0.98817550039526547 0.9950321034222942 0.99253106425255988 0.99968248311342534;
	setAttr -s 6 ".kiy[0:5]"  0.025196454979379054 -0.22527718251281242 
		-0.15332703746752144 0.099554573772401872 0.12199215750891861 0.025197876025090708;
	setAttr -s 6 ".kox[0:5]"  0.99968256300178759 0.97434924520998911 
		0.98817550039526547 0.9950321034222942 0.99251287637287378 0.99968251893112148;
	setAttr -s 6 ".koy[0:5]"  0.02519470639196118 -0.22504121480014372 
		-0.15332703746752144 0.099554573772401872 0.12214004353218733 0.02519645497937905;
createNode animCurveTL -n "Rig_R_body_middle_003_translateX";
	rename -uid "B492EC43-43BC-83D1-499C-5D86EFEAE043";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateY";
	rename -uid "64400960-4E52-E136-F478-09B804B77993";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateZ";
	rename -uid "6DC10075-488A-BF6E-5A1A-19BFE24B7A61";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateX";
	rename -uid "A2548EF1-43DB-EECD-8F20-498E402B1088";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateY";
	rename -uid "17E411EB-4308-BC21-6E9B-C0B1637C1A89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateZ";
	rename -uid "DB990360-42DE-9B49-02DD-EEB97B31E9D3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateX";
	rename -uid "DA813FFA-45DE-00A3-A628-098E68012C82";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateY";
	rename -uid "1EE37CC3-4D55-B5F8-AD87-49ABE668F240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateZ";
	rename -uid "2ECA87E4-47C5-FB2F-8F15-0BB8CD63D51B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateX";
	rename -uid "3BA70F30-418F-D6D5-4AA6-DDA0C740F909";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateY";
	rename -uid "059B7EF9-4C4A-7AC7-B4AB-F88A808F034F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateZ";
	rename -uid "4848776A-4FB8-3F97-A05E-26AB9E787420";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateX";
	rename -uid "E084387A-4DE5-C293-DD1B-17857616853A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateY";
	rename -uid "AE437794-4B04-37AB-2EF8-D7A375C4192C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateZ";
	rename -uid "81753AD9-4247-D120-3DFC-4A9505B50264";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateX";
	rename -uid "CA243536-439D-53D9-831B-0EBB728BDA22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateY";
	rename -uid "F421DF56-45F9-68C4-D6FF-668D3553FF88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateZ";
	rename -uid "2E8C5093-4D3F-B55A-0293-20B168B7E32C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateX";
	rename -uid "FF04870A-4C75-BD43-A410-E88116E49F71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateY";
	rename -uid "ECC906D0-4369-C4DC-3C93-629B5A03CA3A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.70205983181045184 60 0.70205983181045184;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateZ";
	rename -uid "C158A2A6-41AA-C23D-7FC5-5F9F1FC3C82D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateX";
	rename -uid "BA55A423-4237-020D-64A1-DCAC52A53BBF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateY";
	rename -uid "84F3F647-460B-C9F4-89CC-7CBD188815D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateZ";
	rename -uid "46F7B821-401C-A4FF-8C8C-2295CA071295";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateX";
	rename -uid "71810C23-4A10-D4CB-D0A6-AA97B00301AA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateY";
	rename -uid "7C99D428-4345-35C3-AB2C-C1B5A012996D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateZ";
	rename -uid "057A7E09-4003-45AA-8B2F-74B0A9012336";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateX";
	rename -uid "48402843-4DC3-6A1A-0246-C6917B3ED9EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateY";
	rename -uid "FC4AF968-456A-DEBE-1FFF-A682765E43B7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateZ";
	rename -uid "93C9AEF6-4A40-BC81-5A58-A8A133891E33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateX";
	rename -uid "A5B9667B-42F8-21DF-B0A9-45B0B35D1F48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateY";
	rename -uid "34C5EC43-4B7A-0383-A596-8FBEF001B26A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateZ";
	rename -uid "F1B78D3F-49CF-9A7E-3E79-61BED2803173";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateX";
	rename -uid "965D4D1B-47ED-68A0-9197-6DA103D14437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateY";
	rename -uid "517565A1-43D5-6F2F-9CDE-EDB9C648B355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateZ";
	rename -uid "1D28F8BB-4568-3462-ABCB-F4A2C7820A90";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateX";
	rename -uid "5B26F9C1-43FB-406E-BB14-C6B3695BBD3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateY";
	rename -uid "32EC92DB-4A58-CCCA-30F1-9C87ABDF70ED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateZ";
	rename -uid "7A4C1006-4DCC-BEC0-B22F-25A4129E37AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateX";
	rename -uid "B5EB28A4-4652-2585-9D75-16B1A9A464E1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateY";
	rename -uid "F5D8D41D-4F69-6EE0-876C-6C85CFFE6788";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateZ";
	rename -uid "511FFC6C-48AB-9282-6CB4-DEB4F00502E5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateX";
	rename -uid "0B2722CB-4C42-F790-465F-0AB6ABB82F12";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateY";
	rename -uid "A6EB307E-4CF0-90BD-17F5-08A00DD80308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateZ";
	rename -uid "0F0214C7-479E-E6EC-2472-7FBEC6F0F776";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateX";
	rename -uid "F7DAA95B-45BC-AA3C-E782-B59D58CB8BEF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateY";
	rename -uid "FB5CAC9A-4FF5-F589-D43F-2BB3288E9740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateZ";
	rename -uid "D50D7707-4503-A1C7-07F1-E198F88F4FD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateX";
	rename -uid "C32A35F2-4B1C-8E4E-7929-0A8DCF71C8D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateY";
	rename -uid "763495DF-4B99-D331-9382-D48AA2B2E9B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateZ";
	rename -uid "CF393E15-4D65-009D-17EE-D4A0CBEB8AE9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateX";
	rename -uid "8986A441-49C5-2034-3ACD-C2BC9C423955";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateY";
	rename -uid "8986A171-4A30-1BD9-C18E-B69645202355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateZ";
	rename -uid "92F4AB6E-4976-7950-1579-C28DBC981B9E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateX";
	rename -uid "E765CE75-4D9B-1EEB-058A-848BD10D6D2E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateY";
	rename -uid "CB3FF8F9-46BE-4D76-0BF6-B8B4DF2F6B38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.5278287379981048 3 -2.1247954056630878
		 18 2.6237067701450822 31 3.485990227905118 43 -1.395170941404599 60 -2.5278287379981048;
	setAttr -s 6 ".kix[0:5]"  0.70889714979454055 0.10934755480745612 
		0.15282908267335213 0.20326435228782 0.1642187950537648 0.70887724837692556;
	setAttr -s 6 ".kiy[0:5]"  -0.70531186790892486 0.99400357758794333 
		0.98825263545776676 -0.9791238956786894 -0.98642393895884817 -0.70533186992617769;
	setAttr -s 6 ".kox[0:5]"  0.70892163911423078 0.10946689150913294 
		0.15282908267335213 0.20326435228782 0.16402238827495844 0.70889714979454055;
	setAttr -s 6 ".koy[0:5]"  -0.70528725324905195 0.99399044244063406 
		0.98825263545776676 -0.9791238956786894 -0.98645661645334348 -0.70531186790892486;
createNode animCurveTL -n "Rig_C_body_middle_option_translateZ";
	rename -uid "32BF05FE-44D8-176E-84D3-C0817F34F7B0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 0.9666666666666669 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1.0333333333333332 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateX";
	rename -uid "2080F0DE-48C9-B7BA-7B51-A5BD813D982E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5 29 5 60 -5;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateY";
	rename -uid "5A2E097A-421A-1565-7ABA-56A4F59FFD01";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateZ";
	rename -uid "6A981D53-4559-25AE-17A9-C4ADAB908055";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleX";
	rename -uid "0279508D-463C-F623-6793-0DA80D6A4810";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1420606119971297 5 1.1223822660361797
		 18 1.0137468157472846 31 0.99810712709603489 45 1.1038989976301585 60 1.1420606119971297;
	setAttr -s 6 ".kix[0:5]"  0.99968251893112148 0.97874730288981981 
		0.98817550039526547 0.9950321034222942 0.99110668816248226 0.9996823856698499;
	setAttr -s 6 ".kiy[0:5]"  0.025196454979379352 -0.2050700297115676 
		-0.15332703746752144 0.099554573772401872 0.13306965348867511 0.025201741634998911;
	setAttr -s 6 ".kox[0:5]"  0.99968279659030046 0.97877756472627975 
		0.98817550039526547 0.9950321034222942 0.99108237766144247 0.99968251893112148;
	setAttr -s 6 ".koy[0:5]"  0.025185436295523313 -0.20492554449968714 
		-0.15332703746752144 0.099554573772401872 0.13325059357819738 0.025196454979379345;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleY";
	rename -uid "219AC6A7-4145-A940-F99A-F09F61613022";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleZ";
	rename -uid "F6E1B390-489B-041E-9130-F58EC545B36F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1420606119971297 5 1.1223822660361797
		 18 1.0137468157472846 31 0.99810712709603489 45 1.1038989976301585 60 1.1420606119971297;
	setAttr -s 6 ".kix[0:5]"  0.99968251893112148 0.97874730288981981 
		0.98817550039526547 0.9950321034222942 0.99110668816248226 0.9996823856698499;
	setAttr -s 6 ".kiy[0:5]"  0.025196454979379352 -0.2050700297115676 
		-0.15332703746752144 0.099554573772401872 0.13306965348867511 0.025201741634998911;
	setAttr -s 6 ".kox[0:5]"  0.99968279659030046 0.97877756472627975 
		0.98817550039526547 0.9950321034222942 0.99108237766144247 0.99968251893112148;
	setAttr -s 6 ".koy[0:5]"  0.025185436295523313 -0.20492554449968714 
		-0.15332703746752144 0.099554573772401872 0.13325059357819738 0.025196454979379345;
createNode animCurveTL -n "Rig_L_body_under_001_translateX";
	rename -uid "1A5F41B7-47E9-CFC3-0F63-AEB0236F4F88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateY";
	rename -uid "423B79B9-41AA-39A5-BCDA-C6AC3BF62267";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateZ";
	rename -uid "735A82ED-4B7B-1A4B-8160-27B452E73846";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateX";
	rename -uid "4DA70FAF-490E-379A-85D9-49A5669C60C9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateY";
	rename -uid "28375FDB-4A15-10CB-0DAB-8A80E426FFDA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateZ";
	rename -uid "79E73A84-4B38-F8C0-4999-B3969FCBAB0D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateX";
	rename -uid "B7AEB4B1-423D-994A-432E-2FABEF1BBC94";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateY";
	rename -uid "DDA0F5A8-4A77-4BE2-449C-95B2458C8558";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateZ";
	rename -uid "93484C60-4923-D00E-FF16-A8810ADDBFAB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateX";
	rename -uid "6C537A32-4EA3-4B01-E7D0-89B26FC47FDA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateY";
	rename -uid "8D56151D-4DB4-DAAE-6D00-F9BDA275FD04";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateZ";
	rename -uid "AE7CB643-4787-118D-E218-BEBA26803795";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateX";
	rename -uid "39FF883C-4A93-F472-BD3A-BEB47E49C198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateY";
	rename -uid "C5179195-4C47-9C81-19EC-C59D72F618B6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateZ";
	rename -uid "8C39EDE7-407F-C804-BB80-0D8FF6C6AD92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateX";
	rename -uid "D44C2088-4EC4-F86A-8731-ACB3D19A5C9D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateY";
	rename -uid "CFE44A60-4509-CFCE-7638-1BB4DBA1C9B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateZ";
	rename -uid "12054F66-4477-EEFF-0F82-61BE70A98BDF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateX";
	rename -uid "5289D330-4599-362C-930E-D188002B9B39";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateY";
	rename -uid "E7DB83A4-4616-1216-188F-AE917CF11022";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateZ";
	rename -uid "AF447901-4EC8-F570-12C5-9EA2C812C7A5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateX";
	rename -uid "515CE223-4FAB-1AD3-D01C-F5BABC4CB57C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateY";
	rename -uid "C624DB10-43EA-54C6-BA50-1AB5B611474E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateZ";
	rename -uid "C8BDDEB7-4D22-AD23-A9C4-21B2D70F9EAD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateX";
	rename -uid "C27642F2-4AD0-7E82-3984-F4A9192A0BDD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateY";
	rename -uid "3CC8D91B-4FBB-C901-BA8C-F0AE6199C0CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateZ";
	rename -uid "C0C2AF45-421F-C414-6125-15A1D92546C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateX";
	rename -uid "BA6F1974-478C-29BE-E53A-4D97D09A59C7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateY";
	rename -uid "E0EC4CA0-4B8F-3E0A-790C-D4A29A1FBB4C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateZ";
	rename -uid "38605B8E-42AB-FFA6-3446-869F28503192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_eye_root_translateX";
	rename -uid "F7DDF1FD-49D5-9B42-81CC-0297F2B767E3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_eye_root_translateY";
	rename -uid "7EEA264B-44D2-4AA8-396A-81AF4DF7C92F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.3039415786658139 60 -5.3039415786658139;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_eye_root_translateZ";
	rename -uid "6AA0704E-424E-5524-B36F-ABA8E45F1D73";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_eye_root_rotateX";
	rename -uid "DC61D7A7-4BD3-6A73-DAF2-F3AA07E65921";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.793046720866338 12 13.918919413647362
		 24 15.434256543306988 43 15.601660413702074 52 14.172178441216445 60 13.793046720866338;
	setAttr -s 6 ".kix[0:5]"  0.99998006365493508 0.99957648504964935 
		0.99957000847950928 0.99978034525778658 0.99880694674704473 0.99998001225930999;
	setAttr -s 6 ".kiy[0:5]"  -0.0063144510982421874 0.029100696482870121 
		0.029322314851896205 -0.020958559974886853 -0.048833217484066369 -0.0063225850623221435;
	setAttr -s 6 ".kox[0:5]"  0.99998009577068159 0.99957679583984027 
		0.99957000847950928 0.99978034525778658 0.99880107115024186 0.99998006365493508;
	setAttr -s 6 ".koy[0:5]"  -0.0063093630786794216 0.029090019225814247 
		0.029322314851896205 -0.020958559974886853 -0.048953245746626357 -0.0063144510982421874;
createNode animCurveTA -n "Rig_C_eye_root_rotateY";
	rename -uid "4923485F-4ED7-DCC0-E526-0BB4671B00BE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.020866956871397929 60 -0.020866956871397929;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_eye_root_rotateZ";
	rename -uid "8DE7F699-4B2B-F096-5427-B397B11D49BF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.98293744433877295 60 0.98293744433877295;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleX";
	rename -uid "42F844A9-428B-9535-C572-6A9F766F3E3B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleY";
	rename -uid "F66BC1C9-459F-1D9F-F06B-7590D1C04199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleZ";
	rename -uid "E798E2F0-4284-8ADD-DAD1-34AA3309B453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_eye_root_vis";
	rename -uid "19872EC1-4110-C611-2A90-33B526BB8B83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_C_eye_root_body_option_parent";
	rename -uid "4A7FB977-4D23-F8AD-0F4C-1D9A59BCE292";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateX";
	rename -uid "CF5C6D3B-491D-8D98-89AA-CE90549049F3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateY";
	rename -uid "E55D37FB-471B-7937-61BF-E8A9E77ADA9D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateZ";
	rename -uid "D763FC75-4318-276B-C800-1EBD53E301AD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateX";
	rename -uid "C4CBD1BB-4FBB-BFE6-2064-BB8E96036C6E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateY";
	rename -uid "92198A4A-4C1A-61F4-3244-BB8B330BD2E8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateZ";
	rename -uid "0B1A3052-4BA0-7C78-63A7-3E9A16ABBFF3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateX";
	rename -uid "B15E2F0B-4290-01A9-AFBE-25BA72131FF7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateY";
	rename -uid "41F1A210-4EF9-E322-11D3-BBAB83CD21B6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateZ";
	rename -uid "D8670720-4F25-FA85-9C12-8EA59DC6EAD7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateX";
	rename -uid "4F0ED41B-47A2-3B2A-0DB5-5E9F3FCB4D75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateY";
	rename -uid "AF0B9B5D-42AB-E1BB-3BDD-95A9E1000529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateZ";
	rename -uid "E2DCEE0E-4216-B1BA-7318-4D931469DFED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateX";
	rename -uid "EC54E1BE-4FB9-B617-3E66-1EB1D6D8938F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateY";
	rename -uid "250E06E8-4740-7539-8206-3E88E95BBF24";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateZ";
	rename -uid "4F5BAE10-4A72-609C-0BD6-61BF720F0C98";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateX";
	rename -uid "E0CC0342-4BE3-0A77-5F24-A99FF849088F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateY";
	rename -uid "1F63BD62-4097-E0CA-B01C-36BA1319E48F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateZ";
	rename -uid "37D8642F-4A82-645A-1112-CEA735777ADE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateX";
	rename -uid "19E04FC7-4FBE-2834-DB74-04B849696409";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateY";
	rename -uid "0CCF11A8-4259-64DC-4EE9-83B680991235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateZ";
	rename -uid "20E869B6-4436-9DD8-73C6-19A7A97BF3FC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateX";
	rename -uid "9560399B-4D56-D289-96A6-A1977B36033C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateY";
	rename -uid "6CD2AE2B-4593-7B5B-E776-FD814386295C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateZ";
	rename -uid "56E31C43-4614-2C90-B334-FFBE3DBAEF3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateX";
	rename -uid "C4564B60-47D3-A1DE-7FA8-08846F26388B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateY";
	rename -uid "77F7A3E2-45B5-9962-C293-338382FFEB8D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateZ";
	rename -uid "C7A7BC13-4163-8AA8-9B5B-E989C3901037";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateX";
	rename -uid "93D21160-46F2-AE85-6470-579ED6469E22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateY";
	rename -uid "FFC18A27-410C-1DC9-922B-46B0C9E1EE23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateZ";
	rename -uid "1B9B32DC-41FF-ADE5-8EAC-31AE22CD07DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateX";
	rename -uid "B9AE6949-47CA-87AE-FDAE-F98B3B0F5B92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateY";
	rename -uid "6A7D3931-4DC4-D93E-703F-C1B85C4E4D59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateZ";
	rename -uid "12FD455A-4B48-8160-E5BF-2CB86C0EA2D8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateX";
	rename -uid "EE5C4148-45C4-A345-3A05-4F9445E21DAA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateY";
	rename -uid "0149DDB6-455E-9A10-6C36-3C9D4DA0FD7A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateZ";
	rename -uid "B9882095-4373-2CD4-B016-1EBE1CD64F90";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateX";
	rename -uid "7514EE90-4010-6A8D-3379-8DA4889C6114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateY";
	rename -uid "8BAA34AD-413B-1418-9C91-B5A3C4142C87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateZ";
	rename -uid "08E35D45-48AE-05FB-0377-C9B0FA4989F0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateX";
	rename -uid "CDAD2B6A-4FF2-975F-D929-73846B8D762A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateY";
	rename -uid "0DBED689-4E3F-5834-E85E-59B128E3990F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateZ";
	rename -uid "C7297905-41EF-76B5-D8F2-28B9915E7A8D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Rig_Other_sine_tre";
	rename -uid "5D009EDB-44D9-40E6-1464-37BC30AC9FB1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 3;
createNode animCurveTU -n "Rig_Other_sine_strength";
	rename -uid "B179FD1B-4A1C-BB55-F152-A68D33F723B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 1.5737102209565135 25 2.1093005408272183
		 40 1.4333196089058104 49 2.01922484592082 60 0;
createNode animCurveTA -n "Rig_C_pupil_guruguru_rotateZ";
	rename -uid "39DCC556-4BF6-B252-B97C-FFAA359B5AEB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 360;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2DCE1B3E-4C3F-7F4D-2ACA-07ACC819D46A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1156.5475730905478 -536.30950249849889 ;
	setAttr ".tgi[0].vh" -type "double2" 1110.1190035068817 558.92854921874641 ;
	setAttr ".tgi[0].ni[0].x" -145.71427917480469;
	setAttr ".tgi[0].ni[0].y" 44.285713195800781;
	setAttr ".tgi[0].ni[0].nvs" 1920;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "294BB95F-4E71-5E88-9D38-81879C074959";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "82169E8D-4AD4-F2DC-5F3B-F386175BC062";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "47B5C428-48E3-122F-813B-2F8FA84D8DAB";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "E88C5BD2-4C48-F46C-EC1D-CFA8DC1ACB51";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTU -n "Rig_Other_eye_type";
	rename -uid "6D6910A5-4723-A0E8-2CF5-7C915FACAF58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Rig_Other_color";
	rename -uid "055E1C27-4A91-D848-F913-01A51F06F184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Rig_C_eye_ctrl_a_translateZ";
	rename -uid "4D410590-4339-939A-0574-D0BCA015D8CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.4408920985006262e-15 60 0;
createNode animCurveTA -n "Rig_C_eye_ctrl_a_rotateX";
	rename -uid "010A9C61-4CE6-6DF6-4B9D-E0BA24B00EF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_C_eye_ctrl_b_rotateY";
	rename -uid "31AE9085-42C7-2453-CA2B-79B13AE276B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 55;
	setAttr -av -k on ".unw" 55;
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
connectAttr "Rig_C_Root_001_translateX.o" "ab_rig_CRN.phl[1]";
connectAttr "Rig_C_Root_001_translateY.o" "ab_rig_CRN.phl[2]";
connectAttr "Rig_C_Root_001_translateZ.o" "ab_rig_CRN.phl[3]";
connectAttr "Rig_C_Root_001_rotateX.o" "ab_rig_CRN.phl[4]";
connectAttr "Rig_C_Root_001_rotateY.o" "ab_rig_CRN.phl[5]";
connectAttr "Rig_C_Root_001_rotateZ.o" "ab_rig_CRN.phl[6]";
connectAttr "Rig_C_Root_001_scaleX.o" "ab_rig_CRN.phl[7]";
connectAttr "Rig_C_Root_001_scaleY.o" "ab_rig_CRN.phl[8]";
connectAttr "Rig_C_Root_001_scaleZ.o" "ab_rig_CRN.phl[9]";
connectAttr "Rig_C_Root_002_translateX.o" "ab_rig_CRN.phl[10]";
connectAttr "Rig_C_Root_002_translateY.o" "ab_rig_CRN.phl[11]";
connectAttr "Rig_C_Root_002_translateZ.o" "ab_rig_CRN.phl[12]";
connectAttr "Rig_C_Root_002_rotateX.o" "ab_rig_CRN.phl[13]";
connectAttr "Rig_C_Root_002_rotateY.o" "ab_rig_CRN.phl[14]";
connectAttr "Rig_C_Root_002_rotateZ.o" "ab_rig_CRN.phl[15]";
connectAttr "Rig_C_body_translateX.o" "ab_rig_CRN.phl[16]";
connectAttr "Rig_C_body_translateY.o" "ab_rig_CRN.phl[17]";
connectAttr "Rig_C_body_translateZ.o" "ab_rig_CRN.phl[18]";
connectAttr "Rig_C_body_rotateX.o" "ab_rig_CRN.phl[19]";
connectAttr "Rig_C_body_rotateY.o" "ab_rig_CRN.phl[20]";
connectAttr "Rig_C_body_rotateZ.o" "ab_rig_CRN.phl[21]";
connectAttr "Rig_C_body_middle_option_translateX.o" "ab_rig_CRN.phl[22]";
connectAttr "Rig_C_body_middle_option_translateY.o" "ab_rig_CRN.phl[23]";
connectAttr "Rig_C_body_middle_option_translateZ.o" "ab_rig_CRN.phl[24]";
connectAttr "Rig_C_body_middle_option_rotateX.o" "ab_rig_CRN.phl[25]";
connectAttr "Rig_C_body_middle_option_rotateY.o" "ab_rig_CRN.phl[26]";
connectAttr "Rig_C_body_middle_option_rotateZ.o" "ab_rig_CRN.phl[27]";
connectAttr "Rig_C_body_middle_option_scaleX.o" "ab_rig_CRN.phl[28]";
connectAttr "Rig_C_body_middle_option_scaleY.o" "ab_rig_CRN.phl[29]";
connectAttr "Rig_C_body_middle_option_scaleZ.o" "ab_rig_CRN.phl[30]";
connectAttr "Rig_C_body_middle_001_translateX.o" "ab_rig_CRN.phl[31]";
connectAttr "Rig_C_body_middle_001_translateY.o" "ab_rig_CRN.phl[32]";
connectAttr "Rig_C_body_middle_001_translateZ.o" "ab_rig_CRN.phl[33]";
connectAttr "Rig_C_body_middle_001_rotateX.o" "ab_rig_CRN.phl[34]";
connectAttr "Rig_C_body_middle_001_rotateY.o" "ab_rig_CRN.phl[35]";
connectAttr "Rig_C_body_middle_001_rotateZ.o" "ab_rig_CRN.phl[36]";
connectAttr "Rig_C_body_middle_002_translateX.o" "ab_rig_CRN.phl[37]";
connectAttr "Rig_C_body_middle_002_translateY.o" "ab_rig_CRN.phl[38]";
connectAttr "Rig_C_body_middle_002_translateZ.o" "ab_rig_CRN.phl[39]";
connectAttr "Rig_C_body_middle_002_rotateX.o" "ab_rig_CRN.phl[40]";
connectAttr "Rig_C_body_middle_002_rotateY.o" "ab_rig_CRN.phl[41]";
connectAttr "Rig_C_body_middle_002_rotateZ.o" "ab_rig_CRN.phl[42]";
connectAttr "Rig_L_body_middle_001_translateX.o" "ab_rig_CRN.phl[43]";
connectAttr "Rig_L_body_middle_001_translateY.o" "ab_rig_CRN.phl[44]";
connectAttr "Rig_L_body_middle_001_translateZ.o" "ab_rig_CRN.phl[45]";
connectAttr "Rig_L_body_middle_001_rotateX.o" "ab_rig_CRN.phl[46]";
connectAttr "Rig_L_body_middle_001_rotateY.o" "ab_rig_CRN.phl[47]";
connectAttr "Rig_L_body_middle_001_rotateZ.o" "ab_rig_CRN.phl[48]";
connectAttr "Rig_L_body_middle_002_translateX.o" "ab_rig_CRN.phl[49]";
connectAttr "Rig_L_body_middle_002_translateY.o" "ab_rig_CRN.phl[50]";
connectAttr "Rig_L_body_middle_002_translateZ.o" "ab_rig_CRN.phl[51]";
connectAttr "Rig_L_body_middle_002_rotateX.o" "ab_rig_CRN.phl[52]";
connectAttr "Rig_L_body_middle_002_rotateY.o" "ab_rig_CRN.phl[53]";
connectAttr "Rig_L_body_middle_002_rotateZ.o" "ab_rig_CRN.phl[54]";
connectAttr "Rig_L_body_middle_003_translateX.o" "ab_rig_CRN.phl[55]";
connectAttr "Rig_L_body_middle_003_translateY.o" "ab_rig_CRN.phl[56]";
connectAttr "Rig_L_body_middle_003_translateZ.o" "ab_rig_CRN.phl[57]";
connectAttr "Rig_L_body_middle_003_rotateX.o" "ab_rig_CRN.phl[58]";
connectAttr "Rig_L_body_middle_003_rotateY.o" "ab_rig_CRN.phl[59]";
connectAttr "Rig_L_body_middle_003_rotateZ.o" "ab_rig_CRN.phl[60]";
connectAttr "Rig_R_body_middle_001_translateX.o" "ab_rig_CRN.phl[61]";
connectAttr "Rig_R_body_middle_001_translateY.o" "ab_rig_CRN.phl[62]";
connectAttr "Rig_R_body_middle_001_translateZ.o" "ab_rig_CRN.phl[63]";
connectAttr "Rig_R_body_middle_001_rotateX.o" "ab_rig_CRN.phl[64]";
connectAttr "Rig_R_body_middle_001_rotateY.o" "ab_rig_CRN.phl[65]";
connectAttr "Rig_R_body_middle_001_rotateZ.o" "ab_rig_CRN.phl[66]";
connectAttr "Rig_R_body_middle_002_translateX.o" "ab_rig_CRN.phl[67]";
connectAttr "Rig_R_body_middle_002_translateY.o" "ab_rig_CRN.phl[68]";
connectAttr "Rig_R_body_middle_002_translateZ.o" "ab_rig_CRN.phl[69]";
connectAttr "Rig_R_body_middle_002_rotateX.o" "ab_rig_CRN.phl[70]";
connectAttr "Rig_R_body_middle_002_rotateY.o" "ab_rig_CRN.phl[71]";
connectAttr "Rig_R_body_middle_002_rotateZ.o" "ab_rig_CRN.phl[72]";
connectAttr "Rig_R_body_middle_003_translateX.o" "ab_rig_CRN.phl[73]";
connectAttr "Rig_R_body_middle_003_translateY.o" "ab_rig_CRN.phl[74]";
connectAttr "Rig_R_body_middle_003_translateZ.o" "ab_rig_CRN.phl[75]";
connectAttr "Rig_R_body_middle_003_rotateX.o" "ab_rig_CRN.phl[76]";
connectAttr "Rig_R_body_middle_003_rotateY.o" "ab_rig_CRN.phl[77]";
connectAttr "Rig_R_body_middle_003_rotateZ.o" "ab_rig_CRN.phl[78]";
connectAttr "Rig_C_body_under_option_translateX.o" "ab_rig_CRN.phl[79]";
connectAttr "Rig_C_body_under_option_translateY.o" "ab_rig_CRN.phl[80]";
connectAttr "Rig_C_body_under_option_translateZ.o" "ab_rig_CRN.phl[81]";
connectAttr "Rig_C_body_under_option_rotateX.o" "ab_rig_CRN.phl[82]";
connectAttr "Rig_C_body_under_option_rotateY.o" "ab_rig_CRN.phl[83]";
connectAttr "Rig_C_body_under_option_rotateZ.o" "ab_rig_CRN.phl[84]";
connectAttr "Rig_C_body_under_option_scaleX.o" "ab_rig_CRN.phl[85]";
connectAttr "Rig_C_body_under_option_scaleY.o" "ab_rig_CRN.phl[86]";
connectAttr "Rig_C_body_under_option_scaleZ.o" "ab_rig_CRN.phl[87]";
connectAttr "Rig_C_body_under_001_translateX.o" "ab_rig_CRN.phl[88]";
connectAttr "Rig_C_body_under_001_translateY.o" "ab_rig_CRN.phl[89]";
connectAttr "Rig_C_body_under_001_translateZ.o" "ab_rig_CRN.phl[90]";
connectAttr "Rig_C_body_under_001_rotateX.o" "ab_rig_CRN.phl[91]";
connectAttr "Rig_C_body_under_001_rotateY.o" "ab_rig_CRN.phl[92]";
connectAttr "Rig_C_body_under_001_rotateZ.o" "ab_rig_CRN.phl[93]";
connectAttr "Rig_C_body_under_002_translateX.o" "ab_rig_CRN.phl[94]";
connectAttr "Rig_C_body_under_002_translateY.o" "ab_rig_CRN.phl[95]";
connectAttr "Rig_C_body_under_002_translateZ.o" "ab_rig_CRN.phl[96]";
connectAttr "Rig_C_body_under_002_rotateX.o" "ab_rig_CRN.phl[97]";
connectAttr "Rig_C_body_under_002_rotateY.o" "ab_rig_CRN.phl[98]";
connectAttr "Rig_C_body_under_002_rotateZ.o" "ab_rig_CRN.phl[99]";
connectAttr "Rig_L_body_under_001_translateX.o" "ab_rig_CRN.phl[100]";
connectAttr "Rig_L_body_under_001_translateY.o" "ab_rig_CRN.phl[101]";
connectAttr "Rig_L_body_under_001_translateZ.o" "ab_rig_CRN.phl[102]";
connectAttr "Rig_L_body_under_001_rotateX.o" "ab_rig_CRN.phl[103]";
connectAttr "Rig_L_body_under_001_rotateY.o" "ab_rig_CRN.phl[104]";
connectAttr "Rig_L_body_under_001_rotateZ.o" "ab_rig_CRN.phl[105]";
connectAttr "Rig_L_body_under_002_translateX.o" "ab_rig_CRN.phl[106]";
connectAttr "Rig_L_body_under_002_translateY.o" "ab_rig_CRN.phl[107]";
connectAttr "Rig_L_body_under_002_translateZ.o" "ab_rig_CRN.phl[108]";
connectAttr "Rig_L_body_under_002_rotateX.o" "ab_rig_CRN.phl[109]";
connectAttr "Rig_L_body_under_002_rotateY.o" "ab_rig_CRN.phl[110]";
connectAttr "Rig_L_body_under_002_rotateZ.o" "ab_rig_CRN.phl[111]";
connectAttr "Rig_L_body_under_003_translateX.o" "ab_rig_CRN.phl[112]";
connectAttr "Rig_L_body_under_003_translateY.o" "ab_rig_CRN.phl[113]";
connectAttr "Rig_L_body_under_003_translateZ.o" "ab_rig_CRN.phl[114]";
connectAttr "Rig_L_body_under_003_rotateX.o" "ab_rig_CRN.phl[115]";
connectAttr "Rig_L_body_under_003_rotateY.o" "ab_rig_CRN.phl[116]";
connectAttr "Rig_L_body_under_003_rotateZ.o" "ab_rig_CRN.phl[117]";
connectAttr "Rig_R_body_under_001_translateX.o" "ab_rig_CRN.phl[118]";
connectAttr "Rig_R_body_under_001_translateY.o" "ab_rig_CRN.phl[119]";
connectAttr "Rig_R_body_under_001_translateZ.o" "ab_rig_CRN.phl[120]";
connectAttr "Rig_R_body_under_001_rotateX.o" "ab_rig_CRN.phl[121]";
connectAttr "Rig_R_body_under_001_rotateY.o" "ab_rig_CRN.phl[122]";
connectAttr "Rig_R_body_under_001_rotateZ.o" "ab_rig_CRN.phl[123]";
connectAttr "Rig_R_body_under_002_translateX.o" "ab_rig_CRN.phl[124]";
connectAttr "Rig_R_body_under_002_translateY.o" "ab_rig_CRN.phl[125]";
connectAttr "Rig_R_body_under_002_translateZ.o" "ab_rig_CRN.phl[126]";
connectAttr "Rig_R_body_under_002_rotateX.o" "ab_rig_CRN.phl[127]";
connectAttr "Rig_R_body_under_002_rotateY.o" "ab_rig_CRN.phl[128]";
connectAttr "Rig_R_body_under_002_rotateZ.o" "ab_rig_CRN.phl[129]";
connectAttr "Rig_R_body_under_003_translateX.o" "ab_rig_CRN.phl[130]";
connectAttr "Rig_R_body_under_003_translateY.o" "ab_rig_CRN.phl[131]";
connectAttr "Rig_R_body_under_003_translateZ.o" "ab_rig_CRN.phl[132]";
connectAttr "Rig_R_body_under_003_rotateX.o" "ab_rig_CRN.phl[133]";
connectAttr "Rig_R_body_under_003_rotateY.o" "ab_rig_CRN.phl[134]";
connectAttr "Rig_R_body_under_003_rotateZ.o" "ab_rig_CRN.phl[135]";
connectAttr "Rig_C_body_under_translateX.o" "ab_rig_CRN.phl[136]";
connectAttr "Rig_C_body_under_translateY.o" "ab_rig_CRN.phl[137]";
connectAttr "Rig_C_body_under_translateZ.o" "ab_rig_CRN.phl[138]";
connectAttr "Rig_C_body_under_rotateX.o" "ab_rig_CRN.phl[139]";
connectAttr "Rig_C_body_under_rotateY.o" "ab_rig_CRN.phl[140]";
connectAttr "Rig_C_body_under_rotateZ.o" "ab_rig_CRN.phl[141]";
connectAttr "Rig_C_body_upper_option_translateX.o" "ab_rig_CRN.phl[142]";
connectAttr "Rig_C_body_upper_option_translateY.o" "ab_rig_CRN.phl[143]";
connectAttr "Rig_C_body_upper_option_translateZ.o" "ab_rig_CRN.phl[144]";
connectAttr "Rig_C_body_upper_option_rotateX.o" "ab_rig_CRN.phl[145]";
connectAttr "Rig_C_body_upper_option_rotateY.o" "ab_rig_CRN.phl[146]";
connectAttr "Rig_C_body_upper_option_rotateZ.o" "ab_rig_CRN.phl[147]";
connectAttr "Rig_C_body_upper_option_scaleX.o" "ab_rig_CRN.phl[148]";
connectAttr "Rig_C_body_upper_option_scaleY.o" "ab_rig_CRN.phl[149]";
connectAttr "Rig_C_body_upper_option_scaleZ.o" "ab_rig_CRN.phl[150]";
connectAttr "Rig_C_body_upper_001_translateX.o" "ab_rig_CRN.phl[151]";
connectAttr "Rig_C_body_upper_001_translateY.o" "ab_rig_CRN.phl[152]";
connectAttr "Rig_C_body_upper_001_translateZ.o" "ab_rig_CRN.phl[153]";
connectAttr "Rig_C_body_upper_001_rotateX.o" "ab_rig_CRN.phl[154]";
connectAttr "Rig_C_body_upper_001_rotateY.o" "ab_rig_CRN.phl[155]";
connectAttr "Rig_C_body_upper_001_rotateZ.o" "ab_rig_CRN.phl[156]";
connectAttr "Rig_C_body_upper_002_translateX.o" "ab_rig_CRN.phl[157]";
connectAttr "Rig_C_body_upper_002_translateY.o" "ab_rig_CRN.phl[158]";
connectAttr "Rig_C_body_upper_002_translateZ.o" "ab_rig_CRN.phl[159]";
connectAttr "Rig_C_body_upper_002_rotateX.o" "ab_rig_CRN.phl[160]";
connectAttr "Rig_C_body_upper_002_rotateY.o" "ab_rig_CRN.phl[161]";
connectAttr "Rig_C_body_upper_002_rotateZ.o" "ab_rig_CRN.phl[162]";
connectAttr "Rig_L_body_upper_001_translateX.o" "ab_rig_CRN.phl[163]";
connectAttr "Rig_L_body_upper_001_translateY.o" "ab_rig_CRN.phl[164]";
connectAttr "Rig_L_body_upper_001_translateZ.o" "ab_rig_CRN.phl[165]";
connectAttr "Rig_L_body_upper_001_rotateX.o" "ab_rig_CRN.phl[166]";
connectAttr "Rig_L_body_upper_001_rotateY.o" "ab_rig_CRN.phl[167]";
connectAttr "Rig_L_body_upper_001_rotateZ.o" "ab_rig_CRN.phl[168]";
connectAttr "Rig_L_body_upper_002_translateX.o" "ab_rig_CRN.phl[169]";
connectAttr "Rig_L_body_upper_002_translateY.o" "ab_rig_CRN.phl[170]";
connectAttr "Rig_L_body_upper_002_translateZ.o" "ab_rig_CRN.phl[171]";
connectAttr "Rig_L_body_upper_002_rotateX.o" "ab_rig_CRN.phl[172]";
connectAttr "Rig_L_body_upper_002_rotateY.o" "ab_rig_CRN.phl[173]";
connectAttr "Rig_L_body_upper_002_rotateZ.o" "ab_rig_CRN.phl[174]";
connectAttr "Rig_L_body_upper_003_translateX.o" "ab_rig_CRN.phl[175]";
connectAttr "Rig_L_body_upper_003_translateY.o" "ab_rig_CRN.phl[176]";
connectAttr "Rig_L_body_upper_003_translateZ.o" "ab_rig_CRN.phl[177]";
connectAttr "Rig_L_body_upper_003_rotateX.o" "ab_rig_CRN.phl[178]";
connectAttr "Rig_L_body_upper_003_rotateY.o" "ab_rig_CRN.phl[179]";
connectAttr "Rig_L_body_upper_003_rotateZ.o" "ab_rig_CRN.phl[180]";
connectAttr "Rig_R_body_upper_001_translateX.o" "ab_rig_CRN.phl[181]";
connectAttr "Rig_R_body_upper_001_translateY.o" "ab_rig_CRN.phl[182]";
connectAttr "Rig_R_body_upper_001_translateZ.o" "ab_rig_CRN.phl[183]";
connectAttr "Rig_R_body_upper_001_rotateX.o" "ab_rig_CRN.phl[184]";
connectAttr "Rig_R_body_upper_001_rotateY.o" "ab_rig_CRN.phl[185]";
connectAttr "Rig_R_body_upper_001_rotateZ.o" "ab_rig_CRN.phl[186]";
connectAttr "Rig_R_body_upper_002_translateX.o" "ab_rig_CRN.phl[187]";
connectAttr "Rig_R_body_upper_002_translateY.o" "ab_rig_CRN.phl[188]";
connectAttr "Rig_R_body_upper_002_translateZ.o" "ab_rig_CRN.phl[189]";
connectAttr "Rig_R_body_upper_002_rotateX.o" "ab_rig_CRN.phl[190]";
connectAttr "Rig_R_body_upper_002_rotateY.o" "ab_rig_CRN.phl[191]";
connectAttr "Rig_R_body_upper_002_rotateZ.o" "ab_rig_CRN.phl[192]";
connectAttr "Rig_R_body_upper_003_translateX.o" "ab_rig_CRN.phl[193]";
connectAttr "Rig_R_body_upper_003_translateY.o" "ab_rig_CRN.phl[194]";
connectAttr "Rig_R_body_upper_003_translateZ.o" "ab_rig_CRN.phl[195]";
connectAttr "Rig_R_body_upper_003_rotateX.o" "ab_rig_CRN.phl[196]";
connectAttr "Rig_R_body_upper_003_rotateY.o" "ab_rig_CRN.phl[197]";
connectAttr "Rig_R_body_upper_003_rotateZ.o" "ab_rig_CRN.phl[198]";
connectAttr "Rig_C_body_upper_translateX.o" "ab_rig_CRN.phl[199]";
connectAttr "Rig_C_body_upper_translateY.o" "ab_rig_CRN.phl[200]";
connectAttr "Rig_C_body_upper_translateZ.o" "ab_rig_CRN.phl[201]";
connectAttr "Rig_C_body_upper_rotateX.o" "ab_rig_CRN.phl[202]";
connectAttr "Rig_C_body_upper_rotateY.o" "ab_rig_CRN.phl[203]";
connectAttr "Rig_C_body_upper_rotateZ.o" "ab_rig_CRN.phl[204]";
connectAttr "Rig_C_eye_ctrl_b_rotateY.o" "ab_rig_CRN.phl[205]";
connectAttr "Rig_C_eye_ctrl_a_translateZ.o" "ab_rig_CRN.phl[206]";
connectAttr "Rig_C_eye_ctrl_a_rotateX.o" "ab_rig_CRN.phl[207]";
connectAttr "Rig_C_eye_root_vis.o" "ab_rig_CRN.phl[208]";
connectAttr "Rig_C_eye_root_body_option_parent.o" "ab_rig_CRN.phl[209]";
connectAttr "Rig_C_eye_root_translateX.o" "ab_rig_CRN.phl[210]";
connectAttr "Rig_C_eye_root_translateY.o" "ab_rig_CRN.phl[211]";
connectAttr "Rig_C_eye_root_translateZ.o" "ab_rig_CRN.phl[212]";
connectAttr "Rig_C_eye_root_rotateX.o" "ab_rig_CRN.phl[213]";
connectAttr "Rig_C_eye_root_rotateY.o" "ab_rig_CRN.phl[214]";
connectAttr "Rig_C_eye_root_rotateZ.o" "ab_rig_CRN.phl[215]";
connectAttr "Rig_C_eye_root_scaleX.o" "ab_rig_CRN.phl[216]";
connectAttr "Rig_C_eye_root_scaleY.o" "ab_rig_CRN.phl[217]";
connectAttr "Rig_C_eye_root_scaleZ.o" "ab_rig_CRN.phl[218]";
connectAttr "Rig_L_eye_sub_translateX.o" "ab_rig_CRN.phl[219]";
connectAttr "Rig_L_eye_sub_translateY.o" "ab_rig_CRN.phl[220]";
connectAttr "Rig_L_eye_sub_translateZ.o" "ab_rig_CRN.phl[221]";
connectAttr "Rig_L_eye_sub_rotateX.o" "ab_rig_CRN.phl[222]";
connectAttr "Rig_L_eye_sub_rotateY.o" "ab_rig_CRN.phl[223]";
connectAttr "Rig_L_eye_sub_rotateZ.o" "ab_rig_CRN.phl[224]";
connectAttr "Rig_R_eye_sub_translateX.o" "ab_rig_CRN.phl[225]";
connectAttr "Rig_R_eye_sub_translateY.o" "ab_rig_CRN.phl[226]";
connectAttr "Rig_R_eye_sub_translateZ.o" "ab_rig_CRN.phl[227]";
connectAttr "Rig_R_eye_sub_rotateX.o" "ab_rig_CRN.phl[228]";
connectAttr "Rig_R_eye_sub_rotateY.o" "ab_rig_CRN.phl[229]";
connectAttr "Rig_R_eye_sub_rotateZ.o" "ab_rig_CRN.phl[230]";
connectAttr "Rig_C_pupil_guruguru_rotateZ.o" "ab_rig_CRN.phl[231]";
connectAttr "Rig_Other_sine_tre.o" "ab_rig_CRN.phl[232]";
connectAttr "Rig_Other_sine_strength.o" "ab_rig_CRN.phl[233]";
connectAttr "Rig_Other_eye_type.o" "ab_rig_CRN.phl[234]";
connectAttr "Rig_Other_color.o" "ab_rig_CRN.phl[235]";
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
connectAttr "layerManager.dli[1]" "ab_rig_C:JNT_L1.id";
connectAttr "layerManager.dli[2]" "ab_rig_C:GEO_L1.id";
connectAttr "pasted__renderLayerManager.rlmi[0]" "pasted__defaultRenderLayer.rlid"
		;
connectAttr "Rig_C_pupil_guruguru_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
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
// End of ab_rig_C_status_02_lp.ma
