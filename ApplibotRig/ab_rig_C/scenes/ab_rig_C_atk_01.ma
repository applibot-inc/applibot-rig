//Maya ASCII 2023 scene
//Name: ab_rig_C_atk_01.ma
//Last modified: Tue, Jan 09, 2024 01:02:17 PM
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
fileInfo "UUID" "83DEF97A-40B8-3245-999B-7B93F463CAB1";
createNode transform -s -n "persp";
	rename -uid "D0649C82-4A60-4979-0DB7-D3B196A21C5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 737.07599863491271 160.19061413390284 654.09578357408475 ;
	setAttr ".r" -type "double3" -3.9383527303208217 -671.00000000012278 3.0299814316533962e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96E7F23D-4D3C-11DC-3540-E79848F298EB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".coi" 997.88663885064818;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 25.543449784578883 0 ;
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
	setAttr ".t" -type "double3" 0 87.750934489380867 1001.2424244150875 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2856F259-4D84-67C0-5C3F-2C9E665BBE04";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.2424244150875;
	setAttr ".ow" 580.30675797071558;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 87.750934489380867 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "987E574B-4516-EB42-833C-F4AFA5831738";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.4433210344689 83.163406738575574 -6.7870517747062209 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C019F091-45A6-600E-431D-FF84BDC50775";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.4433210344689;
	setAttr ".ow" 875.84667461631568;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 26.207415028523457 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "slime_picker";
	rename -uid "4B6DF40C-4472-57E7-07EB-6B96EA17A3B8";
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
	rename -uid "2FF59687-4DD6-2AF8-72FF-82865D885C4A";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "89AE55E2-4F4D-C4EE-35FF-35A21CB6437B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7299E9A7-4BAD-1D65-DA78-6F89E81B95CB";
createNode displayLayerManager -n "layerManager";
	rename -uid "91B82675-42D1-3479-CDD8-73A88F62AEB6";
	setAttr -s 3 ".dli[1:2]"  6 7;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "37768B2F-400D-6865-DC0C-0089D4A73C61";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A20D1FE2-45B7-4EA7-5342-6EA978C47CBF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "415A2A73-47B3-288C-ED2C-43B0E59FFE8A";
	setAttr ".g" yes;
createNode reference -n "ab_rig_CRN";
	rename -uid "CE59F228-4F72-FB25-4DDD-9593A14AF84B";
	setAttr -s 255 ".phl";
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
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_CRN"
		"ab_rig_CRN" 0
		"ab_rig_CRN" 289
		2 "|ab_rig_C:All_Grp" "translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp" "rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp" "translate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp" "scale" " -type \"double3\" 1 1 1"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp" "translate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp" 
		"translate" " -type \"double3\" 0 28.83564949035644531 18.67476654052734375"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp" 
		"rotate" " -type \"double3\" -35 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp" "translate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root" "translate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root" "scale" " -type \"double3\" 1 1 1"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp" 
		"scale" " -type \"double3\" 1 1 1"
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
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateX" 
		"ab_rig_CRN.placeHolderList[219]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateY" 
		"ab_rig_CRN.placeHolderList[220]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateZ" 
		"ab_rig_CRN.placeHolderList[221]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateX" 
		"ab_rig_CRN.placeHolderList[222]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateY" 
		"ab_rig_CRN.placeHolderList[223]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateZ" 
		"ab_rig_CRN.placeHolderList[224]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleX" 
		"ab_rig_CRN.placeHolderList[225]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleY" 
		"ab_rig_CRN.placeHolderList[226]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleZ" 
		"ab_rig_CRN.placeHolderList[227]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateX" 
		"ab_rig_CRN.placeHolderList[228]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateY" 
		"ab_rig_CRN.placeHolderList[229]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateZ" 
		"ab_rig_CRN.placeHolderList[230]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateX" 
		"ab_rig_CRN.placeHolderList[231]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateY" 
		"ab_rig_CRN.placeHolderList[232]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateZ" 
		"ab_rig_CRN.placeHolderList[233]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateX" 
		"ab_rig_CRN.placeHolderList[234]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateY" 
		"ab_rig_CRN.placeHolderList[235]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateZ" 
		"ab_rig_CRN.placeHolderList[236]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateX" 
		"ab_rig_CRN.placeHolderList[237]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateY" 
		"ab_rig_CRN.placeHolderList[238]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateZ" 
		"ab_rig_CRN.placeHolderList[239]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[240]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[241]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[242]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[243]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[244]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[245]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[246]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[247]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[248]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[249]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[250]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[251]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_tre" 
		"ab_rig_CRN.placeHolderList[252]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_strength" 
		"ab_rig_CRN.placeHolderList[253]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.eye_type" 
		"ab_rig_CRN.placeHolderList[254]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.color" 
		"ab_rig_CRN.placeHolderList[255]" "";
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
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 0.749684\n                -animateTransition 0\n"
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
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast -40 -aet 100 ";
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
	setAttr -s 12 ".ktv[0:11]"  -40 0 0 0 3 0 6 0 7 0 17 0 20 0 42 0 48 0
		 60 0 88 0 100 0;
	setAttr -s 12 ".kit[3:11]"  9 9 3 18 9 1 1 1 
		1;
	setAttr -s 12 ".kot[3:11]"  9 9 3 18 9 1 1 1 
		1;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_translateY";
	rename -uid "7246C111-4017-A8AD-DD45-D9B4D150BCC3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  -40 0 0 0 2 0 3 0 4 9.5662293079986878 7 100.11626964730672
		 15 122.36878247710573 16 133.15055816583723 17 100.30761588581011 18 74.906869433453977
		 20 69.5254547341614 21 69.5254547341614 22 77.581618241402367 24 115.39166537819598
		 36 164.19021332037607 39 129.45766819490845 43 0 44 0 48 0 60 0 88 0 100 0;
	setAttr -s 22 ".kit[2:21]"  18 1 1 1 1 1 1 9 
		1 1 9 1 1 9 3 3 1 1 1 1;
	setAttr -s 22 ".kot[2:21]"  18 1 1 1 1 1 1 9 
		1 1 9 1 1 9 3 3 1 1 1 1;
	setAttr -s 22 ".kix[0:21]"  1 1 1 1 0.033333333333333298 0.0038300243895638547 
		0.26666666666666672 0.0055829364932461316 0.0013294097484675192 0.0032486176597583297 
		0.033333333333333548 1 0.0021802490530886502 0.0052817229269827041 1 0.0014211145292918955 
		1 1 0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 22 ".kiy[0:21]"  0 0 0 0 25.437981795973062 0.99999266542968979 
		-2.8084999264776229 -0.99998441528861459 -0.99999911633446992 -0.9999947232277282 
		0 0 0.99999762325420882 0.99998605160418252 0 -0.9999989902162375 0 0 0 0 0 0;
	setAttr -s 22 ".kox[0:21]"  1 1 1 1 0.099999999999999978 0.0038300243895637675 
		0.033333333333333548 0.0055829364932461316 0.0013294097484675192 0.0032486176597583297 
		0.033333333333333548 1 0.0021802490530886502 0.0052817229269826868 1 0.0014211145292918955 
		1 1 0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 22 ".koy[0:21]"  0 0 0 0 76.313945387919205 0.99999266542968968 
		-0.35106249080968155 -0.99998441528861459 -0.99999911633446992 -0.9999947232277282 
		0 0 0.99999762325420882 0.99998605160418241 0 -0.9999989902162375 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_translateZ";
	rename -uid "4A5256EA-4F9E-FB3F-0956-419AC3DC01B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 0 0 3 0 6 0 7 0 10 -8.0564056439685974
		 15 -26.854685479895352 16 -22.965517231028635 17 98.533131774391435 18 159.56610032224785
		 20 173.93502441797153 21 173.93502441797153 25 93.89557433225238 37 11.415245854319497
		 43 0 44 0 48 0 60 0 88 0 100 0;
	setAttr -s 20 ".kit[5:19]"  9 1 9 9 9 3 3 9 
		1 9 9 1 1 1 1;
	setAttr -s 20 ".kot[5:19]"  9 1 9 9 9 3 3 9 
		1 9 9 1 1 1 1;
	setAttr -s 20 ".kix[0:19]"  1 1 1 1 1 0.0099294970538387258 0.086561253506670224 
		0.00053168368908239046 0.00036523350372814765 0.0013262254905052832 1 1 0.0032816341879926985 
		0.019627615900187155 0.02043623121292153 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 -0.99995070132894948 0.99624653042876588 
		0.99999985865621743 0.99999993330224157 0.99999912056258755 0 0 -0.99999461542403123 
		-0.9998073597919126 -0.99979115841950306 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  1 1 1 1 1 0.0099294970538387258 0.086561253506670335 
		0.00053168368908239046 0.00036523350372814765 0.0013262254905052832 1 1 0.0032816341879926985 
		0.019627615900187058 0.02043623121292153 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 -0.99995070132894948 0.99624653042876599 
		0.99999985865621743 0.99999993330224157 0.99999912056258755 0 0 -0.99999461542403123 
		-0.99980735979191238 -0.99979115841950306 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_rotateX";
	rename -uid "31491BC1-4A5E-4C6C-3A67-A49AD3762EF2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  -40 0 0 0 3 0 6 0 7 0 10 -3.9671327593310552
		 15 -45.652965315822108 16 -18.212837762242277 17 114.36116431687132 18 114.36116431687132
		 19 114.36116431687132 20 114.36116431687132 21 114.36116431687132 23 94.51016432223517
		 28 -107.38532505119217 35 -297.83684916913955 42 -360 43 -360 48 -360 60 -360 88 -360
		 100 -360;
	setAttr -s 22 ".kit[3:21]"  3 1 9 9 9 3 3 3 
		3 3 9 1 1 3 3 1 1 1 1;
	setAttr -s 22 ".kot[3:21]"  3 1 9 9 9 3 3 3 
		3 3 9 1 1 3 3 1 1 1 1;
	setAttr -s 22 ".kix[0:21]"  1 1 1 1 1 0.31737201817627636 0.62678036599295694 
		0.023864335048387059 1 1 1 1 1 0.060180362618078645 0.060124632135572668 0.10525715370562706 
		1 1 0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 22 ".kiy[0:21]"  0 0 0 0 0 -0.94830111361250513 -0.77919597843272692 
		0.99971520620259569 0 0 0 0 0 -0.99818751943467843 -0.99819087784379301 -0.99444503698987308 
		0 0 0 0 0 0;
	setAttr -s 22 ".kox[0:21]"  1 1 1 1 1 0.31737201817627636 0.62678036599295694 
		0.023864335048387059 1 1 1 1 1 0.060180362618078645 0.060124632135572523 0.10525715370562706 
		1 1 0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 22 ".koy[0:21]"  0 0 0 0 0 -0.94830111361250513 -0.77919597843272692 
		0.99971520620259569 0 0 0 0 0 -0.99818751943467843 -0.99819087784379301 -0.99444503698987308 
		0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_rotateY";
	rename -uid "BC2616DA-46B7-6A4B-64EF-06ACEFA68DAA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  -40 0 0 0 3 0 6 0 7 0 17 0 20 0 42 0 48 0
		 60 0 88 0 100 0;
	setAttr -s 12 ".kit[3:11]"  9 9 3 18 9 1 1 1 
		1;
	setAttr -s 12 ".kot[3:11]"  9 9 3 18 9 1 1 1 
		1;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_rotateZ";
	rename -uid "98687995-4AE3-A27B-1F04-2FB51732426B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  -40 0 0 0 3 0 6 0 7 0 17 0 20 0 42 0 48 0
		 60 0 88 0 100 0;
	setAttr -s 12 ".kit[3:11]"  9 9 3 18 9 1 1 1 
		1;
	setAttr -s 12 ".kot[3:11]"  9 9 3 18 9 1 1 1 
		1;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_Root_001_translateX";
	rename -uid "A7DC08FB-4714-8F8D-8A4F-3F898028F09C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_Root_001_translateY";
	rename -uid "D96F977A-4499-84C5-449E-BFA40D708539";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_Root_001_translateZ";
	rename -uid "B0FD3822-476D-31AB-636B-C4A5552CE12D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateX";
	rename -uid "70DB4C5C-4FE5-A9DA-6969-6F9D737A979D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateY";
	rename -uid "1B0973FD-4893-8CC2-D3B6-DD8C82AF1C69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateZ";
	rename -uid "93724C05-4921-96A5-5053-A7B37687D2F7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_Root_001_scaleX";
	rename -uid "3B54AA32-44EB-859A-D430-52BFCA6743E0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_Root_001_scaleY";
	rename -uid "1D7DC727-43FB-CC89-96C6-DD909C64F54A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_Root_001_scaleZ";
	rename -uid "1930F610-4148-C871-2834-7082742046CA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateX";
	rename -uid "4DAD9164-42CE-618B-DA3F-85B90E568BD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  -40 0 0 0 3 0 7 0 15 0 18 0 20 0 42 0 48 0
		 60 0 88 0 100 0;
	setAttr -s 12 ".kit[3:11]"  9 1 1 1 9 1 1 1 
		1;
	setAttr -s 12 ".kot[3:11]"  9 1 1 1 9 1 1 1 
		1;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 0.099999999999999978 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 0.066666666666666763 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateY";
	rename -uid "34D2AD7C-4699-2C29-C433-77A89255C16D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  -40 -1.9813652261791725 -38 -1.4059843688641784
		 -34 3.9360916195970823 -28 5.3249796313545863 -25 -0.39294825858787608 -18 -1.4059843688641784
		 -14 3.9360916195970823 -8 5.3249796313545863 -5 -0.39294825858787608 0 -1.9813652261791725
		 3 -8.3958110988392178 5 2.0824751800504275 8 -1.9813652261791725 10 3.1310555184953253
		 12 0.57941642322590159 15 1.8434853965378091 16 0.20554936516253708 18 19.187418601210744
		 19 22.564391070952446 20 19.187418601210744 21 22.564391070952446 24 3.2902783862530747
		 26 0 29 6.8674748031211426 32 0 36 3.4337374015605713 40 14.160618025381162 42 19.163273613779829
		 45 0 48 11.149743655465443 52 11.36646193189921 55 -0.39294825858787608 60 -1.9813652261791725
		 62 -1.4059843688641784 66 3.9360916195970823 72 5.3249796313545863 75 -0.39294825858787608
		 82 -1.4059843688641784 86 3.9360916195970823 88 5.1082613549208205 92 5.3249796313545863
		 95 -0.39294825858787608 100 -1.9813652261791725;
	setAttr -s 43 ".kit[11:42]"  18 9 9 9 9 9 1 9 
		9 18 9 1 1 1 18 9 9 3 9 9 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 43 ".kot[11:42]"  18 9 9 9 9 9 1 9 
		9 18 9 1 1 1 18 9 9 3 9 9 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 43 ".kix[0:42]"  0.16666666666666607 0.067670592140005842 
		0.049461761987934956 0.069133625703866733 0.049461761987934942 0.084397114194200387 
		0.049461761987934956 0.069133625703866747 0.036473672630909108 0.16666666666666607 
		0.16666666666666607 1 0.15697456357466877 0.051997000796357655 0.12837179322439543 
		0.3359104623613014 0.0057656090284567566 0.0064345919591960498 1 1 1 0.0073860677167951411 
		1 0.099999999999999978 1 0.018828231580362727 0.012713905375823318 0.011768915995494107 
		1 0.02052390497376828 0.020210681804215671 0.036473672630909108 0.16666666666666607 
		0.067670592140005842 0.049461761987934956 0.069133625703866733 0.049461761987934942 
		0.084397114194200387 0.049461761987934956 0.06666666666666643 0.069133625703866219 
		0.036473672630909108 0.16666666666666607;
	setAttr -s 43 ".kiy[0:42]"  0.46363687378059049 0.99770771820178927 
		0.9987760179845373 -0.99760740865183917 -0.9987760179845373 0.99643219895569968 0.9987760179845373 
		-0.99760740865183928 -0.99933461423329728 0.46363687378059049 0.46363687378059049 
		0 0.98760264600219783 0.99864724097560276 -0.99172611274703926 -0.94189392251793236 
		0.99998337873813226 0.99997929779886863 0 0 0 -0.99997272262981396 0 0 0 0.99982273313600756 
		0.9999191750387102 -0.99993074390994263 0 0.99978936247823114 -0.99979574331010668 
		-0.99933461423329728 0.46363687378059049 0.99770771820178927 0.9987760179845373 -0.99760740865183917 
		-0.9987760179845373 0.99643219895569968 0.9987760179845373 0.9379531813874058 -0.99760740865183917 
		-0.99933461423329728 0.46363687378059049;
	setAttr -s 43 ".kox[0:42]"  0.066666666666667096 0.067670592140006092 
		0.049461761987934956 0.069133625703866733 0.049461761987934942 0.084397114194200387 
		0.049461761987934956 0.069133625703866747 0.036473672630909108 0.066666666666667096 
		0.066666666666667096 1 0.15697456357466877 0.051997000796357655 0.12837179322439543 
		0.3359104623613014 0.0057656090284567566 0.0064345919591960931 1 1 1 0.0073860677167951411 
		1 0.26666666666666605 1 0.018828231580362727 0.012713905375823318 0.011768915995494107 
		1 0.02052390497376828 0.020210681804215671 0.036473672630909108 0.066666666666667096 
		0.067670592140006092 0.049461761987934956 0.069133625703866733 0.049461761987934942 
		0.084397114194200387 0.049461761987934505 0.13333333333333286 0.069133625703866747 
		0.036473672630909108 0.066666666666667096;
	setAttr -s 43 ".koy[0:42]"  0.18545474951223606 0.99770771820178927 
		0.9987760179845373 -0.99760740865183917 -0.9987760179845373 0.99643219895569968 0.9987760179845373 
		-0.99760740865183928 -0.99933461423329728 0.18545474951223606 0.18545474951223606 
		0 0.98760264600219783 0.99864724097560276 -0.99172611274703926 -0.94189392251793236 
		0.99998337873813226 0.99997929779886874 0 0 0 -0.99997272262981396 0 0 0 0.99982273313600756 
		0.9999191750387102 -0.99993074390994263 0 0.99978936247823114 -0.99979574331010668 
		-0.99933461423329728 0.18545474951223606 0.99770771820178927 0.9987760179845373 -0.99760740865183917 
		-0.9987760179845373 0.99643219895569968 0.9987760179845373 1.8759063627748196 -0.99760740865183928 
		-0.99933461423329728 0.18545474951223606;
createNode animCurveTL -n "Rig_C_body_upper_option_translateZ";
	rename -uid "243F249D-4F96-2D4A-DCEA-2EA0BDB154F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  -40 0 0 0 3 0 7 0 15 0 18 0 20 0 42 0 48 0
		 60 0 88 0 100 0;
	setAttr -s 12 ".kit[3:11]"  9 1 1 1 9 1 1 1 
		1;
	setAttr -s 12 ".kot[3:11]"  9 1 1 1 9 1 1 1 
		1;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 0.099999999999999978 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 0.066666666666666763 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateX";
	rename -uid "4DA2B08B-4CE2-680F-F2AD-18A35292C638";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateY";
	rename -uid "BAB2E422-434A-A7E6-C6C3-6BBBDE7972AD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateZ";
	rename -uid "202964BD-430C-C032-61B4-A8BAD20CB645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleX";
	rename -uid "301E75C8-4845-7F12-A26C-4A82CFE01DFB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  -40 1.1090896351909225 -37 1.0992327764965455
		 -34 0.99059732620765018 -28 0.97495763755640041 -24 1.0807495080905241 -17 1.0992327764965455
		 -14 0.99059732620765018 -8 0.97495763755640041 -4 1.0807495080905241 0 1.1090896351909225
		 3 1.1090896351909225 5 0.8 7 1.1090896351909225 10 0.93483394607992121 13 1.2087553647157487
		 15 0.95262541791580346 18 0.53982210926247098 19 0.62407207241061191 20 1.4342377816213672
		 21 1.0665107034587273 22 1 23 1 37 1 40 0.83150007370371803 43 1.0466294204746533
		 46 1.1715498499071919 49 0.97495763755640041 52 0.97495763755640041 56 1.0807495080905241
		 60 1.1090896351909225 63 1.0992327764965455 66 0.99059732620765018 72 0.97495763755640041
		 76 1.0807495080905241 83 1.0992327764965455 86 0.99059732620765018 88 0.97026174067708537
		 92 0.97495763755640041 96 1.0807495080905241 100 1.1090896351909225;
	setAttr -s 40 ".kit[14:39]"  9 9 9 9 1 1 1 1 
		1 9 9 9 9 9 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 40 ".kot[14:39]"  9 9 9 9 1 1 1 1 
		1 9 9 9 9 9 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 40 ".kix[0:39]"  0.1333333333333333 0.96531808811831155 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.96531808811831188 0.8933543944008131 0.1333333333333333 0.1333333333333333 0.06666666666666668 
		1 0.099999999999999978 0.994350580624355 0.24176193630971698 0.37603457510687938 
		0.074330366579761081 0.20961255043573185 0.31689491108878715 0.033333333333333548 
		1 1 0.97388132841876118 0.50696498523433253 0.94137876728119196 0.71315639221702276 
		0.91076121300133162 0.8933543944008131 0.1333333333333333 0.96531808811831155 0.92386747891845511 
		0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 0.06666666666666643 
		0.96531808811831155 0.8933543944008131 0.1333333333333333;
	setAttr -s 40 ".kiy[0:39]"  0.0075730012115975409 -0.26107659556461166 
		-0.38271253101624181 0.26107659556461038 0.32099608217477527 -0.26107659556461033 
		-0.38271253101624197 0.26107659556461044 0.44935278568709935 0.0075730012115975409 
		0.0075730012115975409 -0.00094662515144960935 0 0 0.10614576210102826 -0.97033559460208219 
		-0.92660563257741357 0.99723367201680391 0.97778452570074337 -0.9484606556552726 
		-0.024941513797022585 0 0 0.22705760977626196 0.86196664885966034 -0.33735147326215076 
		-0.7010049644902665 0.41293342428573543 0.44935278568709935 0.0075730012115975409 
		-0.26107659556461166 -0.38271253101624181 0.26107659556461038 0.32099608217477527 
		-0.26107659556461033 -0.38271253101624197 -0.012961118192747034 0.26107659556461094 
		0.44935278568709935 0.0075730012115975409;
	setAttr -s 40 ".kox[0:39]"  0.10000000000000002 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.96531808811831188 0.8933543944008131 0.10000000000000002 0.9983909135686263 0.06666666666666668 
		1 0.13333333333333336 0.994350580624355 0.24176193630971698 0.37603457510687938 0.074330366579761081 
		0.20961255043573077 0.31689491108878576 0.033333333333333215 1 1 0.97388132841876118 
		0.50696498523433253 0.94137876728119196 0.71315639221702276 0.91076121300133162 0.8933543944008131 
		0.10000000000000002 0.96531808811831188 0.92386747891845511 0.96531808811831188 0.94708052204046778 
		0.96531808811831188 0.92386747891845611 0.13333333333333286 0.96531808811831188 0.8933543944008131 
		0.10000000000000002;
	setAttr -s 40 ".koy[0:39]"  0.0056797509086976561 -0.26107659556461033 
		-0.38271253101624181 0.26107659556461038 0.32099608217477527 -0.26107659556461033 
		-0.38271253101624197 0.26107659556461044 0.44935278568709935 0.0056797509086976561 
		0.05670611698576887 -0.00094662515144960935 0 0 0.10614576210102826 -0.97033559460208219 
		-0.92660563257741357 0.99723367201680391 0.97778452570074381 -0.94846065565527304 
		-0.024941513797023251 0 0 0.22705760977626196 0.86196664885966034 -0.33735147326215076 
		-0.7010049644902665 0.41293342428573543 0.44935278568709935 0.0056797509086976561 
		-0.26107659556461033 -0.38271253101624181 0.26107659556461038 0.32099608217477527 
		-0.26107659556461033 -0.38271253101623937 -0.025922236385494402 0.26107659556461044 
		0.44935278568709935 0.0056797509086976561;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleY";
	rename -uid "32E1525A-47BA-EFBF-17B7-E7A37A23BC11";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleZ";
	rename -uid "FBEC6D0C-4851-97DC-2278-488FE1C38B87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  -40 1.1090896351909225 -37 1.0992327764965455
		 -34 0.99059732620765018 -28 0.97495763755640041 -24 1.0807495080905241 -17 1.0992327764965455
		 -14 0.99059732620765018 -8 0.97495763755640041 -4 1.0807495080905241 0 1.1090896351909225
		 3 1.1090896351909225 5 0.8 7 1.1090896351909225 10 0.93483394607992121 13 1.2087553647157487
		 15 0.95262541791580346 18 0.53982210926247098 19 0.62407207241061191 20 1.4342377816213672
		 21 1.0665107034587273 22 1 23 1 37 1 40 0.83150007370371803 43 1.0466294204746533
		 46 1.1715498499071919 49 0.97495763755640041 52 0.97495763755640041 56 1.0807495080905241
		 60 1.1090896351909225 63 1.0992327764965455 66 0.99059732620765018 72 0.97495763755640041
		 76 1.0807495080905241 83 1.0992327764965455 86 0.99059732620765018 88 0.97026174067708537
		 92 0.97495763755640041 96 1.0807495080905241 100 1.1090896351909225;
	setAttr -s 40 ".kit[14:39]"  9 9 9 9 1 1 1 1 
		1 9 9 9 9 9 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 40 ".kot[14:39]"  9 9 9 9 1 1 1 1 
		1 9 9 9 9 9 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 40 ".kix[0:39]"  0.1333333333333333 0.96531808811831155 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.96531808811831188 0.8933543944008131 0.1333333333333333 0.1333333333333333 0.06666666666666668 
		1 0.099999999999999978 0.994350580624355 0.24176193630971698 0.37603457510687938 
		0.074330366579761081 0.20961255043573185 0.31689491108878715 0.033333333333333548 
		1 1 0.97388132841876118 0.50696498523433253 0.94137876728119196 0.71315639221702276 
		0.91076121300133162 0.8933543944008131 0.1333333333333333 0.96531808811831155 0.92386747891845511 
		0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 0.06666666666666643 
		0.96531808811831155 0.8933543944008131 0.1333333333333333;
	setAttr -s 40 ".kiy[0:39]"  0.0075730012115975409 -0.26107659556461166 
		-0.38271253101624181 0.26107659556461038 0.32099608217477527 -0.26107659556461033 
		-0.38271253101624197 0.26107659556461044 0.44935278568709935 0.0075730012115975409 
		0.0075730012115975409 -0.00094662515144960935 0 0 0.10614576210102826 -0.97033559460208219 
		-0.92660563257741357 0.99723367201680391 0.97778452570074337 -0.9484606556552726 
		-0.024941513797022585 0 0 0.22705760977626196 0.86196664885966034 -0.33735147326215076 
		-0.7010049644902665 0.41293342428573543 0.44935278568709935 0.0075730012115975409 
		-0.26107659556461166 -0.38271253101624181 0.26107659556461038 0.32099608217477527 
		-0.26107659556461033 -0.38271253101624197 -0.012961118192747034 0.26107659556461094 
		0.44935278568709935 0.0075730012115975409;
	setAttr -s 40 ".kox[0:39]"  0.10000000000000002 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.96531808811831188 0.8933543944008131 0.10000000000000002 0.9983909135686263 0.06666666666666668 
		1 0.13333333333333336 0.994350580624355 0.24176193630971698 0.37603457510687938 0.074330366579761081 
		0.20961255043573077 0.31689491108878576 0.033333333333333215 1 1 0.97388132841876118 
		0.50696498523433253 0.94137876728119196 0.71315639221702276 0.91076121300133162 0.8933543944008131 
		0.10000000000000002 0.96531808811831188 0.92386747891845511 0.96531808811831188 0.94708052204046778 
		0.96531808811831188 0.92386747891845611 0.13333333333333286 0.96531808811831188 0.8933543944008131 
		0.10000000000000002;
	setAttr -s 40 ".koy[0:39]"  0.0056797509086976561 -0.26107659556461033 
		-0.38271253101624181 0.26107659556461038 0.32099608217477527 -0.26107659556461033 
		-0.38271253101624197 0.26107659556461044 0.44935278568709935 0.0056797509086976561 
		0.05670611698576887 -0.00094662515144960935 0 0 0.10614576210102826 -0.97033559460208219 
		-0.92660563257741357 0.99723367201680391 0.97778452570074381 -0.94846065565527304 
		-0.024941513797023251 0 0 0.22705760977626196 0.86196664885966034 -0.33735147326215076 
		-0.7010049644902665 0.41293342428573543 0.44935278568709935 0.0056797509086976561 
		-0.26107659556461033 -0.38271253101624181 0.26107659556461038 0.32099608217477527 
		-0.26107659556461033 -0.38271253101623937 -0.025922236385494402 0.26107659556461044 
		0.44935278568709935 0.0056797509086976561;
createNode animCurveTL -n "Rig_C_body_middle_001_translateX";
	rename -uid "52ABCD97-4958-CE7D-699D-5094DB24B472";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateY";
	rename -uid "C4D0AE6E-4EF6-DAD7-32D7-E88E807B76F7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateZ";
	rename -uid "6C22872B-4469-77BE-9FFD-A7AD4391D422";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateX";
	rename -uid "E91BBFD5-430D-0A80-FE71-BFBD22EE672D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateY";
	rename -uid "F1C0FE8B-4F94-A777-CBD6-94AC4D2AF333";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateZ";
	rename -uid "080979B3-4564-36A5-06EA-84926A0AA332";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateX";
	rename -uid "D07D8B52-4820-DC00-B28D-2AAC421B1EE7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 -3.0910929707879351 37 -3.0910929707879351 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 16 ".kit[3:15]"  18 9 18 9 9 18 18 18 
		3 1 1 1 1;
	setAttr -s 16 ".kot[3:15]"  18 9 18 9 9 18 18 18 
		3 1 1 1 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateY";
	rename -uid "859B2E7F-4C14-9C06-023A-1C83FF295E29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 3.37993902547576
		 20 3.37993902547576 30 0 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 0.049250713288856836 0.12716657294789405 
		1 1 1 0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0.99878644726514931 -0.99188137532907017 
		0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 0.049250713288856836 0.12716657294789405 
		1 1 1 0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0.99878644726514931 -0.99188137532907017 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateZ";
	rename -uid "BA415433-437F-9DBC-ED4D-92B324CECAAB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateX";
	rename -uid "DC1C24A8-4871-41D7-4C09-4DA55FC7406A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateY";
	rename -uid "CB39A659-4C07-7DC9-1016-919FCAB1460F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateZ";
	rename -uid "459E3EDF-401A-F633-DD31-6BB9CA7BFDBA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_translateX";
	rename -uid "F142CF32-4CC3-6260-FB47-449C0921248E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 8 0 11 0 15 0 16 0 20 0 38 0
		 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_translateY";
	rename -uid "048C7A01-4D43-DBC0-2CFB-6F9B3E8308A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  -40 0.70299218443208922 -36 -1.5845955273810386
		 -30 -2 -27 0.35149609221604461 -20 0.70299218443208922 -16 -1.5845955273810386 -10 -2
		 -7 0.35149609221604461 0 0.70299218443208922 3 3.4825853959181092 4 -2.6899195723288423
		 5 -16.911350208724926 8 0.70299218443208922 11 -4.8748829067342978 15 0.70299218443208922
		 16 0.70299218443208922 17 -24.515765829520021 18 -29.458459087572834 19 -10.314694486760683
		 20 0.70299218443208922 22 -5.8898028881723343 27 -1.1907874032879207 38 0 41 -8.1628496736811389
		 42 -5.0108435844440606 43 -2.203654455502889 48 -2.203654455502889 50 -2 53 0.35149609221604461
		 60 0.70299218443208922 64 -1.5845955273810386 70 -2 73 0.35149609221604461 80 0.70299218443208922
		 84 -1.5845955273810386 88 -2.203654455502889 90 -2 93 0.35149609221604461 100 0.70299218443208922;
	setAttr -s 39 ".kit[10:38]"  18 18 9 9 9 18 9 9 
		9 1 1 1 18 18 9 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 39 ".kot[10:38]"  18 18 9 9 9 18 9 9 
		9 1 1 1 18 18 9 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 39 ".kix[0:38]"  0.13442100089585843 0.12239296928915726 
		0.15312400083013245 0.12239296928915726 0.18607738566346338 0.12239296928915729 0.15312400083013245 
		0.12239296928915723 0.13442100089585843 0.13442100089585843 0.0032689281638292184 
		1 0.016613877725457575 1 0.029866627119032742 1 0.0022103214866734007 0.0046944297697357508 
		0.0022103214866734007 1 1 0.16666666666666674 1 1 0.011186492947682508 0.99780469765879765 
		0.99780469765879731 0.15312400083013164 0.12239296928915723 0.13442100089585843 0.12239296928915726 
		0.15312400083013245 0.12239296928915726 0.18607738566346338 0.12239296928915729 0.99780469765879765 
		0.15312400083013164 0.12239296928915723 0.13442100089585843;
	setAttr -s 39 ".kiy[0:38]"  -0.99092431321375685 -0.99248171825408626 
		0.98820698255465378 0.99248171825408626 -0.98253509176245235 -0.99248171825408626 
		0.98820698255465378 0.99248171825408626 -0.99092431321375685 -0.99092431321375685 
		-0.99999465704005619 0 0.99986198000870274 0 0.99955389278644324 0 -0.99999755723647921 
		0.99998898110386059 0.99999755723647921 0 0 1.632700270860532 0 0 0.99993742923021511 
		-0.066225262023152459 -0.066225262023158163 0.98820698255465389 0.99248171825408626 
		-0.99092431321375685 -0.99248171825408626 0.98820698255465378 0.99248171825408626 
		-0.98253509176245235 -0.99248171825408626 -0.066225262023152459 0.98820698255465389 
		0.99248171825408626 -0.99092431321375685;
	setAttr -s 39 ".kox[0:38]"  0.13442100089585843 0.12239296928915726 
		0.15312400083013245 0.12239296928915726 0.18607738566346338 0.12239296928915729 0.15312400083013245 
		0.12239296928915723 0.13442100089585843 0.13442100089585843 0.0032689281638292184 
		1 0.016613877725457575 1 0.029866627119032742 1 0.0022103214866734007 0.0046944297697357508 
		0.0022103214866734007 1 1 0.49999999999999989 1 1 0.011186492947682508 0.99780469765879853 
		0.99780469765879853 0.15312400083013245 0.12239296928915723 0.13442100089585843 0.12239296928915726 
		0.15312400083013245 0.12239296928915726 0.18607738566346338 0.12239296928915772 0.99780469765879853 
		0.15312400083013245 0.12239296928915723 0.13442100089585843;
	setAttr -s 39 ".koy[0:38]"  -0.99092431321375685 -0.99248171825408626 
		0.98820698255465378 0.99248171825408626 -0.98253509176245235 -0.99248171825408626 
		0.98820698255465378 0.99248171825408626 -0.99092431321375685 -0.99092431321375685 
		-0.99999465704005619 0 0.99986198000870274 0 0.99955389278644324 0 -0.99999755723647921 
		0.99998898110386059 0.99999755723647921 0 0 4.8981008125815988 0 0 0.99993742923021511 
		-0.066225262023141232 -0.066225262023141232 0.98820698255465378 0.99248171825408626 
		-0.99092431321375685 -0.99248171825408626 0.98820698255465378 0.99248171825408626 
		-0.98253509176245235 -0.99248171825408615 -0.066225262023141232 0.98820698255465378 
		0.99248171825408626 -0.99092431321375685;
createNode animCurveTL -n "Rig_C_body_under_translateZ";
	rename -uid "B3389FA0-47D8-59DD-F222-F9AE28B74A3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 8 0 11 0 15 0 16 0 20 0 38 0
		 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_rotateX";
	rename -uid "BC202684-4246-B0D8-1105-7C8535E38C5C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 8 0 11 0 15 0 16 0 20 0 38 0
		 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_rotateY";
	rename -uid "CC6960EE-4403-4B82-3419-FABB6606C529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 8 0 11 0 15 0 16 0 20 0 38 0
		 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_rotateZ";
	rename -uid "712BBBBA-4C2A-4E92-9C94-06AC99A063F1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 8 0 11 0 15 0 16 0 20 0 38 0
		 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 9 18 18 18 9 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateX";
	rename -uid "7E3D47D8-460B-C3C1-017A-7CABBCC43130";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  -40 0 0 0 3 0 7 0 17 0 20 0 30 0 34 0 42 0
		 48 0 60 0 88 0 100 0;
	setAttr -s 13 ".kit[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kot[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 0.93333333333333401 1 
		0.93333333333333401 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 0.39999999999999991 1 
		0.39999999999999991 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateY";
	rename -uid "1DA1CF38-457B-FBE9-C3F1-84961B63A503";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 7 0 17 0 20 0 30 0 34 -1.0650811804526201
		 37 -1.0650811804526201 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateZ";
	rename -uid "74D9D851-486D-AB62-41A5-67B11FBE9391";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  -40 0 0 0 3 0 7 0 17 0 20 0 30 0 34 0 42 0
		 48 0 60 0 88 0 100 0;
	setAttr -s 13 ".kit[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kot[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 0.93333333333333401 1 
		0.93333333333333401 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 0.39999999999999991 1 
		0.39999999999999991 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotateX";
	rename -uid "B6F4EF36-4A03-2CB6-98B3-38B71C01FCE7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  -40 0 0 0 3 0 7 0 17 0 20 0 30 0 34 0 42 0
		 48 0 60 0 88 0 100 0;
	setAttr -s 13 ".kit[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kot[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 0.93333333333333401 1 
		0.93333333333333401 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 0.39999999999999991 1 
		0.39999999999999991 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotateY";
	rename -uid "369E1EA5-40A7-833F-4F53-ACB187E36B6A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  -40 0 0 0 3 0 7 0 17 0 20 0 30 0 34 0 42 0
		 48 0 60 0 88 0 100 0;
	setAttr -s 13 ".kit[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kot[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 0.93333333333333401 1 
		0.93333333333333401 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 0.39999999999999991 1 
		0.39999999999999991 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotateZ";
	rename -uid "98E2BA1E-4939-C727-B6FD-8A88CA81C6DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  -40 0 0 0 3 0 7 0 17 0 20 0 30 0 34 0 42 0
		 48 0 60 0 88 0 100 0;
	setAttr -s 13 ".kit[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kot[3:12]"  9 9 18 18 18 3 1 1 
		1 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 0.93333333333333401 1 
		0.93333333333333401 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 0.39999999999999991 1 
		0.39999999999999991 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateX";
	rename -uid "EFAD790C-4630-F497-77CF-0391E1F3B3B4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateY";
	rename -uid "77A9B5AE-401D-2ED2-0BEC-E6B89B79A7C8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateZ";
	rename -uid "7AE8A7AF-4FC1-AC98-74C7-3394A05428D4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateX";
	rename -uid "9FD6DD54-4F58-93C4-6D9A-B79D3F834360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateY";
	rename -uid "8E372414-4925-8E59-C729-C4A1577E5677";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateZ";
	rename -uid "A3942490-41F9-683C-DB51-56AF1F7CF6E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateX";
	rename -uid "9EC3A45D-425C-9B7A-ABEC-FF8567A0D3EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateY";
	rename -uid "57D0C841-4238-DDF1-06D9-589E1A7F8E7A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateZ";
	rename -uid "CB251FD0-4F98-7816-67F9-D69852734706";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateX";
	rename -uid "45390885-45FC-A0E0-512E-16A56F26D3D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateY";
	rename -uid "83272313-45D9-5653-6D5F-8195B2214331";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateZ";
	rename -uid "4F5638DB-4017-EAC2-C07A-4C92FD40FCC0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_Root_002_translateX";
	rename -uid "A6FE06E0-414A-A978-177C-D891637C062E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_Root_002_translateY";
	rename -uid "734ADA92-4027-3E2B-FCB7-CBB200466782";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_Root_002_translateZ";
	rename -uid "AC9666FB-41ED-AB5B-79F0-908A9A023534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateX";
	rename -uid "B8B1E7F4-4B4B-F810-0527-50823060C7F9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  -40 0 -38 0 -35 2 -28 2 -25 0 -18 0 -15 -1.5000000000000002
		 -8 -1.5000000000000002 -5 0 0 0 3 0 7 0 17 0 20 0 42 0 48 -1.7571428571428567 52 -1.5000000000000002
		 55 0 60 0 62 0 65 2 72 2 75 0 82 0 85 -1.5000000000000002 88 -1.7571428571428567
		 92 -1.5000000000000002 95 0 100 0;
	setAttr -s 29 ".kit[2:28]"  9 9 1 1 1 1 1 1 
		1 9 9 18 9 1 1 1 1 1 9 9 1 1 1 1 1 
		1 1;
	setAttr -s 29 ".kot[2:28]"  9 9 1 1 1 1 1 1 
		1 9 9 18 9 1 1 1 1 1 9 9 1 1 1 1 1 
		1 1;
	setAttr -s 29 ".kix[0:28]"  0.16666666666666607 1 0.9945615750429232 
		0.9945615750429232 1 1 0.99692994458001138 0.99692994458001138 1 0.16666666666666607 
		0.16666666666666607 1 1 1 0.99946059641504126 0.099999999999999645 0.99692994458001127 
		1 0.16666666666666607 1 0.9945615750429232 0.9945615750429232 1 1 0.99692994458001138 
		0.099999999999999645 0.99692994458001127 1 0.16666666666666607;
	setAttr -s 29 ".kiy[0:28]"  0 0 0.10415024458991808 -0.10415024458991805 
		0 0 -0.078298694750906089 0.078298694750906089 0 0 0 0 0 0 -0.032840770601338921 
		-0.001121997376282078 0.078298694750906228 0 0 0 0.10415024458991815 -0.10415024458991801 
		0 0 -0.078298694750906089 -0.001121997376282078 0.078298694750906228 0 0;
	setAttr -s 29 ".kox[0:28]"  0.066666666666667096 1 0.9945615750429232 
		0.9945615750429232 1 1 0.99692994458001138 0.99692994458001138 1 0.066666666666667096 
		0.066666666666667096 1 1 1 0.99946059641504126 0.13333333333333286 0.99692994458001138 
		1 0.066666666666667096 1 0.9945615750429232 0.9945615750429232 1 1 0.99692994458001138 
		0.13333333333333286 0.99692994458001138 1 0.066666666666667096;
	setAttr -s 29 ".koy[0:28]"  0 0 0.10415024458991808 -0.10415024458991805 
		0 0 -0.078298694750906089 0.078298694750906089 0 0 0 0 0 0 -0.032840770601338921 
		-0.0014959965017094304 0.078298694750906089 0 0 0 0.10415024458991815 -0.10415024458991801 
		0 0 -0.078298694750906062 -0.0014959965017094304 0.078298694750906089 0 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateY";
	rename -uid "A903280D-406E-F3D5-CEEE-5B86BC83DF83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateZ";
	rename -uid "49E6E6C9-4B5C-42F7-1E38-A085C2BB9842";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  -40 0 -38 0 -35 2 -28 2 -25 0 -18 0 -15 -2
		 -8 -2 -5 0 0 0 3 0 7 0 17 0 20 0 42 0 48 -2.3428571428571421 52 -2 55 0 60 0 62 0
		 65 2 72 2 75 0 82 0 85 -2 88 -2.3428571428571421 92 -2 95 0 100 0;
	setAttr -s 29 ".kit[11:28]"  9 9 18 9 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kot[11:28]"  9 9 18 9 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kix[0:28]"  0.16666666666666607 1 0.9945615750429232 
		0.9945615750429232 1 1 0.9945615750429232 0.9945615750429232 1 0.16666666666666607 
		0.16666666666666607 1 1 1 0.99904166322819254 0.099999999999999645 0.99456157504292309 
		1 0.16666666666666607 1 0.9945615750429232 0.9945615750429232 1 1 0.9945615750429232 
		0.099999999999999645 0.99456157504292309 1 0.16666666666666607;
	setAttr -s 29 ".kiy[0:28]"  0 0 0.10415024458991805 -0.10415024458991805 
		0 0 -0.10415024458991805 0.10415024458991805 0 0 0 0 0 0 -0.043769340116646425 -0.0014959965017094304 
		0.10415024458991834 0 0 0 0.10415024458991805 -0.10415024458991805 0 0 -0.10415024458991805 
		-0.0014959965017094304 0.10415024458991834 0 0;
	setAttr -s 29 ".kox[0:28]"  0.066666666666667096 1 0.9945615750429232 
		0.9945615750429232 1 1 0.9945615750429232 0.9945615750429232 1 0.066666666666667096 
		0.066666666666667096 1 1 1 0.99904166322819254 0.13333333333333286 0.9945615750429232 
		1 0.066666666666667096 1 0.9945615750429232 0.9945615750429232 1 1 0.9945615750429232 
		0.13333333333333286 0.9945615750429232 1 0.066666666666667096;
	setAttr -s 29 ".koy[0:28]"  0 0 0.10415024458991805 -0.10415024458991805 
		0 0 -0.10415024458991805 0.10415024458991805 0 0 0 0 0 0 -0.043769340116646425 -0.0019946620022792683 
		0.10415024458991805 0 0 0 0.10415024458991805 -0.10415024458991805 0 0 -0.10415024458991815 
		-0.0019946620022792683 0.10415024458991805 0 0;
createNode animCurveTL -n "Rig_C_body_upper_translateX";
	rename -uid "EE0FE728-4F20-05A0-C1AF-EF99E10F5A5B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 7 0 17 0 19 0 20 0 21 0 39 0
		 43 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_translateY";
	rename -uid "E4999609-4732-67D3-A7D4-84BEC77FD4BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 7 0 17 0 19 0 20 -8.9139512579877938
		 21 -8.8700428485699252 23 0 39 0 41 8.7949850888058609 43 0 60 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 18 18 1 1 18 
		18 3 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 18 18 1 1 18 
		18 3 1;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.2453193265067137 1 1 1 1 0;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.9694423283735305 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  0 1 1 1 1 0.24531932650671412 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0.9694423283735305 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_translateZ";
	rename -uid "2E58F9B0-48B8-B1B2-303D-728654000111";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 7 0 17 0 19 0 20 0 21 0 39 0
		 43 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateX";
	rename -uid "9C358F05-4931-2E14-2100-04A3959C8A78";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 7 0 17 0 19 0 20 0 21 0 39 0
		 43 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateY";
	rename -uid "A59EB4D3-4E12-DBB5-6A4D-F797A81202D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 7 0 17 0 19 0 20 0 21 0 39 0
		 43 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateZ";
	rename -uid "7F8CF65F-4257-73AD-6719-BA9831011F1E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 0 0 3 0 7 0 17 0 19 0 20 0 21 0 39 0
		 43 0 48 0 60 0 88 0 100 0;
	setAttr -s 14 ".kit[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kot[3:13]"  9 9 18 18 18 18 3 1 
		1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateX";
	rename -uid "208FD1F5-4D66-4665-9FA0-F3995F8BFBA0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateY";
	rename -uid "146ECB15-46A9-9049-737A-E2933EEE46A3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateZ";
	rename -uid "E8EBA729-416B-6D1F-0BEB-B98FD81B835E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateX";
	rename -uid "71E84204-4EB6-E9D2-9518-D088136A28F6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateY";
	rename -uid "D671D76F-46F2-DBE3-23A3-AA87978969B4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateZ";
	rename -uid "4242E691-4A1E-5EF5-C57D-22A897FAB667";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateX";
	rename -uid "3DC06B2D-486D-F9E4-DD89-18BA2EE2070A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 8 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateY";
	rename -uid "82E1217B-4F37-B022-96A8-D7ABD4B05404";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  -40 -0.70299218443208922 -36 1.3928703861722873
		 -30 1.8082748587912487 -27 -0.35149609221604461 -20 -0.70299218443208922 -16 1.3928703861722873
		 -10 1.8082748587912487 -7 -0.35149609221604461 0 -0.70299218443208922 3 -2.6273259462300933
		 4 -7.2320723328108523 5 -30.150169342855804 7 -9.7636663717494478 8 -4.5130833835696453
		 10 -7.016519136609265 12 -2.995949187651024 15 -5.2627541056221707 16 -3.7786022839687998
		 17 -31.155922712275554 18 -35.106324519998367 19 -19.981249559802979 20 6.7010454391465135
		 21 -19.981249559802979 24 -4.7003976946472541 26 0 29 -6.8674748031211426 32 0 36 -3.4337374015605713
		 40 -13.778653754688889 42 -11.900170461788505 43 0 48 1.9844723804914028 50 1.8082748587912487
		 53 -0.35149609221604461 60 -0.70299218443208922 64 1.3928703861722873 70 1.8082748587912487
		 73 -0.35149609221604461 80 -0.70299218443208922 84 1.3928703861722873 88 1.9844723804914028
		 90 1.8082748587912487 93 -0.35149609221604461 100 -0.70299218443208922;
	setAttr -s 44 ".kit[9:43]"  9 9 9 9 9 9 9 9 
		9 18 9 9 9 18 9 1 1 1 18 18 18 3 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kot[9:43]"  9 9 9 9 9 9 9 9 
		9 18 9 9 9 18 9 1 1 1 18 18 18 3 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kix[0:43]"  0.1344210008958584 0.13158104381853558 
		0.16949384067798812 0.13158104381853558 0.20570513403010379 0.13158104381853558 0.16949384067798812 
		0.13158104381853555 0.1344210008958584 0.020417200677805971 0.0024222232468310723 
		0.039470023220668067 0.0039005696448393529 0.03637730493734128 0.087547548055410193 
		0.094607377588497271 0.16794107797286942 0.0025746731392481789 0.0028126422835124537 
		0.0059657655665809666 0.0015946131500751564 1 1 0.0083408631961237982 1 1 1 0.019349984680546252 
		1 0.011829047143789018 1 0.13333333333333286 0.16949384067798709 0.13158104381853555 
		0.1344210008958584 0.13158104381853558 0.16949384067798812 0.13158104381853558 0.20570513403010379 
		0.13158104381853558 0.13333333333333286 0.16949384067798709 0.13158104381853555 0.1344210008958584;
	setAttr -s 44 ".kiy[0:43]"  0.99092431321375674 0.99130541656324289 
		-0.98553124657325031 -0.99130541656324289 0.97861401882134158 0.99130541656324289 
		-0.98553124657325031 -0.991305416563243 0.99092431321375674 -0.99979154723196284 
		-0.99999706641296837 -0.99922075502211227 0.99999239274928764 0.99933812680468448 
		0.99616034192768677 0.9955146629285917 -0.98579703505808469 -0.99999668552361998 
		-0.9999960445138697 0.99998220466226528 0.99999872860364247 0 0 0.99996521439555264 
		0 0 0 -0.99981277151917936 0 0.99993003437424066 0 0.034412814342633213 -0.98553124657325053 
		-0.991305416563243 0.99092431321375674 0.99130541656324289 -0.98553124657325031 -0.99130541656324289 
		0.97861401882134158 0.99130541656324289 0.034412814342633213 -0.98553124657325053 
		-0.991305416563243 0.99092431321375674;
	setAttr -s 44 ".kox[0:43]"  0.1344210008958584 0.13158104381853558 
		0.16949384067798812 0.13158104381853558 0.20570513403010379 0.13158104381853558 0.16949384067798812 
		0.13158104381853555 0.1344210008958584 0.020417200677805971 0.0024222232468310723 
		0.039470023220668067 0.0039005696448393529 0.03637730493734128 0.087547548055410193 
		0.094607377588497271 0.16794107797286942 0.0025746731392481789 0.0028126422835124537 
		0.0059657655665809666 0.0015946131500751564 1 1 0.0083408631961237982 1 1 1 0.019349984680546252 
		1 0.011829047143789018 1 0.066666666666667762 0.16949384067798812 0.13158104381853555 
		0.1344210008958584 0.13158104381853558 0.16949384067798812 0.13158104381853558 0.20570513403010379 
		0.13158104381853661 0.066666666666667762 0.16949384067798812 0.13158104381853555 
		0.1344210008958584;
	setAttr -s 44 ".koy[0:43]"  0.99092431321375674 0.99130541656324289 
		-0.98553124657325031 -0.99130541656324289 0.97861401882134158 0.99130541656324289 
		-0.98553124657325031 -0.991305416563243 0.99092431321375674 -0.99979154723196284 
		-0.99999706641296837 -0.99922075502211227 0.99999239274928764 0.99933812680468448 
		0.99616034192768677 0.9955146629285917 -0.98579703505808469 -0.99999668552361998 
		-0.9999960445138697 0.99998220466226528 0.99999872860364247 0 0 0.99996521439555264 
		0 0 0 -0.99981277151917936 0 0.99993003437424066 0 0.017206407171316274 -0.98553124657325031 
		-0.991305416563243 0.99092431321375674 0.99130541656324289 -0.98553124657325031 -0.99130541656324289 
		0.97861401882134158 0.99130541656324278 0.017206407171316274 -0.98553124657325031 
		-0.991305416563243 0.99092431321375674;
createNode animCurveTL -n "Rig_C_body_under_option_translateZ";
	rename -uid "D279F2E9-4430-0AFB-D3D7-19950CBF45DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 8 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateX";
	rename -uid "6E69D07D-43EF-7705-C46B-8B8302833C8B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 8 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateY";
	rename -uid "766306D5-4C15-0723-9468-42AACE84B527";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 8 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateZ";
	rename -uid "FE14FDA1-4BDE-C470-D9EC-5BAAFF891B50";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 8 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleX";
	rename -uid "529A1B7A-4F5B-F401-F406-1592B307CDF9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  -40 1.1062157443090448 -39 1.0992327764965455
		 -36 0.99059732620765018 -30 0.97495763755640041 -26 1.0807495080905241 -19 1.0992327764965455
		 -16 0.99059732620765018 -10 0.97495763755640041 -6 1.0807495080905241 -3 1.1057148632680387
		 -1 1.1093789797058808 0 1.1062157443090448 3 1.2863506680642338 4 1.2384468397978614
		 5 0.70384615384615368 6 0.8 8 1.1062157443090448 10 0.93483394607992121 13 1.205881473833871
		 15 0.94975152703392574 17 0.53852885836562592 19 0.38213032895743693 20 0.82946258356637592
		 21 0.77245340917318051 22 0.79699782642049066 24 1 37 1 40 0.83150007370371803 42 0.99586445341887631
		 45 1.3165896223430269 48 1.01957207663945 50 0.97495763755640041 54 1.0807495080905241
		 57 1.1057148632680387 59 1.1093789797058808 60 1.1062157443090448 61 1.0992327764965455
		 64 0.99059732620765018 70 0.97495763755640041 74 1.0807495080905241 81 1.0992327764965455
		 84 0.99059732620765018 88 0.96315664995352968 90 0.97495763755640041 94 1.0807495080905241
		 97 1.1057148632680387 99 1.1093789797058808 100 1.1062157443090448;
	setAttr -s 48 ".kit[12:47]"  9 1 1 1 1 1 9 9 
		9 9 9 9 9 1 1 9 9 9 9 9 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kot[12:47]"  9 1 1 1 1 1 9 9 
		9 9 9 9 9 1 1 9 9 9 9 9 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kix[0:47]"  0.98888446156784038 0.9653180881183131 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.87236164127150828 0.98556503858392064 0.066666666666666652 
		0.98888446156784038 0.71003554577009809 0.20139977030339415 0.15032408099737404 0.37092736596144699 
		0.69981977991390742 0.066666666666666596 0.99601829189518654 0.19592229573353279 
		0.22867433013763541 0.32505515144720826 0.16836060886884449 0.89906353170977338 0.40233239968320378 
		1 1 0.99969229266455506 0.32493528154136969 0.99304754056175626 0.43845958385000006 
		0.956262909596021 0.87236164127150828 0.98556503858392064 0.066666666666666652 0.98888446156784038 
		0.9653180881183131 0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 
		0.92386747891845511 0.13333333333333286 0.95019112989512677 0.87236164127150828 0.98556503858392064 
		0.066666666666666652 0.98888446156784038;
	setAttr -s 48 ".kiy[0:47]"  -0.14868598343382053 -0.2610765955646055 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624181 0.31166779857505578 0.48886109155677349 0.16929723778335812 
		-0.0027515067139216587 -0.14868598343382053 0.70416583539884892 -0.97950912835038961 
		-0.9886367738822458 0.92866188097762614 0.71431944929509672 0 0.089149101006094536 
		-0.98061942364737098 -0.9735029793154738 0.94569506106230283 0.98572547161028157 
		-0.43781818823519564 0.91549365927086279 0 0 -0.024805644258627673 0.94573625435933828 
		0.11771398465877755 -0.89875090727636242 0.29250854300507589 0.48886109155677349 
		0.16929723778335812 -0.0027515067139216587 -0.14868598343382053 -0.2610765955646055 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624181 0.0045091862270588701 0.31166779857505739 0.48886109155677349 
		0.16929723778335812 -0.0027515067139216587 -0.14868598343382053;
	setAttr -s 48 ".kox[0:47]"  0.033333333333333298 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.87236164127150828 0.98556503858392064 0.033333333333333354 
		0.033333333333333298 0.71003554577009809 0.20139977030339434 0.15032408099737404 
		0.37092736596144699 0.69981977991390887 0.13333333333333336 0.99601829189518654 0.19592229573353279 
		0.22867433013763541 0.32505515144720826 0.16836060886884449 0.89906353170977338 0.40233239968320378 
		1 1 0.99969229266455506 0.32493528154136969 0.99304754056175626 0.43845958385000006 
		0.956262909596021 0.87236164127150828 0.98556503858392064 0.033333333333333354 0.033333333333333298 
		0.96531808811831188 0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 
		0.92386747891845589 0.066666666666667762 0.95019112989512722 0.87236164127150828 
		0.98556503858392064 0.033333333333333354 0.033333333333333298;
	setAttr -s 48 ".koy[0:47]"  -0.0050119095206897502 -0.26107659556461033 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624181 0.31166779857505578 0.48886109155677349 0.16929723778335812 
		-0.0013757533569604963 -0.0050119095206897502 0.70416583539884892 -0.9795091283503895 
		-0.9886367738822458 0.92866188097762614 0.71431944929509517 0 0.089149101006094536 
		-0.98061942364737098 -0.9735029793154738 0.94569506106230283 0.98572547161028157 
		-0.43781818823519564 0.91549365927086279 0 0 -0.024805644258627673 0.94573625435933828 
		0.11771398465877755 -0.89875090727636242 0.29250854300507589 0.48886109155677349 
		0.16929723778335812 -0.0013757533569604963 -0.0050119095206897502 -0.26107659556461033 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624009 0.0022545931135292685 0.31166779857505578 0.48886109155677349 
		0.16929723778335812 -0.0013757533569604963 -0.0050119095206897502;
createNode animCurveTU -n "Rig_C_body_under_option_scaleY";
	rename -uid "4B7117FC-41CB-D376-BAE5-CB8468E7ED10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  -40 1 0 1 3 1 5 1 8 1 17 1 20 1 42 1 48 1
		 60 1 88 1 100 1;
	setAttr -s 12 ".kit[5:11]"  9 18 9 1 1 1 1;
	setAttr -s 12 ".kot[5:11]"  9 18 9 1 1 1 1;
	setAttr -s 12 ".kix[0:11]"  1 1 1 0.06666666666666668 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 0.10000000000000006 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleZ";
	rename -uid "5C90D060-407E-B706-D36D-6DBC47B06223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  -40 1.1062157443090448 -39 1.0992327764965455
		 -36 0.99059732620765018 -30 0.97495763755640041 -26 1.0807495080905241 -19 1.0992327764965455
		 -16 0.99059732620765018 -10 0.97495763755640041 -6 1.0807495080905241 -3 1.1057148632680387
		 -1 1.1093789797058808 0 1.1062157443090448 3 1.2863506680642338 4 1.2384468397978614
		 5 0.70384615384615368 6 0.8 8 1.1062157443090448 10 0.93483394607992121 13 1.205881473833871
		 15 0.94975152703392574 17 0.53852885836562592 19 0.38213032895743693 20 0.82946258356637592
		 21 0.77245340917318051 22 0.79699782642049066 24 1 37 1 40 0.83150007370371803 42 0.99586445341887631
		 45 1.3165896223430269 48 1.01957207663945 50 0.97495763755640041 54 1.0807495080905241
		 57 1.1057148632680387 59 1.1093789797058808 60 1.1062157443090448 61 1.0992327764965455
		 64 0.99059732620765018 70 0.97495763755640041 74 1.0807495080905241 81 1.0992327764965455
		 84 0.99059732620765018 88 0.96315664995352968 90 0.97495763755640041 94 1.0807495080905241
		 97 1.1057148632680387 99 1.1093789797058808 100 1.1062157443090448;
	setAttr -s 48 ".kit[12:47]"  9 1 1 1 1 1 9 9 
		9 9 9 9 9 1 1 9 9 9 9 9 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kot[12:47]"  9 1 1 1 1 1 9 9 
		9 9 9 9 9 1 1 9 9 9 9 9 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kix[0:47]"  0.98888446156784038 0.9653180881183131 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.87236164127150828 0.98556503858392064 0.066666666666666652 
		0.98888446156784038 0.71003554577009809 0.20139977030339415 0.15032408099737404 0.37092736596144699 
		0.69981977991390742 0.066666666666666596 0.99601829189518654 0.19592229573353279 
		0.22867433013763541 0.32505515144720826 0.16836060886884449 0.89906353170977338 0.40233239968320378 
		1 1 0.99969229266455506 0.32493528154136969 0.99304754056175626 0.43845958385000006 
		0.956262909596021 0.87236164127150828 0.98556503858392064 0.066666666666666652 0.98888446156784038 
		0.9653180881183131 0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 
		0.92386747891845511 0.13333333333333286 0.95019112989512677 0.87236164127150828 0.98556503858392064 
		0.066666666666666652 0.98888446156784038;
	setAttr -s 48 ".kiy[0:47]"  -0.14868598343382053 -0.2610765955646055 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624181 0.31166779857505578 0.48886109155677349 0.16929723778335812 
		-0.0027515067139216587 -0.14868598343382053 0.70416583539884892 -0.97950912835038961 
		-0.9886367738822458 0.92866188097762614 0.71431944929509672 0 0.089149101006094536 
		-0.98061942364737098 -0.9735029793154738 0.94569506106230283 0.98572547161028157 
		-0.43781818823519564 0.91549365927086279 0 0 -0.024805644258627673 0.94573625435933828 
		0.11771398465877755 -0.89875090727636242 0.29250854300507589 0.48886109155677349 
		0.16929723778335812 -0.0027515067139216587 -0.14868598343382053 -0.2610765955646055 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624181 0.0045091862270588701 0.31166779857505739 0.48886109155677349 
		0.16929723778335812 -0.0027515067139216587 -0.14868598343382053;
	setAttr -s 48 ".kox[0:47]"  0.033333333333333298 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.87236164127150828 0.98556503858392064 0.033333333333333354 
		0.033333333333333298 0.71003554577009809 0.20139977030339434 0.15032408099737404 
		0.37092736596144699 0.69981977991390887 0.13333333333333336 0.99601829189518654 0.19592229573353279 
		0.22867433013763541 0.32505515144720826 0.16836060886884449 0.89906353170977338 0.40233239968320378 
		1 1 0.99969229266455506 0.32493528154136969 0.99304754056175626 0.43845958385000006 
		0.956262909596021 0.87236164127150828 0.98556503858392064 0.033333333333333354 0.033333333333333298 
		0.96531808811831188 0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 
		0.92386747891845589 0.066666666666667762 0.95019112989512722 0.87236164127150828 
		0.98556503858392064 0.033333333333333354 0.033333333333333298;
	setAttr -s 48 ".koy[0:47]"  -0.0050119095206897502 -0.26107659556461033 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624181 0.31166779857505578 0.48886109155677349 0.16929723778335812 
		-0.0013757533569604963 -0.0050119095206897502 0.70416583539884892 -0.9795091283503895 
		-0.9886367738822458 0.92866188097762614 0.71431944929509517 0 0.089149101006094536 
		-0.98061942364737098 -0.9735029793154738 0.94569506106230283 0.98572547161028157 
		-0.43781818823519564 0.91549365927086279 0 0 -0.024805644258627673 0.94573625435933828 
		0.11771398465877755 -0.89875090727636242 0.29250854300507589 0.48886109155677349 
		0.16929723778335812 -0.0013757533569604963 -0.0050119095206897502 -0.26107659556461033 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.38271253101624009 0.0022545931135292685 0.31166779857505578 0.48886109155677349 
		0.16929723778335812 -0.0013757533569604963 -0.0050119095206897502;
createNode animCurveTL -n "Rig_R_body_middle_003_translateX";
	rename -uid "B492EC43-43BC-83D1-499C-5D86EFEAE043";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateY";
	rename -uid "64400960-4E52-E136-F478-09B804B77993";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateZ";
	rename -uid "6DC10075-488A-BF6E-5A1A-19BFE24B7A61";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateX";
	rename -uid "A2548EF1-43DB-EECD-8F20-498E402B1088";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateY";
	rename -uid "17E411EB-4308-BC21-6E9B-C0B1637C1A89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateZ";
	rename -uid "DB990360-42DE-9B49-02DD-EEB97B31E9D3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateX";
	rename -uid "DA813FFA-45DE-00A3-A628-098E68012C82";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateY";
	rename -uid "1EE37CC3-4D55-B5F8-AD87-49ABE668F240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateZ";
	rename -uid "2ECA87E4-47C5-FB2F-8F15-0BB8CD63D51B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateX";
	rename -uid "3BA70F30-418F-D6D5-4AA6-DDA0C740F909";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateY";
	rename -uid "059B7EF9-4C4A-7AC7-B4AB-F88A808F034F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateZ";
	rename -uid "4848776A-4FB8-3F97-A05E-26AB9E787420";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateX";
	rename -uid "E084387A-4DE5-C293-DD1B-17857616853A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateY";
	rename -uid "AE437794-4B04-37AB-2EF8-D7A375C4192C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateZ";
	rename -uid "81753AD9-4247-D120-3DFC-4A9505B50264";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateX";
	rename -uid "CA243536-439D-53D9-831B-0EBB728BDA22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateY";
	rename -uid "F421DF56-45F9-68C4-D6FF-668D3553FF88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateZ";
	rename -uid "2E8C5093-4D3F-B55A-0293-20B168B7E32C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateX";
	rename -uid "FF04870A-4C75-BD43-A410-E88116E49F71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 -3.0842832513046874 37 -3.0842832513046874 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 16 ".kit[3:15]"  18 9 18 9 9 18 18 18 
		3 1 1 1 1;
	setAttr -s 16 ".kot[3:15]"  18 9 18 9 9 18 18 18 
		3 1 1 1 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateY";
	rename -uid "ECC906D0-4369-C4DC-3C93-629B5A03CA3A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 3.3799390254757604
		 20 3.3799390254757604 30 0 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 0.049250713288856836 0.12716657294789402 
		1 1 1 0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0.99878644726514931 -0.99188137532907028 
		0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 0.049250713288856836 0.12716657294789402 
		1 1 1 0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0.99878644726514931 -0.99188137532907028 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateZ";
	rename -uid "C158A2A6-41AA-C23D-7FC5-5F9F1FC3C82D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateX";
	rename -uid "BA55A423-4237-020D-64A1-DCAC52A53BBF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateY";
	rename -uid "84F3F647-460B-C9F4-89CC-7CBD188815D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateZ";
	rename -uid "46F7B821-401C-A4FF-8C8C-2295CA071295";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateX";
	rename -uid "59899483-493F-27A1-5266-9DABBF070D71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateY";
	rename -uid "C250602E-44FB-DDA1-D575-0CAE1E23CC40";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 -7.5302782831081618
		 20 -7.5302782831081618 30 0 34 4.2545713987750391 37 4.2545713987750391 42 0 48 0
		 60 0 88 0 100 0;
	setAttr -s 16 ".kit[3:15]"  18 9 18 9 9 18 18 18 
		3 1 1 1 1;
	setAttr -s 16 ".kot[3:15]"  18 9 18 9 9 18 18 18 
		3 1 1 1 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 0.022127450460825766 0.057450416409532232 
		0.03956785414937368 1 1 1 0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 -0.99975515799424797 0.99834836087127987 
		0.99921688582510138 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 0.022127450460825766 0.057450416409532232 
		0.039567854149373687 1 1 1 0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 -0.99975515799424797 0.99834836087127987 
		0.9992168858251016 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateZ";
	rename -uid "9EA5B178-4FE3-C1D7-6AD0-D28C892E12F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotateX";
	rename -uid "F6F214A4-46C7-1163-7AA2-44903CD10771";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotateY";
	rename -uid "53007067-4DF8-6684-D602-E883D2BFCDB8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotateZ";
	rename -uid "17D7276E-474D-D3CA-F9B3-41BCAE93552F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  -40 0 0 0 3 0 11 0 12 0 15 0 17 0 20 0 30 0
		 34 0 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 15 ".kit[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kot[3:14]"  18 9 18 9 9 18 18 3 
		1 1 1 1;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateX";
	rename -uid "71810C23-4A10-D4CB-D0A6-AA97B00301AA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateY";
	rename -uid "7C99D428-4345-35C3-AB2C-C1B5A012996D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateZ";
	rename -uid "057A7E09-4003-45AA-8B2F-74B0A9012336";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateX";
	rename -uid "48402843-4DC3-6A1A-0246-C6917B3ED9EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateY";
	rename -uid "FC4AF968-456A-DEBE-1FFF-A682765E43B7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateZ";
	rename -uid "93C9AEF6-4A40-BC81-5A58-A8A133891E33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateX";
	rename -uid "A5B9667B-42F8-21DF-B0A9-45B0B35D1F48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateY";
	rename -uid "34C5EC43-4B7A-0383-A596-8FBEF001B26A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateZ";
	rename -uid "F1B78D3F-49CF-9A7E-3E79-61BED2803173";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateX";
	rename -uid "965D4D1B-47ED-68A0-9197-6DA103D14437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateY";
	rename -uid "517565A1-43D5-6F2F-9CDE-EDB9C648B355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateZ";
	rename -uid "1D28F8BB-4568-3462-ABCB-F4A2C7820A90";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateX";
	rename -uid "5B26F9C1-43FB-406E-BB14-C6B3695BBD3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateY";
	rename -uid "32EC92DB-4A58-CCCA-30F1-9C87ABDF70ED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateZ";
	rename -uid "7A4C1006-4DCC-BEC0-B22F-25A4129E37AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateX";
	rename -uid "B5EB28A4-4652-2585-9D75-16B1A9A464E1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateY";
	rename -uid "F5D8D41D-4F69-6EE0-876C-6C85CFFE6788";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateZ";
	rename -uid "511FFC6C-48AB-9282-6CB4-DEB4F00502E5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateX";
	rename -uid "0B2722CB-4C42-F790-465F-0AB6ABB82F12";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateY";
	rename -uid "A6EB307E-4CF0-90BD-17F5-08A00DD80308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateZ";
	rename -uid "0F0214C7-479E-E6EC-2472-7FBEC6F0F776";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateX";
	rename -uid "F7DAA95B-45BC-AA3C-E782-B59D58CB8BEF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateY";
	rename -uid "FB5CAC9A-4FF5-F589-D43F-2BB3288E9740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateZ";
	rename -uid "D50D7707-4503-A1C7-07F1-E198F88F4FD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateX";
	rename -uid "C32A35F2-4B1C-8E4E-7929-0A8DCF71C8D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateY";
	rename -uid "763495DF-4B99-D331-9382-D48AA2B2E9B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateZ";
	rename -uid "CF393E15-4D65-009D-17EE-D4A0CBEB8AE9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateX";
	rename -uid "8986A441-49C5-2034-3ACD-C2BC9C423955";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateY";
	rename -uid "8986A171-4A30-1BD9-C18E-B69645202355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateZ";
	rename -uid "92F4AB6E-4976-7950-1579-C28DBC981B9E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_translateX";
	rename -uid "8D0DB3D4-483D-9E7C-0FE2-93BC29F6DEE9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_translateY";
	rename -uid "CCC3A5C0-40F8-AC02-5A70-AB8734BE0374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_translateZ";
	rename -uid "CBED4E22-4F4A-B6D0-AEDA-7EB654BF87A7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_rotateX";
	rename -uid "914DEB20-46CD-040E-21DC-489F7C0EA2D4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_rotateY";
	rename -uid "E37285C2-4C82-589C-3E92-18A50A3D3E0E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_rotateZ";
	rename -uid "DE22F384-47F1-8275-58F8-549CCCCA0BEE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_scaleX";
	rename -uid "62FD34E2-4E25-64D5-8C89-7A94F4B0C260";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_scaleY";
	rename -uid "A664D86B-478D-7FD7-4508-28A982374492";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_scaleZ";
	rename -uid "FFADB06F-43DE-119D-3A07-F0A7257AA865";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateX";
	rename -uid "E765CE75-4D9B-1EEB-058A-848BD10D6D2E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateY";
	rename -uid "CB3FF8F9-46BE-4D76-0BF6-B8B4DF2F6B38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  -40 -1.7943064394311004 -39 -1.4059843688641784
		 -35 3.1691910547620772 -29 4 -26 -0.70299218443208922 -19 -1.4059843688641784 -15 3.1691910547620772
		 -9 4 -6 -0.70299218443208922 -4 -1.8703134877895335 0 -1.7943064394311004 3 -6.7120482751371258
		 7 -1.7943064394311004 14 -1.8792188713042008 18 -1.7943064394311004 19 0.32316637732103359
		 20 12.039487601715706 21 0.32316637732103359 24 0 37 0 41 1.7943064394311004 43 5.6608551117796582
		 45 0.61157975897327166 48 8.6625935480374956 51 8.3498672563921303 54 -0.70299218443208922
		 56 -1.8703134877895335 60 -1.7943064394311004 61 -1.4059843688641784 65 3.1691910547620772
		 71 4 74 -0.70299218443208922 81 -1.4059843688641784 85 3.1691910547620772 88 4.3127262916453644
		 91 4 94 -0.70299218443208922 96 -1.8703134877895335 100 -1.7943064394311004;
	setAttr -s 39 ".kit[12:38]"  9 1 9 9 9 18 18 18 
		9 9 9 9 9 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 39 ".kot[12:38]"  9 1 9 9 9 18 18 18 
		9 9 9 9 9 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 39 ".kix[0:38]"  0.1148602160418494 0.067670592140005606 
		0.061543180897992697 0.077244190868942228 0.061543180897992697 0.094270784281313247 
		0.061543180897992725 0.0772441908689422 0.02838000641067295 0.18026309575537289 0.1148602160418494 
		0.1148602160418494 0.075652554056915455 1 0.07545976557134218 0.0048190606533799708 
		1 0.10260169273330288 1 1 0.035308321696242657 0.11202424478719235 0.055437993301364355 
		0.025836883737706512 0.021349910048382711 0.02838000641067295 0.18026309575537289 
		0.1148602160418494 0.067670592140005606 0.061543180897992697 0.077244190868942228 
		0.061543180897992697 0.094270784281313247 0.061543180897992725 0.099999999999999645 
		0.077244190868941978 0.02838000641067295 0.18026309575537289 0.1148602160418494;
	setAttr -s 39 ".kiy[0:38]"  0.99338166420103591 0.99770771820178927 
		0.99810442183418702 -0.99701220402611046 -0.99810442183418702 0.99554659319942729 
		0.99810442183418702 -0.99701220402611046 -0.99959720649676198 -0.98361843024045115 
		0.99338166420103591 0.99338166420103591 0.9971342392399658 0 0.99714884735425435 
		0.9999883882597933 0 -0.99472252042881837 0 0 0.99937646681267944 -0.99370547375963436 
		0.99846213193025901 0.99966617199879493 -0.999772064693211 -0.99959720649676198 -0.98361843024045115 
		0.99338166420103591 0.99770771820178927 0.99810442183418702 -0.99701220402611046 
		-0.99810442183418702 0.99554659319942729 0.99810442183418702 0.54033981786314378 
		-0.99701220402611046 -0.99959720649676198 -0.98361843024045115 0.99338166420103591;
	setAttr -s 39 ".kox[0:38]"  0.11486021604185123 0.067670592140006092 
		0.061543180897992697 0.077244190868942228 0.061543180897992697 0.094270784281313247 
		0.061543180897992725 0.0772441908689422 0.02838000641067295 0.18026309575537289 0.11486021604185123 
		0.11486021604185123 0.075652554056915455 1 0.07545976557134218 0.0048190606533799708 
		1 0.10260169273330287 1 1 0.035308321696242657 0.11202424478719235 0.055437993301364355 
		0.025836883737706512 0.021349910048382711 0.02838000641067295 0.18026309575537289 
		0.11486021604185123 0.067670592140006092 0.061543180897992697 0.077244190868942228 
		0.061543180897992697 0.094270784281313247 0.061543180897992537 0.099999999999999645 
		0.0772441908689422 0.02838000641067295 0.18026309575537289 0.11486021604185123;
	setAttr -s 39 ".koy[0:38]"  0.9933816642010358 0.99770771820178927 
		0.99810442183418702 -0.99701220402611046 -0.99810442183418702 0.99554659319942729 
		0.99810442183418702 -0.99701220402611046 -0.99959720649676198 -0.98361843024045115 
		0.9933816642010358 0.9933816642010358 0.9971342392399658 0 0.99714884735425435 0.9999883882597933 
		0 -0.99472252042881837 0 0 0.99937646681267944 -0.99370547375963436 0.99846213193025901 
		0.99966617199879493 -0.999772064693211 -0.99959720649676198 -0.98361843024045115 
		0.9933816642010358 0.99770771820178927 0.99810442183418702 -0.99701220402611046 -0.99810442183418702 
		0.99554659319942729 0.99810442183418724 0.54033981786314644 -0.99701220402611046 
		-0.99959720649676198 -0.98361843024045115 0.9933816642010358;
createNode animCurveTL -n "Rig_C_body_middle_option_translateZ";
	rename -uid "32BF05FE-44D8-176E-84D3-C0817F34F7B0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateX";
	rename -uid "2080F0DE-48C9-B7BA-7B51-A5BD813D982E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateY";
	rename -uid "5A2E097A-421A-1565-7ABA-56A4F59FFD01";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateZ";
	rename -uid "6A981D53-4559-25AE-17A9-C4ADAB908055";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleX";
	rename -uid "0279508D-463C-F623-6793-0DA80D6A4810";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  -40 1.1093789797058811 -38 1.0992327764965455
		 -35 0.99059732620765018 -29 0.97495763755640041 -25 1.0807495080905241 -18 1.0992327764965455
		 -15 0.99059732620765018 -9 0.97495763755640041 -5 1.0807495080905241 0 1.1093789797058811
		 3 1.1093789797058811 4 1.007487088185915 5 0.8 7 1.1093789797058811 10 0.93483394607992121
		 13 1.2090447092307075 15 0.95291476243076223 18 0.53995231429420232 19 0.47977376918838732
		 20 1.0152527388898647 21 0.96390744641240822 22 0.90144723169613872 24 1 37 1 40 0.83150007370371803
		 42 1.1093789797058811 44 1.1807620822387606 48 1.0577862920245134 51 0.97495763755640041
		 55 1.0807495080905241 60 1.1093789797058811 62 1.0992327764965455 65 0.99059732620765018
		 71 0.97495763755640041 75 1.0807495080905241 82 1.0992327764965455 85 0.99059732620765018
		 88 0.96422108591046962 91 0.97495763755640041 95 1.0807495080905241 100 1.1093789797058811;
	setAttr -s 41 ".kit[10:40]"  9 9 1 1 1 9 9 9 
		9 9 9 9 1 1 1 1 1 9 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 41 ".kot[10:40]"  9 9 1 1 1 9 9 9 
		9 9 9 9 1 1 1 1 1 9 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 41 ".kix[0:40]"  0.16666666666666669 0.96531808811831077 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.94708052204046778 0.16666666666666669 0.79455589157176465 0.21065027089869234 
		0.99994677213856986 1 0.099999999999999978 0.99416694999752153 0.24170779450148008 
		0.27124026735767232 0.13890247291720026 0.1364157224061453 0.5054547939720091 0.94060964893043342 
		1 1 0.8360387535715359 0.35665195192694948 0.80930670945456573 0.7499620711714462 
		0.95019112989512666 0.94708052204046778 0.16666666666666669 0.96531808811831077 0.92386747891845511 
		0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 0.099999999999999645 
		0.95019112989512666 0.94708052204046778 0.16666666666666669;
	setAttr -s 41 ".kiy[0:40]"  -0.0068787667848031475 -0.26107659556461454 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.3827125310162417 0.31166779857505578 0.32099608217477532 -0.0068787667848031475 
		-0.60719102032935091 -0.97756148828107348 0.010317600964130889 0 0 0.10785210026988561 
		-0.97034908258689578 -0.96251167128702309 0.9903060653239919 0.99065167979487601 
		-0.86285308787227144 0.33949004159027529 0 0 0.54867039516138716 0.93423732808462379 
		-0.58738628689459826 -0.66148083252973755 0.31166779857505733 0.32099608217477532 
		-0.0068787667848031475 -0.26107659556461454 -0.38271253101624192 0.26107659556461033 
		0.32099608217477532 -0.26107659556461033 -0.3827125310162417 -0.0095736393033024614 
		0.31166779857505733 0.32099608217477532 -0.0068787667848031475;
	setAttr -s 41 ".kox[0:40]"  0.066666666666666638 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.94708052204046833 0.066666666666666638 0.79455589157176465 
		0.21065027089869234 0.06666666666666668 1 0.13333333333333336 0.99416694999752153 
		0.24170779450148008 0.27124026735767232 0.13890247291720026 0.1364157224061453 0.5054547939720091 
		0.94060964893043342 1 1 0.8360387535715359 0.35665195192694948 0.80930670945456573 
		0.7499620711714462 0.95019112989512722 0.94708052204046833 0.066666666666666638 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845566 
		0.099999999999999645 0.95019112989512722 0.94708052204046833 0.066666666666666638;
	setAttr -s 41 ".koy[0:40]"  -0.0027515067139216587 -0.26107659556461038 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.3827125310162417 0.31166779857505578 0.32099608217477354 -0.0027515067139216587 
		-0.60719102032935091 -0.97756148828107348 0.00068787667848058121 0 0 0.10785210026988561 
		-0.97034908258689578 -0.96251167128702309 0.9903060653239919 0.99065167979487601 
		-0.86285308787227144 0.33949004159027529 0 0 0.54867039516138716 0.93423732808462379 
		-0.58738628689459826 -0.66148083252973755 0.31166779857505578 0.32099608217477354 
		-0.0027515067139216587 -0.26107659556461038 -0.38271253101624192 0.26107659556461033 
		0.32099608217477532 -0.26107659556461033 -0.38271253101624075 -0.0095736393033024614 
		0.31166779857505578 0.32099608217477354 -0.0027515067139216587;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleY";
	rename -uid "219AC6A7-4145-A940-F99A-F09F61613022";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 1 0 1 3 1 7 1 17 1 20 1 42 1 48 1 60 1
		 88 1 100 1;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleZ";
	rename -uid "F6E1B390-489B-041E-9130-F58EC545B36F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  -40 1.1093789797058811 -38 1.0992327764965455
		 -35 0.99059732620765018 -29 0.97495763755640041 -25 1.0807495080905241 -18 1.0992327764965455
		 -15 0.99059732620765018 -9 0.97495763755640041 -5 1.0807495080905241 0 1.1093789797058811
		 3 1.1093789797058811 4 1.007487088185915 5 0.8 7 1.1093789797058811 10 0.93483394607992121
		 13 1.2090447092307075 15 0.95291476243076223 18 0.53995231429420232 19 0.47977376918838732
		 20 1.0152527388898647 21 0.96390744641240822 22 0.90144723169613872 24 1 37 1 40 0.83150007370371803
		 42 1.1093789797058811 44 1.1807620822387606 48 1.0577862920245134 51 0.97495763755640041
		 55 1.0807495080905241 60 1.1093789797058811 62 1.0992327764965455 65 0.99059732620765018
		 71 0.97495763755640041 75 1.0807495080905241 82 1.0992327764965455 85 0.99059732620765018
		 88 0.96422108591046962 91 0.97495763755640041 95 1.0807495080905241 100 1.1093789797058811;
	setAttr -s 41 ".kit[10:40]"  9 9 1 1 1 9 9 9 
		9 9 9 9 1 1 1 1 1 9 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 41 ".kot[10:40]"  9 9 1 1 1 9 9 9 
		9 9 9 9 1 1 1 1 1 9 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 41 ".kix[0:40]"  0.16666666666666669 0.96531808811831077 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.94708052204046778 0.16666666666666669 0.79455589157176465 0.21065027089869234 
		0.99994677213856986 1 0.099999999999999978 0.99416694999752153 0.24170779450148008 
		0.27124026735767232 0.13890247291720026 0.1364157224061453 0.5054547939720091 0.94060964893043342 
		1 1 0.8360387535715359 0.35665195192694948 0.80930670945456573 0.7499620711714462 
		0.95019112989512666 0.94708052204046778 0.16666666666666669 0.96531808811831077 0.92386747891845511 
		0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 0.099999999999999645 
		0.95019112989512666 0.94708052204046778 0.16666666666666669;
	setAttr -s 41 ".kiy[0:40]"  -0.0068787667848031475 -0.26107659556461454 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.3827125310162417 0.31166779857505578 0.32099608217477532 -0.0068787667848031475 
		-0.60719102032935091 -0.97756148828107348 0.010317600964130889 0 0 0.10785210026988561 
		-0.97034908258689578 -0.96251167128702309 0.9903060653239919 0.99065167979487601 
		-0.86285308787227144 0.33949004159027529 0 0 0.54867039516138716 0.93423732808462379 
		-0.58738628689459826 -0.66148083252973755 0.31166779857505733 0.32099608217477532 
		-0.0068787667848031475 -0.26107659556461454 -0.38271253101624192 0.26107659556461033 
		0.32099608217477532 -0.26107659556461033 -0.3827125310162417 -0.0095736393033024614 
		0.31166779857505733 0.32099608217477532 -0.0068787667848031475;
	setAttr -s 41 ".kox[0:40]"  0.066666666666666638 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845511 
		0.95019112989512722 0.94708052204046833 0.066666666666666638 0.79455589157176465 
		0.21065027089869234 0.06666666666666668 1 0.13333333333333336 0.99416694999752153 
		0.24170779450148008 0.27124026735767232 0.13890247291720026 0.1364157224061453 0.5054547939720091 
		0.94060964893043342 1 1 0.8360387535715359 0.35665195192694948 0.80930670945456573 
		0.7499620711714462 0.95019112989512722 0.94708052204046833 0.066666666666666638 0.96531808811831188 
		0.92386747891845511 0.96531808811831188 0.94708052204046778 0.96531808811831188 0.92386747891845566 
		0.099999999999999645 0.95019112989512722 0.94708052204046833 0.066666666666666638;
	setAttr -s 41 ".koy[0:40]"  -0.0027515067139216587 -0.26107659556461038 
		-0.38271253101624192 0.26107659556461033 0.32099608217477532 -0.26107659556461033 
		-0.3827125310162417 0.31166779857505578 0.32099608217477354 -0.0027515067139216587 
		-0.60719102032935091 -0.97756148828107348 0.00068787667848058121 0 0 0.10785210026988561 
		-0.97034908258689578 -0.96251167128702309 0.9903060653239919 0.99065167979487601 
		-0.86285308787227144 0.33949004159027529 0 0 0.54867039516138716 0.93423732808462379 
		-0.58738628689459826 -0.66148083252973755 0.31166779857505578 0.32099608217477354 
		-0.0027515067139216587 -0.26107659556461038 -0.38271253101624192 0.26107659556461033 
		0.32099608217477532 -0.26107659556461033 -0.38271253101624075 -0.0095736393033024614 
		0.31166779857505578 0.32099608217477354 -0.0027515067139216587;
createNode animCurveTL -n "Rig_L_body_under_001_translateX";
	rename -uid "1A5F41B7-47E9-CFC3-0F63-AEB0236F4F88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateY";
	rename -uid "423B79B9-41AA-39A5-BCDA-C6AC3BF62267";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateZ";
	rename -uid "735A82ED-4B7B-1A4B-8160-27B452E73846";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateX";
	rename -uid "4DA70FAF-490E-379A-85D9-49A5669C60C9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateY";
	rename -uid "28375FDB-4A15-10CB-0DAB-8A80E426FFDA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateZ";
	rename -uid "79E73A84-4B38-F8C0-4999-B3969FCBAB0D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateX";
	rename -uid "B7AEB4B1-423D-994A-432E-2FABEF1BBC94";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateY";
	rename -uid "DDA0F5A8-4A77-4BE2-449C-95B2458C8558";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateZ";
	rename -uid "93484C60-4923-D00E-FF16-A8810ADDBFAB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateX";
	rename -uid "6C537A32-4EA3-4B01-E7D0-89B26FC47FDA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateY";
	rename -uid "8D56151D-4DB4-DAAE-6D00-F9BDA275FD04";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateZ";
	rename -uid "AE7CB643-4787-118D-E218-BEBA26803795";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateX";
	rename -uid "39FF883C-4A93-F472-BD3A-BEB47E49C198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateY";
	rename -uid "C5179195-4C47-9C81-19EC-C59D72F618B6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateZ";
	rename -uid "8C39EDE7-407F-C804-BB80-0D8FF6C6AD92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateX";
	rename -uid "D44C2088-4EC4-F86A-8731-ACB3D19A5C9D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateY";
	rename -uid "CFE44A60-4509-CFCE-7638-1BB4DBA1C9B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateZ";
	rename -uid "12054F66-4477-EEFF-0F82-61BE70A98BDF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateX";
	rename -uid "5289D330-4599-362C-930E-D188002B9B39";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateY";
	rename -uid "E7DB83A4-4616-1216-188F-AE917CF11022";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateZ";
	rename -uid "AF447901-4EC8-F570-12C5-9EA2C812C7A5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateX";
	rename -uid "515CE223-4FAB-1AD3-D01C-F5BABC4CB57C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateY";
	rename -uid "C624DB10-43EA-54C6-BA50-1AB5B611474E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateZ";
	rename -uid "C8BDDEB7-4D22-AD23-A9C4-21B2D70F9EAD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateX";
	rename -uid "C27642F2-4AD0-7E82-3984-F4A9192A0BDD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateY";
	rename -uid "3CC8D91B-4FBB-C901-BA8C-F0AE6199C0CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateZ";
	rename -uid "C0C2AF45-421F-C414-6125-15A1D92546C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateX";
	rename -uid "BA6F1974-478C-29BE-E53A-4D97D09A59C7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateY";
	rename -uid "E0EC4CA0-4B8F-3E0A-790C-D4A29A1FBB4C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateZ";
	rename -uid "38605B8E-42AB-FFA6-3446-869F28503192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_root_translateX";
	rename -uid "F7DDF1FD-49D5-9B42-81CC-0297F2B767E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  -40 0 0 0 3 0 7 0 15 0 18 0 19 0 21 0 22 0
		 25 0 33 -0.0012944487705814555 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 16 ".kit[0:15]"  1 1 9 9 3 18 18 18 
		18 18 18 9 1 1 1 1;
	setAttr -s 16 ".kot[0:15]"  1 1 9 9 3 18 18 18 
		18 18 18 9 1 1 1 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 0.99999664882160644 
		0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0.0025888888653054077 
		0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 0.99999664882160644 
		0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0.0025888888653054077 
		0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_root_translateY";
	rename -uid "7EEA264B-44D2-4AA8-396A-81AF4DF7C92F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 0 0 3 -5.3242787537861398 7 -14.420305874071008
		 11 -21.230128119144222 15 -21.177361492246217 16 -12.49850197099965 17 15.711600379178551
		 18 14.375133979388107 19 17.168461429555197 20 20.61646584890838 21 20.424591557610039
		 22 22.193805384190703 25 0 33 -11.193025184495625 42 -6.8675037111244377 48 0 60 0
		 88 0 100 0;
	setAttr -s 20 ".kit[0:19]"  1 1 9 9 18 3 18 18 
		18 18 18 18 18 18 18 9 1 1 1 1;
	setAttr -s 20 ".kot[0:19]"  1 1 9 9 18 3 18 18 
		18 18 18 18 18 18 18 9 1 1 1 1;
	setAttr -s 20 ".kix[0:19]"  1 1 0.016178768715017475 0.01676296509814203 
		1 1 0.0018072223889226365 1 1 0.010680871527310343 1 1 1 0.010981711954145336 1 0.04462617297937678 
		0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 -0.99986911515601185 -0.99985949162925813 
		0 0 0.99999836697228506 0 0 0.99994295786480591 0 0 0 -0.99993969918318393 0 0.99900375609164482 
		0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  1 1 0.016178768715017475 0.01676296509814203 
		1 1 0.0018072223889226365 1 1 0.010680871527310343 1 1 1 0.010981711954145336 1 0.04462617297937678 
		0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 20 ".koy[0:19]"  0 0 -0.99986911515601185 -0.99985949162925813 
		0 0 0.99999836697228506 0 0 0.99994295786480591 0 0 0 -0.99993969918318382 0 0.99900375609164482 
		0 0 0 0;
createNode animCurveTL -n "Rig_C_eye_root_translateZ";
	rename -uid "6AA0704E-424E-5524-B36F-ABA8E45F1D73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 0 0 3 -1.5665213717359896 7 -7.1821728553365531
		 11 -13.68381939785113 15 -18.249259582117524 16 -5.7270996477487781 17 -3.2415538714665377
		 18 -1.4921510589322944 19 -0.94131286424043614 20 -14.141022294390424 21 -8.59678492723455
		 22 -5.6873267942714607 25 0 33 -4.8467992906239896 42 0.28266938546247189 48 0 60 0
		 88 0 100 0;
	setAttr -s 20 ".kit[0:19]"  1 1 9 9 18 3 18 18 
		18 18 18 18 18 18 18 9 1 1 1 1;
	setAttr -s 20 ".kot[0:19]"  1 1 9 9 18 3 18 18 
		18 18 18 18 18 18 18 9 1 1 1 1;
	setAttr -s 20 ".kix[0:19]"  1 1 0.032470715811986135 0.022001779151399326 
		0.024088479173528878 1 0.0044702456093875893 0.015740074861650973 0.028970305559930645 
		1 1 0.007885852257706702 0.015507809104003642 1 1 0.10261627892627 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 -0.99947268727797522 -0.99975793155852133 
		-0.99970983048637996 0 0.99999000840217989 0.99987611734821913 0.99958027261234228 
		0 0 0.99996890618367218 0.99987974669796864 0 0 0.99472101581263783 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  1 1 0.032470715811986135 0.022001779151399326 
		0.024088479173528875 1 0.0044702456093875893 0.015740074861650973 0.028970305559930645 
		1 1 0.007885852257706702 0.015507809104003642 1 1 0.10261627892627 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 20 ".koy[0:19]"  0 0 -0.99947268727797522 -0.99975793155852133 
		-0.99970983048637996 0 0.99999000840217989 0.99987611734821913 0.99958027261234228 
		0 0 0.99996890618367218 0.99987974669796864 0 0 0.99472101581263783 0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_root_rotateX";
	rename -uid "DC61D7A7-4BD3-6A73-DAF2-F3AA07E65921";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  -40 1.2969742960682056 -36 1.3985013127076478
		 -32 2.7340203098229745 -26 3.0812423127623543 -23 1.651760340276724 -16 1.3985013127076478
		 -12 2.7340203098229745 -6 3.0812423127623543 -3 1.651760340276724 0 1.2969742960682056
		 3 16.395057273110982 7 49.745642075545426 11 69.492261118162332 15 94.596521110607142
		 16 42.257145662750141 17 -52.621772102935751 18 -52.621772102935751 19 -53.965064804716043
		 20 -52.808499728962424 21 -52.808499728962424 22 -52.808499728962424 25 1.2969742960682056
		 33 46.51199700870599 42 18.270389743155157 48 2.7340203098229745 54 3.0812423127623543
		 57 1.651760340276724 60 1.2969742960682056 64 1.3985013127076478 68 2.7340203098229745
		 74 3.0812423127623543 77 1.651760340276724 84 1.3985013127076478 88 2.7340203098229745
		 94 3.0812423127623543 97 1.651760340276724 100 1.2969742960682056;
	setAttr -s 37 ".kit[10:36]"  9 9 18 3 18 18 18 18 
		18 18 18 18 18 9 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 37 ".kot[10:36]"  9 9 18 3 18 18 18 18 
		18 18 18 18 18 9 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 37 ".kix[0:36]"  0.10000000000000031 0.99793715770986446 
		0.99614093431614759 0.99802368357964077 0.99614093431614759 0.99867571424693657 0.99614093431614759 
		0.99802368357964077 0.99614093431614759 0.10000000000000031 0.26600046918656473 0.27653190298699248 
		0.32246219423933481 1 0.025937222181432618 1 1 1 1 1 1 0.20694300948047406 1 0.54756836969346678 
		0.99614093431614759 0.99802368357964077 0.99614093431614759 0.10000000000000031 0.99793715770986446 
		0.99614093431614759 0.99802368357964077 0.99614093431614759 0.99867571424693657 0.99614093431614759 
		0.99802368357964077 0.99614093431614759 0.10000000000000031;
	setAttr -s 37 ".kiy[0:36]"  -0.0033143871038382559 0.06419835871700158 
		0.087768097733473369 -0.062838897301950788 -0.087768097733473369 0.051447232902953645 
		0.087768097733473396 -0.062838897301950775 -0.087768097733473396 -0.0033143871038382559 
		0.96397289920024587 0.96100473808946041 0.94658234363754823 0 -0.99966357366141478 
		0 0 0 0 0 0 0.9783529990893699 0 -0.83676094585684324 0.087768097733473396 -0.062838897301950775 
		-0.087768097733473396 -0.0033143871038382559 0.06419835871700158 0.087768097733473369 
		-0.062838897301950788 -0.087768097733473369 0.051447232902953645 0.087768097733473396 
		-0.062838897301950775 -0.087768097733473396 -0.0033143871038382559;
	setAttr -s 37 ".kox[0:36]"  0.13333333333333286 0.99793715770986458 
		0.99614093431614759 0.99802368357964077 0.99614093431614759 0.99867571424693657 0.99614093431614759 
		0.99802368357964077 0.99614093431614759 0.13333333333333286 0.26600046918656473 0.27653190298699248 
		0.32246219423933481 1 0.025937222181432618 1 1 1 1 1 1 0.20694300948047403 1 0.54756836969346678 
		0.99614093431614759 0.99802368357964077 0.99614093431614759 0.13333333333333286 0.99793715770986458 
		0.99614093431614759 0.99802368357964077 0.99614093431614759 0.99867571424693657 0.99614093431614759 
		0.99802368357964077 0.99614093431614759 0.13333333333333286;
	setAttr -s 37 ".koy[0:36]"  -0.004419182805117685 0.064198358717001719 
		0.087768097733473369 -0.062838897301950788 -0.087768097733473369 0.051447232902953645 
		0.087768097733473396 -0.062838897301950775 -0.087768097733473577 -0.004419182805117685 
		0.96397289920024587 0.96100473808946041 0.94658234363754823 0 -0.99966357366141478 
		0 0 0 0 0 0 0.97835299908936968 0 -0.83676094585684324 0.087768097733473396 -0.062838897301950775 
		-0.087768097733473577 -0.004419182805117685 0.064198358717001719 0.087768097733473369 
		-0.062838897301950788 -0.087768097733473369 0.051447232902953645 0.087768097733473396 
		-0.062838897301950775 -0.087768097733473577 -0.004419182805117685;
createNode animCurveTA -n "Rig_C_eye_root_rotateY";
	rename -uid "4923485F-4ED7-DCC0-E526-0BB4671B00BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  -40 0 0 0 3 0 7 0 15 0 18 0 19 0 21 0 22 0
		 25 0 33 -0.036051808742205614 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 16 ".kit[0:15]"  1 1 9 9 3 18 18 18 
		18 18 18 9 1 1 1 1;
	setAttr -s 16 ".kot[0:15]"  1 1 9 9 3 18 18 18 
		18 18 18 9 1 1 1 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 0.99999920815836751 
		0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0.0012584445312119662 
		0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 0.99999920815836751 
		0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0.0012584445312119662 
		0 0 0 0;
createNode animCurveTA -n "Rig_C_eye_root_rotateZ";
	rename -uid "8DE7F699-4B2B-F096-5427-B397B11D49BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  -40 0 0 0 3 0 7 0 15 0 18 0 19 0 21 0 22 0
		 25 0 33 0.068232990305287899 42 0 48 0 60 0 88 0 100 0;
	setAttr -s 16 ".kit[0:15]"  1 1 9 9 3 18 18 18 
		18 18 18 9 1 1 1 1;
	setAttr -s 16 ".kot[0:15]"  1 1 9 9 3 18 18 18 
		18 18 18 9 1 1 1 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 0.9999971635724676 
		0.93333333333333401 1 0.93333333333333401 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 -0.0023817739228689963 
		0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 0.9999971635724676 
		0.39999999999999991 1 0.39999999999999991 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 -0.0023817739228689963 
		0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleX";
	rename -uid "42F844A9-428B-9535-C572-6A9F766F3E3B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 1 0 1 3 1 7 1 15 1 18 0.73333333012420021
		 19 0.73333333012420021 20 1.2432598580539582 25 1 42 1 48 1 60 1 88 1 100 1;
	setAttr -s 14 ".kit[2:13]"  9 9 3 18 18 18 18 9 
		1 1 1 1;
	setAttr -s 14 ".kot[2:13]"  9 9 3 18 18 18 18 9 
		1 1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleY";
	rename -uid "F66BC1C9-459F-1D9F-F06B-7590D1C04199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 1 0 1 3 1 7 1 15 1 18 0.76169888171908262
		 19 0.76169888171908262 20 1.2913495196045972 25 1 42 1 48 1 60 1 88 1 100 1;
	setAttr -s 14 ".kit[2:13]"  9 9 3 18 18 18 18 9 
		1 1 1 1;
	setAttr -s 14 ".kot[2:13]"  9 9 3 18 18 18 18 9 
		1 1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleZ";
	rename -uid "E798E2F0-4284-8ADD-DAD1-34AA3309B453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 1 0 1 3 1 7 1 15 1 18 1 19 1 20 1 25 1
		 42 1 48 1 60 1 88 1 100 1;
	setAttr -s 14 ".kit[2:13]"  9 9 3 18 18 18 18 9 
		1 1 1 1;
	setAttr -s 14 ".kot[2:13]"  9 9 3 18 18 18 18 9 
		1 1 1 1;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 0.93333333333333401 
		1 0.93333333333333401 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 0.39999999999999991 
		1 0.39999999999999991 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_root_vis";
	rename -uid "19872EC1-4110-C611-2A90-33B526BB8B83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  -40 1 0 1 3 1 7 1 15 1 18 1 19 1 25 1 42 1
		 48 1 60 1 88 1 100 1;
	setAttr -s 13 ".kit[2:12]"  9 9 3 18 18 18 9 1 
		1 1 1;
	setAttr -s 13 ".kot[2:12]"  9 9 3 18 18 18 9 1 
		1 1 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 0.93333333333333401 1 
		0.93333333333333401 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 0.39999999999999991 1 
		0.39999999999999991 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_eye_root_body_option_parent";
	rename -uid "4A7FB977-4D23-F8AD-0F4C-1D9A59BCE292";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -40 1 0 1 60 1 88 1 100 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 0.93333333333333401 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.39999999999999991 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateX";
	rename -uid "CF5C6D3B-491D-8D98-89AA-CE90549049F3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateY";
	rename -uid "E55D37FB-471B-7937-61BF-E8A9E77ADA9D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateZ";
	rename -uid "D763FC75-4318-276B-C800-1EBD53E301AD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateX";
	rename -uid "C4CBD1BB-4FBB-BFE6-2064-BB8E96036C6E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateY";
	rename -uid "92198A4A-4C1A-61F4-3244-BB8B330BD2E8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateZ";
	rename -uid "0B1A3052-4BA0-7C78-63A7-3E9A16ABBFF3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateX";
	rename -uid "B15E2F0B-4290-01A9-AFBE-25BA72131FF7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateY";
	rename -uid "41F1A210-4EF9-E322-11D3-BBAB83CD21B6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateZ";
	rename -uid "D8670720-4F25-FA85-9C12-8EA59DC6EAD7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateX";
	rename -uid "4F0ED41B-47A2-3B2A-0DB5-5E9F3FCB4D75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateY";
	rename -uid "AF0B9B5D-42AB-E1BB-3BDD-95A9E1000529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateZ";
	rename -uid "E2DCEE0E-4216-B1BA-7318-4D931469DFED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateX";
	rename -uid "EC54E1BE-4FB9-B617-3E66-1EB1D6D8938F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateY";
	rename -uid "250E06E8-4740-7539-8206-3E88E95BBF24";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateZ";
	rename -uid "4F5BAE10-4A72-609C-0BD6-61BF720F0C98";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateX";
	rename -uid "E0CC0342-4BE3-0A77-5F24-A99FF849088F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateY";
	rename -uid "1F63BD62-4097-E0CA-B01C-36BA1319E48F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateZ";
	rename -uid "37D8642F-4A82-645A-1112-CEA735777ADE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateX";
	rename -uid "19E04FC7-4FBE-2834-DB74-04B849696409";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateY";
	rename -uid "0CCF11A8-4259-64DC-4EE9-83B680991235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateZ";
	rename -uid "20E869B6-4436-9DD8-73C6-19A7A97BF3FC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateX";
	rename -uid "9560399B-4D56-D289-96A6-A1977B36033C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateY";
	rename -uid "6CD2AE2B-4593-7B5B-E776-FD814386295C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateZ";
	rename -uid "56E31C43-4614-2C90-B334-FFBE3DBAEF3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateX";
	rename -uid "C4564B60-47D3-A1DE-7FA8-08846F26388B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateY";
	rename -uid "77F7A3E2-45B5-9962-C293-338382FFEB8D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateZ";
	rename -uid "C7A7BC13-4163-8AA8-9B5B-E989C3901037";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateX";
	rename -uid "93D21160-46F2-AE85-6470-579ED6469E22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateY";
	rename -uid "FFC18A27-410C-1DC9-922B-46B0C9E1EE23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateZ";
	rename -uid "1B9B32DC-41FF-ADE5-8EAC-31AE22CD07DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateX";
	rename -uid "B9AE6949-47CA-87AE-FDAE-F98B3B0F5B92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateY";
	rename -uid "6A7D3931-4DC4-D93E-703F-C1B85C4E4D59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateZ";
	rename -uid "12FD455A-4B48-8160-E5BF-2CB86C0EA2D8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateX";
	rename -uid "EE5C4148-45C4-A345-3A05-4F9445E21DAA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateY";
	rename -uid "0149DDB6-455E-9A10-6C36-3C9D4DA0FD7A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateZ";
	rename -uid "B9882095-4373-2CD4-B016-1EBE1CD64F90";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateX";
	rename -uid "7514EE90-4010-6A8D-3379-8DA4889C6114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateY";
	rename -uid "8BAA34AD-413B-1418-9C91-B5A3C4142C87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateZ";
	rename -uid "08E35D45-48AE-05FB-0377-C9B0FA4989F0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateX";
	rename -uid "CDAD2B6A-4FF2-975F-D929-73846B8D762A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateY";
	rename -uid "0DBED689-4E3F-5834-E85E-59B128E3990F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateZ";
	rename -uid "C7297905-41EF-76B5-D8F2-28B9915E7A8D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -40 0 0 0 3 0 7 0 17 0 20 0 42 0 48 0 60 0
		 88 0 100 0;
	setAttr -s 11 ".kit[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kot[3:10]"  9 9 18 9 1 1 1 1;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 0.93333333333333401 1 0.93333333333333401 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.39999999999999991 1 0.39999999999999991 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "40ACB534-4F1B-5A7E-9D12-DBB31175C180";
	setAttr ".version" -type "string" "5.1.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "EA440CA2-4DD7-4D0C-2444-49BCCB1DC276";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "F52A06C5-459B-E029-C6AF-BE85DBCE301D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "E6A94878-48CD-4DB6-BEA6-1BA4BE7588C0";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTL -n "Rig_C_eye_ctrl_a_translateZ";
	rename -uid "2A503DEC-401B-146C-C78F-C1B580F3B486";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.4408920985006262e-15 60 -4.4408920985006262e-15;
createNode animCurveTA -n "Rig_C_eye_ctrl_a_rotateX";
	rename -uid "30C5C4C7-445B-2065-6562-66A1388B725A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "Rig_Other_sine_tre";
	rename -uid "053BE955-4A1F-C0E3-17AC-DE9175815573";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "Rig_Other_sine_strength";
	rename -uid "A32D7F5A-4531-9277-53AD-3CA3F238D6BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "Rig_Other_eye_type";
	rename -uid "64445E9E-46AA-5A83-075F-F0991B9B5BC9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Rig_Other_color";
	rename -uid "7EC1BCD7-4D34-34CB-B57E-BE826F5D9B0F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Rig_C_eye_ctrl_b_rotateY";
	rename -uid "451817B6-423D-11C4-90A2-7596B6AFD1DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 60;
	setAttr -av -k on ".unw" 60;
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
	setAttr -av -k on ".outf" 51;
	setAttr -av -k on ".imfkey" -type "string" "exr";
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
connectAttr "Rig_C_eye_translateX.o" "ab_rig_CRN.phl[219]";
connectAttr "Rig_C_eye_translateY.o" "ab_rig_CRN.phl[220]";
connectAttr "Rig_C_eye_translateZ.o" "ab_rig_CRN.phl[221]";
connectAttr "Rig_C_eye_rotateX.o" "ab_rig_CRN.phl[222]";
connectAttr "Rig_C_eye_rotateY.o" "ab_rig_CRN.phl[223]";
connectAttr "Rig_C_eye_rotateZ.o" "ab_rig_CRN.phl[224]";
connectAttr "Rig_C_eye_scaleX.o" "ab_rig_CRN.phl[225]";
connectAttr "Rig_C_eye_scaleY.o" "ab_rig_CRN.phl[226]";
connectAttr "Rig_C_eye_scaleZ.o" "ab_rig_CRN.phl[227]";
connectAttr "Rig_C_eye_sub_under_translateX.o" "ab_rig_CRN.phl[228]";
connectAttr "Rig_C_eye_sub_under_translateY.o" "ab_rig_CRN.phl[229]";
connectAttr "Rig_C_eye_sub_under_translateZ.o" "ab_rig_CRN.phl[230]";
connectAttr "Rig_C_eye_sub_under_rotateX.o" "ab_rig_CRN.phl[231]";
connectAttr "Rig_C_eye_sub_under_rotateY.o" "ab_rig_CRN.phl[232]";
connectAttr "Rig_C_eye_sub_under_rotateZ.o" "ab_rig_CRN.phl[233]";
connectAttr "Rig_C_eye_sub_upper_translateX.o" "ab_rig_CRN.phl[234]";
connectAttr "Rig_C_eye_sub_upper_translateY.o" "ab_rig_CRN.phl[235]";
connectAttr "Rig_C_eye_sub_upper_translateZ.o" "ab_rig_CRN.phl[236]";
connectAttr "Rig_C_eye_sub_upper_rotateX.o" "ab_rig_CRN.phl[237]";
connectAttr "Rig_C_eye_sub_upper_rotateY.o" "ab_rig_CRN.phl[238]";
connectAttr "Rig_C_eye_sub_upper_rotateZ.o" "ab_rig_CRN.phl[239]";
connectAttr "Rig_L_eye_sub_translateX.o" "ab_rig_CRN.phl[240]";
connectAttr "Rig_L_eye_sub_translateY.o" "ab_rig_CRN.phl[241]";
connectAttr "Rig_L_eye_sub_translateZ.o" "ab_rig_CRN.phl[242]";
connectAttr "Rig_L_eye_sub_rotateX.o" "ab_rig_CRN.phl[243]";
connectAttr "Rig_L_eye_sub_rotateY.o" "ab_rig_CRN.phl[244]";
connectAttr "Rig_L_eye_sub_rotateZ.o" "ab_rig_CRN.phl[245]";
connectAttr "Rig_R_eye_sub_translateX.o" "ab_rig_CRN.phl[246]";
connectAttr "Rig_R_eye_sub_translateY.o" "ab_rig_CRN.phl[247]";
connectAttr "Rig_R_eye_sub_translateZ.o" "ab_rig_CRN.phl[248]";
connectAttr "Rig_R_eye_sub_rotateX.o" "ab_rig_CRN.phl[249]";
connectAttr "Rig_R_eye_sub_rotateY.o" "ab_rig_CRN.phl[250]";
connectAttr "Rig_R_eye_sub_rotateZ.o" "ab_rig_CRN.phl[251]";
connectAttr "Rig_Other_sine_tre.o" "ab_rig_CRN.phl[252]";
connectAttr "Rig_Other_sine_strength.o" "ab_rig_CRN.phl[253]";
connectAttr "Rig_Other_eye_type.o" "ab_rig_CRN.phl[254]";
connectAttr "Rig_Other_color.o" "ab_rig_CRN.phl[255]";
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
// End of ab_rig_C_atk_01.ma
