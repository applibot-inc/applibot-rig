//Maya ASCII 2023 scene
//Name: ab_rig_C_die.ma
//Last modified: Tue, Jan 09, 2024 12:47:25 PM
//Codeset: 932
file -rdi 1 -ns "ab_rig_C" -rfn "ab_rig_CRN" -op "v=0;" -typ "mayaAscii" "C:/Users/S15627/Desktop/ab_rig_C//rig/ab_rig_C.ma";
file -r -ns "ab_rig_C" -dr 1 -rfn "ab_rig_CRN" -op "v=0;" -typ "mayaAscii" "C:/Users/S15627/Desktop/ab_rig_C//rig/ab_rig_C.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "Mayatomr" "10.0.1.8m - 3.7.1.26 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "574E32C6-4DCF-D61E-6DDC-4D907EF7BC47";
createNode transform -s -n "persp";
	rename -uid "7759DF06-481A-4857-056A-BEB00A99E03E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 456.38601319499696 99.915815037330248 321.12338406664145 ;
	setAttr ".r" -type "double3" -5.7383527293969747 45.799999999997965 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "40BDAFB0-4157-485C-1090-66926C8D93D1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".coi" 674.15768746160256;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.4817263535890106e-06 105.44146810010125 -178.90811941749806 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B321D786-4AF0-4306-2A63-798D4BEF0347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "28CDCAA3-4BE7-7FBA-7935-49B74A3E3A3E";
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
	rename -uid "7EE1C79B-43BD-1B2A-6A33-96BB8099ECA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "28ED610D-41B2-27BD-218B-7BA0C1D78119";
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
	rename -uid "E15002D6-4105-D110-9D80-B480C2E75B26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "750F5E4F-4327-18A4-7FE9-4A86F131A7DB";
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
createNode transform -n "pPlane1";
	rename -uid "264ECC7D-45A0-6FC6-ADF6-36B6372FCD68";
	setAttr ".s" -type "double3" 789.04704174665494 789.04704174665494 789.04704174665494 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "439DAD42-4509-B575-0A91-6CBA6761389C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "slime_picker";
	rename -uid "8808B082-49AA-AFC5-75ED-A5831A519BCF";
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
	rename -uid "BD4FE92D-4E6F-6E72-F8DB-11A937C296C6";
	setAttr -s 18 ".lnk";
	setAttr -s 18 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B071937B-4BB2-BBD3-767E-74BDFB8440A8";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "647A2FB8-4703-7E10-8ED8-1D974C05D632";
createNode displayLayerManager -n "layerManager";
	rename -uid "E9F5FC4D-4A47-7434-10EF-11A15503AD35";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "CB3A1F3F-4B28-EB98-5416-88B7BD41870C";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "283267B7-4222-1328-1FC2-95A436F0A056";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EFDBD9C1-4B9C-42DC-15D2-99B114EA4C8E";
	setAttr ".g" yes;
createNode reference -n "ab_rig_CRN";
	rename -uid "D928C65E-475C-E242-41E8-09977918DB4F";
	setAttr ".fn[0]" -type "string" "C:/Users/S15627/Desktop/ab_rig_C.ma";
	setAttr -s 877 ".phl";
	setAttr ".phl[150]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[1457]" 0;
	setAttr ".phl[1458]" 0;
	setAttr ".phl[1460]" 0;
	setAttr ".phl[1461]" 0;
	setAttr ".phl[1463]" 0;
	setAttr ".phl[1464]" 0;
	setAttr ".phl[1466]" 0;
	setAttr ".phl[1467]" 0;
	setAttr ".phl[1469]" 0;
	setAttr ".phl[1763]" 0;
	setAttr ".phl[2967]" 0;
	setAttr ".phl[2969]" 0;
	setAttr ".phl[2971]" 0;
	setAttr ".phl[2973]" 0;
	setAttr ".phl[3130]" 0;
	setAttr ".phl[3131]" 0;
	setAttr ".phl[3132]" 0;
	setAttr ".phl[3133]" 0;
	setAttr ".phl[3134]" 0;
	setAttr ".phl[3135]" 0;
	setAttr ".phl[3136]" 0;
	setAttr ".phl[3137]" 0;
	setAttr ".phl[3138]" 0;
	setAttr ".phl[3139]" 0;
	setAttr ".phl[3140]" 0;
	setAttr ".phl[3141]" 0;
	setAttr ".phl[3142]" 0;
	setAttr ".phl[3143]" 0;
	setAttr ".phl[3144]" 0;
	setAttr ".phl[3145]" 0;
	setAttr ".phl[3146]" 0;
	setAttr ".phl[3147]" 0;
	setAttr ".phl[3148]" 0;
	setAttr ".phl[3149]" 0;
	setAttr ".phl[3150]" 0;
	setAttr ".phl[3151]" 0;
	setAttr ".phl[3152]" 0;
	setAttr ".phl[3153]" 0;
	setAttr ".phl[3154]" 0;
	setAttr ".phl[3155]" 0;
	setAttr ".phl[3156]" 0;
	setAttr ".phl[3157]" 0;
	setAttr ".phl[3158]" 0;
	setAttr ".phl[3159]" 0;
	setAttr ".phl[3160]" 0;
	setAttr ".phl[3161]" 0;
	setAttr ".phl[3162]" 0;
	setAttr ".phl[3163]" 0;
	setAttr ".phl[3164]" 0;
	setAttr ".phl[3165]" 0;
	setAttr ".phl[3166]" 0;
	setAttr ".phl[3167]" 0;
	setAttr ".phl[3168]" 0;
	setAttr ".phl[3169]" 0;
	setAttr ".phl[3170]" 0;
	setAttr ".phl[3171]" 0;
	setAttr ".phl[3172]" 0;
	setAttr ".phl[3173]" 0;
	setAttr ".phl[3174]" 0;
	setAttr ".phl[3175]" 0;
	setAttr ".phl[3176]" 0;
	setAttr ".phl[3177]" 0;
	setAttr ".phl[3178]" 0;
	setAttr ".phl[3179]" 0;
	setAttr ".phl[3180]" 0;
	setAttr ".phl[3181]" 0;
	setAttr ".phl[3182]" 0;
	setAttr ".phl[3183]" 0;
	setAttr ".phl[3184]" 0;
	setAttr ".phl[3185]" 0;
	setAttr ".phl[3186]" 0;
	setAttr ".phl[3187]" 0;
	setAttr ".phl[3188]" 0;
	setAttr ".phl[3189]" 0;
	setAttr ".phl[3190]" 0;
	setAttr ".phl[3191]" 0;
	setAttr ".phl[3192]" 0;
	setAttr ".phl[3193]" 0;
	setAttr ".phl[3194]" 0;
	setAttr ".phl[3195]" 0;
	setAttr ".phl[3196]" 0;
	setAttr ".phl[3197]" 0;
	setAttr ".phl[3198]" 0;
	setAttr ".phl[3199]" 0;
	setAttr ".phl[3200]" 0;
	setAttr ".phl[3201]" 0;
	setAttr ".phl[3202]" 0;
	setAttr ".phl[3203]" 0;
	setAttr ".phl[3204]" 0;
	setAttr ".phl[3205]" 0;
	setAttr ".phl[3206]" 0;
	setAttr ".phl[3207]" 0;
	setAttr ".phl[3208]" 0;
	setAttr ".phl[3209]" 0;
	setAttr ".phl[3210]" 0;
	setAttr ".phl[3211]" 0;
	setAttr ".phl[3212]" 0;
	setAttr ".phl[3213]" 0;
	setAttr ".phl[3214]" 0;
	setAttr ".phl[3215]" 0;
	setAttr ".phl[3216]" 0;
	setAttr ".phl[3217]" 0;
	setAttr ".phl[3218]" 0;
	setAttr ".phl[3219]" 0;
	setAttr ".phl[3220]" 0;
	setAttr ".phl[3221]" 0;
	setAttr ".phl[3222]" 0;
	setAttr ".phl[3223]" 0;
	setAttr ".phl[3224]" 0;
	setAttr ".phl[3225]" 0;
	setAttr ".phl[3226]" 0;
	setAttr ".phl[3227]" 0;
	setAttr ".phl[3228]" 0;
	setAttr ".phl[3229]" 0;
	setAttr ".phl[3230]" 0;
	setAttr ".phl[3231]" 0;
	setAttr ".phl[3232]" 0;
	setAttr ".phl[3233]" 0;
	setAttr ".phl[3234]" 0;
	setAttr ".phl[3235]" 0;
	setAttr ".phl[3236]" 0;
	setAttr ".phl[3237]" 0;
	setAttr ".phl[3238]" 0;
	setAttr ".phl[3239]" 0;
	setAttr ".phl[3240]" 0;
	setAttr ".phl[3241]" 0;
	setAttr ".phl[3242]" 0;
	setAttr ".phl[3243]" 0;
	setAttr ".phl[3244]" 0;
	setAttr ".phl[3245]" 0;
	setAttr ".phl[3246]" 0;
	setAttr ".phl[3247]" 0;
	setAttr ".phl[3248]" 0;
	setAttr ".phl[3249]" 0;
	setAttr ".phl[3250]" 0;
	setAttr ".phl[3251]" 0;
	setAttr ".phl[3252]" 0;
	setAttr ".phl[3253]" 0;
	setAttr ".phl[3254]" 0;
	setAttr ".phl[3255]" 0;
	setAttr ".phl[3256]" 0;
	setAttr ".phl[3257]" 0;
	setAttr ".phl[3258]" 0;
	setAttr ".phl[3259]" 0;
	setAttr ".phl[3260]" 0;
	setAttr ".phl[3261]" 0;
	setAttr ".phl[3262]" 0;
	setAttr ".phl[3263]" 0;
	setAttr ".phl[3264]" 0;
	setAttr ".phl[3265]" 0;
	setAttr ".phl[3266]" 0;
	setAttr ".phl[3267]" 0;
	setAttr ".phl[3268]" 0;
	setAttr ".phl[3269]" 0;
	setAttr ".phl[3270]" 0;
	setAttr ".phl[3271]" 0;
	setAttr ".phl[3272]" 0;
	setAttr ".phl[3273]" 0;
	setAttr ".phl[3274]" 0;
	setAttr ".phl[3275]" 0;
	setAttr ".phl[3276]" 0;
	setAttr ".phl[3277]" 0;
	setAttr ".phl[3278]" 0;
	setAttr ".phl[3279]" 0;
	setAttr ".phl[3280]" 0;
	setAttr ".phl[3281]" 0;
	setAttr ".phl[3282]" 0;
	setAttr ".phl[3283]" 0;
	setAttr ".phl[3284]" 0;
	setAttr ".phl[3285]" 0;
	setAttr ".phl[3286]" 0;
	setAttr ".phl[3287]" 0;
	setAttr ".phl[3288]" 0;
	setAttr ".phl[3289]" 0;
	setAttr ".phl[3290]" 0;
	setAttr ".phl[3291]" 0;
	setAttr ".phl[3292]" 0;
	setAttr ".phl[3293]" 0;
	setAttr ".phl[3294]" 0;
	setAttr ".phl[3295]" 0;
	setAttr ".phl[3296]" 0;
	setAttr ".phl[3297]" 0;
	setAttr ".phl[3298]" 0;
	setAttr ".phl[3299]" 0;
	setAttr ".phl[3300]" 0;
	setAttr ".phl[3301]" 0;
	setAttr ".phl[3302]" 0;
	setAttr ".phl[3303]" 0;
	setAttr ".phl[3304]" 0;
	setAttr ".phl[3305]" 0;
	setAttr ".phl[3306]" 0;
	setAttr ".phl[3307]" 0;
	setAttr ".phl[3308]" 0;
	setAttr ".phl[3309]" 0;
	setAttr ".phl[3310]" 0;
	setAttr ".phl[3311]" 0;
	setAttr ".phl[3312]" 0;
	setAttr ".phl[3313]" 0;
	setAttr ".phl[3314]" 0;
	setAttr ".phl[3315]" 0;
	setAttr ".phl[3316]" 0;
	setAttr ".phl[3317]" 0;
	setAttr ".phl[3318]" 0;
	setAttr ".phl[3319]" 0;
	setAttr ".phl[3320]" 0;
	setAttr ".phl[3321]" 0;
	setAttr ".phl[3322]" 0;
	setAttr ".phl[3323]" 0;
	setAttr ".phl[3324]" 0;
	setAttr ".phl[3325]" 0;
	setAttr ".phl[3326]" 0;
	setAttr ".phl[3327]" 0;
	setAttr ".phl[3328]" 0;
	setAttr ".phl[3329]" 0;
	setAttr ".phl[3330]" 0;
	setAttr ".phl[3331]" 0;
	setAttr ".phl[3332]" 0;
	setAttr ".phl[3333]" 0;
	setAttr ".phl[3334]" 0;
	setAttr ".phl[3335]" 0;
	setAttr ".phl[3336]" 0;
	setAttr ".phl[3337]" 0;
	setAttr ".phl[3338]" 0;
	setAttr ".phl[3339]" 0;
	setAttr ".phl[3340]" 0;
	setAttr ".phl[3341]" 0;
	setAttr ".phl[3342]" 0;
	setAttr ".phl[3343]" 0;
	setAttr ".phl[3344]" 0;
	setAttr ".phl[3345]" 0;
	setAttr ".phl[3346]" 0;
	setAttr ".phl[3347]" 0;
	setAttr ".phl[3348]" 0;
	setAttr ".phl[3349]" 0;
	setAttr ".phl[3350]" 0;
	setAttr ".phl[3351]" 0;
	setAttr ".phl[3352]" 0;
	setAttr ".phl[3353]" 0;
	setAttr ".phl[3354]" 0;
	setAttr ".phl[3355]" 0;
	setAttr ".phl[3356]" 0;
	setAttr ".phl[3357]" 0;
	setAttr ".phl[3358]" 0;
	setAttr ".phl[3359]" 0;
	setAttr ".phl[3360]" 0;
	setAttr ".phl[3361]" 0;
	setAttr ".phl[3362]" 0;
	setAttr ".phl[3363]" 0;
	setAttr ".phl[3364]" 0;
	setAttr ".phl[3365]" 0;
	setAttr ".phl[3366]" 0;
	setAttr ".phl[3367]" 0;
	setAttr ".phl[3368]" 0;
	setAttr ".phl[3369]" 0;
	setAttr ".phl[3370]" 0;
	setAttr ".phl[3371]" 0;
	setAttr ".phl[3372]" 0;
	setAttr ".phl[3373]" 0;
	setAttr ".phl[3374]" 0;
	setAttr ".phl[3375]" 0;
	setAttr ".phl[3376]" 0;
	setAttr ".phl[3377]" 0;
	setAttr ".phl[3378]" 0;
	setAttr ".phl[3379]" 0;
	setAttr ".phl[3380]" 0;
	setAttr ".phl[3381]" 0;
	setAttr ".phl[3382]" 0;
	setAttr ".phl[3383]" 0;
	setAttr ".phl[3384]" 0;
	setAttr ".phl[3385]" 0;
	setAttr ".phl[3386]" 0;
	setAttr ".phl[3387]" 0;
	setAttr ".phl[3388]" 0;
	setAttr ".phl[3389]" 0;
	setAttr ".phl[3390]" 0;
	setAttr ".phl[3391]" 0;
	setAttr ".phl[3392]" 0;
	setAttr ".phl[3393]" 0;
	setAttr ".phl[3394]" 0;
	setAttr ".phl[3395]" 0;
	setAttr ".phl[3396]" 0;
	setAttr ".phl[3397]" 0;
	setAttr ".phl[3398]" 0;
	setAttr ".phl[3399]" 0;
	setAttr ".phl[3400]" 0;
	setAttr ".phl[3401]" 0;
	setAttr ".phl[3402]" 0;
	setAttr ".phl[3403]" 0;
	setAttr ".phl[3404]" 0;
	setAttr ".phl[3405]" 0;
	setAttr ".phl[3406]" 0;
	setAttr ".phl[3407]" 0;
	setAttr ".phl[3408]" 0;
	setAttr ".phl[3409]" 0;
	setAttr ".phl[3410]" 0;
	setAttr ".phl[3411]" 0;
	setAttr ".phl[3412]" 0;
	setAttr ".phl[3413]" 0;
	setAttr ".phl[3414]" 0;
	setAttr ".phl[3415]" 0;
	setAttr ".phl[3416]" 0;
	setAttr ".phl[3417]" 0;
	setAttr ".phl[3418]" 0;
	setAttr ".phl[3419]" 0;
	setAttr ".phl[3420]" 0;
	setAttr ".phl[3421]" 0;
	setAttr ".phl[3422]" 0;
	setAttr ".phl[3423]" 0;
	setAttr ".phl[3424]" 0;
	setAttr ".phl[3425]" 0;
	setAttr ".phl[3426]" 0;
	setAttr ".phl[3427]" 0;
	setAttr ".phl[3428]" 0;
	setAttr ".phl[3429]" 0;
	setAttr ".phl[3430]" 0;
	setAttr ".phl[3431]" 0;
	setAttr ".phl[3432]" 0;
	setAttr ".phl[3433]" 0;
	setAttr ".phl[3434]" 0;
	setAttr ".phl[3435]" 0;
	setAttr ".phl[3436]" 0;
	setAttr ".phl[3437]" 0;
	setAttr ".phl[3438]" 0;
	setAttr ".phl[3439]" 0;
	setAttr ".phl[3440]" 0;
	setAttr ".phl[3441]" 0;
	setAttr ".phl[3442]" 0;
	setAttr ".phl[3443]" 0;
	setAttr ".phl[3444]" 0;
	setAttr ".phl[3445]" 0;
	setAttr ".phl[3446]" 0;
	setAttr ".phl[3447]" 0;
	setAttr ".phl[3448]" 0;
	setAttr ".phl[3449]" 0;
	setAttr ".phl[3450]" 0;
	setAttr ".phl[3451]" 0;
	setAttr ".phl[3452]" 0;
	setAttr ".phl[3453]" 0;
	setAttr ".phl[3454]" 0;
	setAttr ".phl[3455]" 0;
	setAttr ".phl[3456]" 0;
	setAttr ".phl[3457]" 0;
	setAttr ".phl[3458]" 0;
	setAttr ".phl[3459]" 0;
	setAttr ".phl[3460]" 0;
	setAttr ".phl[3461]" 0;
	setAttr ".phl[3462]" 0;
	setAttr ".phl[3463]" 0;
	setAttr ".phl[3464]" 0;
	setAttr ".phl[3465]" 0;
	setAttr ".phl[3466]" 0;
	setAttr ".phl[3467]" 0;
	setAttr ".phl[3468]" 0;
	setAttr ".phl[3469]" 0;
	setAttr ".phl[3470]" 0;
	setAttr ".phl[3471]" 0;
	setAttr ".phl[3472]" 0;
	setAttr ".phl[3473]" 0;
	setAttr ".phl[3474]" 0;
	setAttr ".phl[3475]" 0;
	setAttr ".phl[3476]" 0;
	setAttr ".phl[3477]" 0;
	setAttr ".phl[3478]" 0;
	setAttr ".phl[3479]" 0;
	setAttr ".phl[3480]" 0;
	setAttr ".phl[3481]" 0;
	setAttr ".phl[3482]" 0;
	setAttr ".phl[3483]" 0;
	setAttr ".phl[3484]" 0;
	setAttr ".phl[3485]" 0;
	setAttr ".phl[3486]" 0;
	setAttr ".phl[3487]" 0;
	setAttr ".phl[3488]" 0;
	setAttr ".phl[3489]" 0;
	setAttr ".phl[3490]" 0;
	setAttr ".phl[3491]" 0;
	setAttr ".phl[3492]" 0;
	setAttr ".phl[3493]" 0;
	setAttr ".phl[3494]" 0;
	setAttr ".phl[3495]" 0;
	setAttr ".phl[3496]" 0;
	setAttr ".phl[3497]" 0;
	setAttr ".phl[3498]" 0;
	setAttr ".phl[3499]" 0;
	setAttr ".phl[3500]" 0;
	setAttr ".phl[3501]" 0;
	setAttr ".phl[3502]" 0;
	setAttr ".phl[3503]" 0;
	setAttr ".phl[3504]" 0;
	setAttr ".phl[3505]" 0;
	setAttr ".phl[3506]" 0;
	setAttr ".phl[3507]" 0;
	setAttr ".phl[3508]" 0;
	setAttr ".phl[3509]" 0;
	setAttr ".phl[3510]" 0;
	setAttr ".phl[3511]" 0;
	setAttr ".phl[3512]" 0;
	setAttr ".phl[3513]" 0;
	setAttr ".phl[3514]" 0;
	setAttr ".phl[3515]" 0;
	setAttr ".phl[3516]" 0;
	setAttr ".phl[3517]" 0;
	setAttr ".phl[3518]" 0;
	setAttr ".phl[3519]" 0;
	setAttr ".phl[3520]" 0;
	setAttr ".phl[3521]" 0;
	setAttr ".phl[3522]" 0;
	setAttr ".phl[3523]" 0;
	setAttr ".phl[3524]" 0;
	setAttr ".phl[3525]" 0;
	setAttr ".phl[3526]" 0;
	setAttr ".phl[3527]" 0;
	setAttr ".phl[3528]" 0;
	setAttr ".phl[3529]" 0;
	setAttr ".phl[3530]" 0;
	setAttr ".phl[3531]" 0;
	setAttr ".phl[3532]" 0;
	setAttr ".phl[3533]" 0;
	setAttr ".phl[3534]" 0;
	setAttr ".phl[3535]" 0;
	setAttr ".phl[3536]" 0;
	setAttr ".phl[3537]" 0;
	setAttr ".phl[3538]" 0;
	setAttr ".phl[3539]" 0;
	setAttr ".phl[3540]" 0;
	setAttr ".phl[3541]" 0;
	setAttr ".phl[3542]" 0;
	setAttr ".phl[3543]" 0;
	setAttr ".phl[3544]" 0;
	setAttr ".phl[3545]" 0;
	setAttr ".phl[3546]" 0;
	setAttr ".phl[3547]" 0;
	setAttr ".phl[3548]" 0;
	setAttr ".phl[3549]" 0;
	setAttr ".phl[3550]" 0;
	setAttr ".phl[3551]" 0;
	setAttr ".phl[3552]" 0;
	setAttr ".phl[3553]" 0;
	setAttr ".phl[3554]" 0;
	setAttr ".phl[3555]" 0;
	setAttr ".phl[3556]" 0;
	setAttr ".phl[3557]" 0;
	setAttr ".phl[3558]" 0;
	setAttr ".phl[3559]" 0;
	setAttr ".phl[3560]" 0;
	setAttr ".phl[3561]" 0;
	setAttr ".phl[3562]" 0;
	setAttr ".phl[3563]" 0;
	setAttr ".phl[3564]" 0;
	setAttr ".phl[3565]" 0;
	setAttr ".phl[3566]" 0;
	setAttr ".phl[3567]" 0;
	setAttr ".phl[3568]" 0;
	setAttr ".phl[3569]" 0;
	setAttr ".phl[3570]" 0;
	setAttr ".phl[3571]" 0;
	setAttr ".phl[3572]" 0;
	setAttr ".phl[3573]" 0;
	setAttr ".phl[3574]" 0;
	setAttr ".phl[3575]" 0;
	setAttr ".phl[3576]" 0;
	setAttr ".phl[3577]" 0;
	setAttr ".phl[3578]" 0;
	setAttr ".phl[3579]" 0;
	setAttr ".phl[3580]" 0;
	setAttr ".phl[3581]" 0;
	setAttr ".phl[3582]" 0;
	setAttr ".phl[3583]" 0;
	setAttr ".phl[3584]" 0;
	setAttr ".phl[3585]" 0;
	setAttr ".phl[3586]" 0;
	setAttr ".phl[3587]" 0;
	setAttr ".phl[3588]" 0;
	setAttr ".phl[3589]" 0;
	setAttr ".phl[3590]" 0;
	setAttr ".phl[3591]" 0;
	setAttr ".phl[3592]" 0;
	setAttr ".phl[3593]" 0;
	setAttr ".phl[3594]" 0;
	setAttr ".phl[3595]" 0;
	setAttr ".phl[3596]" 0;
	setAttr ".phl[3597]" 0;
	setAttr ".phl[3598]" 0;
	setAttr ".phl[3599]" 0;
	setAttr ".phl[3600]" 0;
	setAttr ".phl[3601]" 0;
	setAttr ".phl[3602]" 0;
	setAttr ".phl[3603]" 0;
	setAttr ".phl[3604]" 0;
	setAttr ".phl[3605]" 0;
	setAttr ".phl[3606]" 0;
	setAttr ".phl[3607]" 0;
	setAttr ".phl[3608]" 0;
	setAttr ".phl[3609]" 0;
	setAttr ".phl[3610]" 0;
	setAttr ".phl[3611]" 0;
	setAttr ".phl[3612]" 0;
	setAttr ".phl[3613]" 0;
	setAttr ".phl[3614]" 0;
	setAttr ".phl[3615]" 0;
	setAttr ".phl[3616]" 0;
	setAttr ".phl[3617]" 0;
	setAttr ".phl[3618]" 0;
	setAttr ".phl[3619]" 0;
	setAttr ".phl[3620]" 0;
	setAttr ".phl[3621]" 0;
	setAttr ".phl[3622]" 0;
	setAttr ".phl[3623]" 0;
	setAttr ".phl[3624]" 0;
	setAttr ".phl[3625]" 0;
	setAttr ".phl[3626]" 0;
	setAttr ".phl[3627]" 0;
	setAttr ".phl[3628]" 0;
	setAttr ".phl[3629]" 0;
	setAttr ".phl[3630]" 0;
	setAttr ".phl[3631]" 0;
	setAttr ".phl[3632]" 0;
	setAttr ".phl[3633]" 0;
	setAttr ".phl[3634]" 0;
	setAttr ".phl[3635]" 0;
	setAttr ".phl[3636]" 0;
	setAttr ".phl[3637]" 0;
	setAttr ".phl[3638]" 0;
	setAttr ".phl[3639]" 0;
	setAttr ".phl[3640]" 0;
	setAttr ".phl[3641]" 0;
	setAttr ".phl[3642]" 0;
	setAttr ".phl[3643]" 0;
	setAttr ".phl[3644]" 0;
	setAttr ".phl[3645]" 0;
	setAttr ".phl[3646]" 0;
	setAttr ".phl[3647]" 0;
	setAttr ".phl[3648]" 0;
	setAttr ".phl[3649]" 0;
	setAttr ".phl[3650]" 0;
	setAttr ".phl[3651]" 0;
	setAttr ".phl[3652]" 0;
	setAttr ".phl[3653]" 0;
	setAttr ".phl[3654]" 0;
	setAttr ".phl[3655]" 0;
	setAttr ".phl[3656]" 0;
	setAttr ".phl[3657]" 0;
	setAttr ".phl[3658]" 0;
	setAttr ".phl[3659]" 0;
	setAttr ".phl[3660]" 0;
	setAttr ".phl[3661]" 0;
	setAttr ".phl[3662]" 0;
	setAttr ".phl[3663]" 0;
	setAttr ".phl[3664]" 0;
	setAttr ".phl[3665]" 0;
	setAttr ".phl[3666]" 0;
	setAttr ".phl[3667]" 0;
	setAttr ".phl[3668]" 0;
	setAttr ".phl[3669]" 0;
	setAttr ".phl[3670]" 0;
	setAttr ".phl[3671]" 0;
	setAttr ".phl[3672]" 0;
	setAttr ".phl[3673]" 0;
	setAttr ".phl[3674]" 0;
	setAttr ".phl[3675]" 0;
	setAttr ".phl[3676]" 0;
	setAttr ".phl[3677]" 0;
	setAttr ".phl[3678]" 0;
	setAttr ".phl[3679]" 0;
	setAttr ".phl[3680]" 0;
	setAttr ".phl[3681]" 0;
	setAttr ".phl[3682]" 0;
	setAttr ".phl[3683]" 0;
	setAttr ".phl[3684]" 0;
	setAttr ".phl[3685]" 0;
	setAttr ".phl[3686]" 0;
	setAttr ".phl[3687]" 0;
	setAttr ".phl[3688]" 0;
	setAttr ".phl[3689]" 0;
	setAttr ".phl[3690]" 0;
	setAttr ".phl[3691]" 0;
	setAttr ".phl[3692]" 0;
	setAttr ".phl[3693]" 0;
	setAttr ".phl[3694]" 0;
	setAttr ".phl[3695]" 0;
	setAttr ".phl[3696]" 0;
	setAttr ".phl[3697]" 0;
	setAttr ".phl[3698]" 0;
	setAttr ".phl[3699]" 0;
	setAttr ".phl[3700]" 0;
	setAttr ".phl[3701]" 0;
	setAttr ".phl[3702]" 0;
	setAttr ".phl[3703]" 0;
	setAttr ".phl[3704]" 0;
	setAttr ".phl[3705]" 0;
	setAttr ".phl[3706]" 0;
	setAttr ".phl[3707]" 0;
	setAttr ".phl[3708]" 0;
	setAttr ".phl[3709]" 0;
	setAttr ".phl[3710]" 0;
	setAttr ".phl[3711]" 0;
	setAttr ".phl[3712]" 0;
	setAttr ".phl[3713]" 0;
	setAttr ".phl[3714]" 0;
	setAttr ".phl[3715]" 0;
	setAttr ".phl[3716]" 0;
	setAttr ".phl[3717]" 0;
	setAttr ".phl[3718]" 0;
	setAttr ".phl[3719]" 0;
	setAttr ".phl[3720]" 0;
	setAttr ".phl[3721]" 0;
	setAttr ".phl[3722]" 0;
	setAttr ".phl[3723]" 0;
	setAttr ".phl[3724]" 0;
	setAttr ".phl[3725]" 0;
	setAttr ".phl[3726]" 0;
	setAttr ".phl[3727]" 0;
	setAttr ".phl[3728]" 0;
	setAttr ".phl[3729]" 0;
	setAttr ".phl[3730]" 0;
	setAttr ".phl[3731]" 0;
	setAttr ".phl[3732]" 0;
	setAttr ".phl[3733]" 0;
	setAttr ".phl[3734]" 0;
	setAttr ".phl[3735]" 0;
	setAttr ".phl[3736]" 0;
	setAttr ".phl[3737]" 0;
	setAttr ".phl[3738]" 0;
	setAttr ".phl[3739]" 0;
	setAttr ".phl[3740]" 0;
	setAttr ".phl[3741]" 0;
	setAttr ".phl[3742]" 0;
	setAttr ".phl[3743]" 0;
	setAttr ".phl[3744]" 0;
	setAttr ".phl[3745]" 0;
	setAttr ".phl[3746]" 0;
	setAttr ".phl[3747]" 0;
	setAttr ".phl[3748]" 0;
	setAttr ".phl[3749]" 0;
	setAttr ".phl[3750]" 0;
	setAttr ".phl[3751]" 0;
	setAttr ".phl[3752]" 0;
	setAttr ".phl[3753]" 0;
	setAttr ".phl[3754]" 0;
	setAttr ".phl[3755]" 0;
	setAttr ".phl[3756]" 0;
	setAttr ".phl[3757]" 0;
	setAttr ".phl[3758]" 0;
	setAttr ".phl[3759]" 0;
	setAttr ".phl[3760]" 0;
	setAttr ".phl[3761]" 0;
	setAttr ".phl[3762]" 0;
	setAttr ".phl[3763]" 0;
	setAttr ".phl[3764]" 0;
	setAttr ".phl[3765]" 0;
	setAttr ".phl[3766]" 0;
	setAttr ".phl[3767]" 0;
	setAttr ".phl[3768]" 0;
	setAttr ".phl[3769]" 0;
	setAttr ".phl[3770]" 0;
	setAttr ".phl[3771]" 0;
	setAttr ".phl[3772]" 0;
	setAttr ".phl[3773]" 0;
	setAttr ".phl[3774]" 0;
	setAttr ".phl[3775]" 0;
	setAttr ".phl[3776]" 0;
	setAttr ".phl[3777]" 0;
	setAttr ".phl[3778]" 0;
	setAttr ".phl[3779]" 0;
	setAttr ".phl[3780]" 0;
	setAttr ".phl[3781]" 0;
	setAttr ".phl[3782]" 0;
	setAttr ".phl[3783]" 0;
	setAttr ".phl[3784]" 0;
	setAttr ".phl[3785]" 0;
	setAttr ".phl[3786]" 0;
	setAttr ".phl[3787]" 0;
	setAttr ".phl[3788]" 0;
	setAttr ".phl[3789]" 0;
	setAttr ".phl[3790]" 0;
	setAttr ".phl[3791]" 0;
	setAttr ".phl[3792]" 0;
	setAttr ".phl[3793]" 0;
	setAttr ".phl[3794]" 0;
	setAttr ".phl[3795]" 0;
	setAttr ".phl[3796]" 0;
	setAttr ".phl[3797]" 0;
	setAttr ".phl[3798]" 0;
	setAttr ".phl[3799]" 0;
	setAttr ".phl[3800]" 0;
	setAttr ".phl[3801]" 0;
	setAttr ".phl[3802]" 0;
	setAttr ".phl[3803]" 0;
	setAttr ".phl[3804]" 0;
	setAttr ".phl[3805]" 0;
	setAttr ".phl[3806]" 0;
	setAttr ".phl[3807]" 0;
	setAttr ".phl[3808]" 0;
	setAttr ".phl[3809]" 0;
	setAttr ".phl[3810]" 0;
	setAttr ".phl[3811]" 0;
	setAttr ".phl[3812]" 0;
	setAttr ".phl[3813]" 0;
	setAttr ".phl[3814]" 0;
	setAttr ".phl[3815]" 0;
	setAttr ".phl[3816]" 0;
	setAttr ".phl[3817]" 0;
	setAttr ".phl[3818]" 0;
	setAttr ".phl[3819]" 0;
	setAttr ".phl[3820]" 0;
	setAttr ".phl[3821]" 0;
	setAttr ".phl[3822]" 0;
	setAttr ".phl[3823]" 0;
	setAttr ".phl[3824]" 0;
	setAttr ".phl[3825]" 0;
	setAttr ".phl[3826]" 0;
	setAttr ".phl[3827]" 0;
	setAttr ".phl[3828]" 0;
	setAttr ".phl[3829]" 0;
	setAttr ".phl[3830]" 0;
	setAttr ".phl[3831]" 0;
	setAttr ".phl[3832]" 0;
	setAttr ".phl[3833]" 0;
	setAttr ".phl[3834]" 0;
	setAttr ".phl[3835]" 0;
	setAttr ".phl[3836]" 0;
	setAttr ".phl[3837]" 0;
	setAttr ".phl[3838]" 0;
	setAttr ".phl[3839]" 0;
	setAttr ".phl[3840]" 0;
	setAttr ".phl[3841]" 0;
	setAttr ".phl[3842]" 0;
	setAttr ".phl[3843]" 0;
	setAttr ".phl[3844]" 0;
	setAttr ".phl[3845]" 0;
	setAttr ".phl[3846]" 0;
	setAttr ".phl[3847]" 0;
	setAttr ".phl[3848]" 0;
	setAttr ".phl[3849]" 0;
	setAttr ".phl[3850]" 0;
	setAttr ".phl[3851]" 0;
	setAttr ".phl[3852]" 0;
	setAttr ".phl[3853]" 0;
	setAttr ".phl[3854]" 0;
	setAttr ".phl[3855]" 0;
	setAttr ".phl[3856]" 0;
	setAttr ".phl[3857]" 0;
	setAttr ".phl[3858]" 0;
	setAttr ".phl[3859]" 0;
	setAttr ".phl[3860]" 0;
	setAttr ".phl[3861]" 0;
	setAttr ".phl[3862]" 0;
	setAttr ".phl[3863]" 0;
	setAttr ".phl[3864]" 0;
	setAttr ".phl[3865]" 0;
	setAttr ".phl[3866]" 0;
	setAttr ".phl[3867]" 0;
	setAttr ".phl[3868]" 0;
	setAttr ".phl[3869]" 0;
	setAttr ".phl[3870]" 0;
	setAttr ".phl[3871]" 0;
	setAttr ".phl[3872]" 0;
	setAttr ".phl[3873]" 0;
	setAttr ".phl[3874]" 0;
	setAttr ".phl[3875]" 0;
	setAttr ".phl[3876]" 0;
	setAttr ".phl[3877]" 0;
	setAttr ".phl[3878]" 0;
	setAttr ".phl[3879]" 0;
	setAttr ".phl[3880]" 0;
	setAttr ".phl[3881]" 0;
	setAttr ".phl[3882]" 0;
	setAttr ".phl[3883]" 0;
	setAttr ".phl[3884]" 0;
	setAttr ".phl[3885]" 0;
	setAttr ".phl[3886]" 0;
	setAttr ".phl[3887]" 0;
	setAttr ".phl[3888]" 0;
	setAttr ".phl[3889]" 0;
	setAttr ".phl[3890]" 0;
	setAttr ".phl[3891]" 0;
	setAttr ".phl[3892]" 0;
	setAttr ".phl[3893]" 0;
	setAttr ".phl[3894]" 0;
	setAttr ".phl[3895]" 0;
	setAttr ".phl[3896]" 0;
	setAttr ".phl[3897]" 0;
	setAttr ".phl[3898]" 0;
	setAttr ".phl[3899]" 0;
	setAttr ".phl[3900]" 0;
	setAttr ".phl[3901]" 0;
	setAttr ".phl[3902]" 0;
	setAttr ".phl[3903]" 0;
	setAttr ".phl[3904]" 0;
	setAttr ".phl[3905]" 0;
	setAttr ".phl[3906]" 0;
	setAttr ".phl[3907]" 0;
	setAttr ".phl[3908]" 0;
	setAttr ".phl[3909]" 0;
	setAttr ".phl[3910]" 0;
	setAttr ".phl[3911]" 0;
	setAttr ".phl[3912]" 0;
	setAttr ".phl[3913]" 0;
	setAttr ".phl[3914]" 0;
	setAttr ".phl[3915]" 0;
	setAttr ".phl[3916]" 0;
	setAttr ".phl[3917]" 0;
	setAttr ".phl[3918]" 0;
	setAttr ".phl[3919]" 0;
	setAttr ".phl[3920]" 0;
	setAttr ".phl[3921]" 0;
	setAttr ".phl[3922]" 0;
	setAttr ".phl[3923]" 0;
	setAttr ".phl[3924]" 0;
	setAttr ".phl[3925]" 0;
	setAttr ".phl[3926]" 0;
	setAttr ".phl[3927]" 0;
	setAttr ".phl[3928]" 0;
	setAttr ".phl[3929]" 0;
	setAttr ".phl[3930]" 0;
	setAttr ".phl[3931]" 0;
	setAttr ".phl[3932]" 0;
	setAttr ".phl[3933]" 0;
	setAttr ".phl[3934]" 0;
	setAttr ".phl[3935]" 0;
	setAttr ".phl[3936]" 0;
	setAttr ".phl[3937]" 0;
	setAttr ".phl[3938]" 0;
	setAttr ".phl[3939]" 0;
	setAttr ".phl[3940]" 0;
	setAttr ".phl[3941]" 0;
	setAttr ".phl[3942]" 0;
	setAttr ".phl[3943]" 0;
	setAttr ".phl[3944]" 0;
	setAttr ".phl[3945]" 0;
	setAttr ".phl[3946]" 0;
	setAttr ".phl[3947]" 0;
	setAttr ".phl[3948]" 0;
	setAttr ".phl[3949]" 0;
	setAttr ".phl[3950]" 0;
	setAttr ".phl[3951]" 0;
	setAttr ".phl[3952]" 0;
	setAttr ".phl[3953]" 0;
	setAttr ".phl[3954]" 0;
	setAttr ".phl[3955]" 0;
	setAttr ".phl[3956]" 0;
	setAttr ".phl[3957]" 0;
	setAttr ".phl[3958]" 0;
	setAttr ".phl[3959]" 0;
	setAttr ".phl[3960]" 0;
	setAttr ".phl[3961]" 0;
	setAttr ".phl[3962]" 0;
	setAttr ".phl[3963]" 0;
	setAttr ".phl[3964]" 0;
	setAttr ".phl[3965]" 0;
	setAttr ".phl[3966]" 0;
	setAttr ".phl[3967]" 0;
	setAttr ".phl[3968]" 0;
	setAttr ".phl[3969]" 0;
	setAttr ".phl[3970]" 0;
	setAttr ".phl[3971]" 0;
	setAttr ".phl[3972]" 0;
	setAttr ".phl[3973]" 0;
	setAttr ".phl[3974]" 0;
	setAttr ".phl[3975]" 0;
	setAttr ".phl[3976]" 0;
	setAttr ".phl[3977]" 0;
	setAttr ".phl[3978]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_CRN"
		"ab_rig_CRN" 30
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body" "visibility" " 1"
		
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp|ab_rig_C:Geo_C_eye" 
		"visibility" " 1"
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset.message" 
		"ab_rig_CRN.placeHolderList[150]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_optionShape1.message" 
		"ab_rig_CRN.placeHolderList[162]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.scaleX" 
		"ab_rig_CRN.placeHolderList[1000]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.scaleY" 
		"ab_rig_CRN.placeHolderList[1001]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.scaleZ" 
		"ab_rig_CRN.placeHolderList[1002]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_L_eye_sub|ab_rig_C:Jnt_L_eye_sub_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1457]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_L_eye_sub|ab_rig_C:Jnt_L_eye_sub_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1458]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_upper|ab_rig_C:Jnt_C_eye_sub_upper_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1460]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_upper|ab_rig_C:Jnt_C_eye_sub_upper_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1461]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_under|ab_rig_C:Jnt_C_eye_sub_under_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1463]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_under|ab_rig_C:Jnt_C_eye_sub_under_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1464]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_R_eye_sub|ab_rig_C:Jnt_R_eye_sub_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1466]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_R_eye_sub|ab_rig_C:Jnt_R_eye_sub_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1467]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1469]" ""
		5 3 "ab_rig_CRN" "ab_rig_C:bindPose5.message" "ab_rig_CRN.placeHolderList[1763]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader1.message" "ab_rig_CRN.placeHolderList[2967]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader2.message" "ab_rig_CRN.placeHolderList[2969]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader3.message" "ab_rig_CRN.placeHolderList[2971]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader4.message" "ab_rig_CRN.placeHolderList[2973]" 
		""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateX" 
		"ab_rig_CRN.placeHolderList[3121]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateY" 
		"ab_rig_CRN.placeHolderList[3122]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateZ" 
		"ab_rig_CRN.placeHolderList[3123]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateX" 
		"ab_rig_CRN.placeHolderList[3124]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateY" 
		"ab_rig_CRN.placeHolderList[3125]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[3126]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleX" 
		"ab_rig_CRN.placeHolderList[3127]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleY" 
		"ab_rig_CRN.placeHolderList[3128]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[3129]" ""
		"ab_rig_CRN" 852
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp" 
		"translate" " -type \"double3\" 0 -7.84066694413205134 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset" 
		"translate" " -type \"double3\" 0.13067111372947693 -7.93474868123312937 -0.11600586026906967"
		
		2 "ab_rig_C:GEO_L" "displayType" " 2"
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp.message" "ab_rig_CRN.placeHolderList[3130]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp.message" "ab_rig_CRN.placeHolderList[3131]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body.message" 
		"ab_rig_CRN.placeHolderList[3132]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body|ab_rig_C:Geo_C_bodyShape.message" 
		"ab_rig_CRN.placeHolderList[3133]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body|ab_rig_C:Geo_C_bodyShapeOrig.message" 
		"ab_rig_CRN.placeHolderList[3134]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp|ab_rig_C:Geo_C_eye.message" 
		"ab_rig_CRN.placeHolderList[3135]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp|ab_rig_C:Geo_C_eye|ab_rig_C:Geo_C_eyeShape.message" 
		"ab_rig_CRN.placeHolderList[3136]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp|ab_rig_C:Geo_C_eye|ab_rig_C:Geo_C_eyeShapeOrig.message" 
		"ab_rig_CRN.placeHolderList[3137]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp.message" "ab_rig_CRN.placeHolderList[3138]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.message" 
		"ab_rig_CRN.placeHolderList[3139]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateX" 
		"ab_rig_CRN.placeHolderList[3140]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateY" 
		"ab_rig_CRN.placeHolderList[3141]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3142]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3143]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3144]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3145]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3146]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.message" 
		"ab_rig_CRN.placeHolderList[3147]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateX" 
		"ab_rig_CRN.placeHolderList[3148]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateY" 
		"ab_rig_CRN.placeHolderList[3149]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3150]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3151]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3152]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3153]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_Root_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3154]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateX" 
		"ab_rig_CRN.placeHolderList[3155]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateY" 
		"ab_rig_CRN.placeHolderList[3156]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateZ" 
		"ab_rig_CRN.placeHolderList[3157]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateX" 
		"ab_rig_CRN.placeHolderList[3158]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateY" 
		"ab_rig_CRN.placeHolderList[3159]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateZ" 
		"ab_rig_CRN.placeHolderList[3160]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.message" 
		"ab_rig_CRN.placeHolderList[3161]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_C_bodyShape.message" 
		"ab_rig_CRN.placeHolderList[3162]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp.message" 
		"ab_rig_CRN.placeHolderList[3163]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset.message" 
		"ab_rig_CRN.placeHolderList[3164]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateX" 
		"ab_rig_CRN.placeHolderList[3165]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateY" 
		"ab_rig_CRN.placeHolderList[3166]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateZ" 
		"ab_rig_CRN.placeHolderList[3167]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateX" 
		"ab_rig_CRN.placeHolderList[3168]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateY" 
		"ab_rig_CRN.placeHolderList[3169]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[3170]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleX" 
		"ab_rig_CRN.placeHolderList[3171]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleY" 
		"ab_rig_CRN.placeHolderList[3172]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[3173]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.message" 
		"ab_rig_CRN.placeHolderList[3174]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_C_body_middle_optionShape.message" 
		"ab_rig_CRN.placeHolderList[3175]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_C_body_middle_optionShape1.message" 
		"ab_rig_CRN.placeHolderList[3176]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[3177]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3178]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[3179]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[3180]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3181]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3182]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3183]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3184]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[3185]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3186]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[3187]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[3188]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[3189]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3190]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[3191]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[3192]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3193]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3194]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3195]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3196]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[3197]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3198]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[3199]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[3200]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[3201]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[3202]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3203]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[3204]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[3205]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3206]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3207]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3208]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3209]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[3210]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3211]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[3212]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[3213]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[3214]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3215]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[3216]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[3217]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3218]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3219]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3220]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3221]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[3222]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3223]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[3224]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[3225]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[3226]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset.message" 
		"ab_rig_CRN.placeHolderList[3227]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateX" 
		"ab_rig_CRN.placeHolderList[3228]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateY" 
		"ab_rig_CRN.placeHolderList[3229]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateZ" 
		"ab_rig_CRN.placeHolderList[3230]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateX" 
		"ab_rig_CRN.placeHolderList[3231]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateY" 
		"ab_rig_CRN.placeHolderList[3232]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[3233]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[3234]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape.message" 
		"ab_rig_CRN.placeHolderList[3235]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape1.message" 
		"ab_rig_CRN.placeHolderList[3236]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape2.message" 
		"ab_rig_CRN.placeHolderList[3237]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape3.message" 
		"ab_rig_CRN.placeHolderList[3238]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[3239]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3240]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[3241]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[3242]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3243]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3244]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3245]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3246]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[3247]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3248]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[3249]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[3250]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[3251]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3252]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[3253]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[3254]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3255]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3256]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3257]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3258]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[3259]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3260]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape49.message" 
		"ab_rig_CRN.placeHolderList[3261]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape50.message" 
		"ab_rig_CRN.placeHolderList[3262]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape51.message" 
		"ab_rig_CRN.placeHolderList[3263]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset.message" 
		"ab_rig_CRN.placeHolderList[3264]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateX" 
		"ab_rig_CRN.placeHolderList[3265]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateY" 
		"ab_rig_CRN.placeHolderList[3266]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateZ" 
		"ab_rig_CRN.placeHolderList[3267]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateX" 
		"ab_rig_CRN.placeHolderList[3268]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateY" 
		"ab_rig_CRN.placeHolderList[3269]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[3270]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[3271]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape.message" 
		"ab_rig_CRN.placeHolderList[3272]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape4.message" 
		"ab_rig_CRN.placeHolderList[3273]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape5.message" 
		"ab_rig_CRN.placeHolderList[3274]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape6.message" 
		"ab_rig_CRN.placeHolderList[3275]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1.message" 
		"ab_rig_CRN.placeHolderList[3276]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateX" 
		"ab_rig_CRN.placeHolderList[3277]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateY" 
		"ab_rig_CRN.placeHolderList[3278]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateZ" 
		"ab_rig_CRN.placeHolderList[3279]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateX" 
		"ab_rig_CRN.placeHolderList[3280]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateY" 
		"ab_rig_CRN.placeHolderList[3281]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[3282]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleX" 
		"ab_rig_CRN.placeHolderList[3283]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleY" 
		"ab_rig_CRN.placeHolderList[3284]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[3285]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.message" 
		"ab_rig_CRN.placeHolderList[3286]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_optionShape.message" 
		"ab_rig_CRN.placeHolderList[3287]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_optionShape2.message" 
		"ab_rig_CRN.placeHolderList[3288]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[3289]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3290]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[3291]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[3292]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3293]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3294]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3295]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3296]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[3297]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3298]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[3299]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[3300]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[3301]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3302]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[3303]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[3304]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3305]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3306]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3307]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3308]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[3309]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3310]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape7.message" 
		"ab_rig_CRN.placeHolderList[3311]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape8.message" 
		"ab_rig_CRN.placeHolderList[3312]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape9.message" 
		"ab_rig_CRN.placeHolderList[3313]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[3314]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3315]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[3316]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[3317]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3318]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3319]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3320]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3321]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[3322]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3323]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[3324]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[3325]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[3326]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3327]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[3328]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[3329]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3330]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3331]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3332]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3333]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[3334]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3335]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape10.message" 
		"ab_rig_CRN.placeHolderList[3336]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape11.message" 
		"ab_rig_CRN.placeHolderList[3337]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape12.message" 
		"ab_rig_CRN.placeHolderList[3338]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset.message" 
		"ab_rig_CRN.placeHolderList[3339]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateX" 
		"ab_rig_CRN.placeHolderList[3340]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateY" 
		"ab_rig_CRN.placeHolderList[3341]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateZ" 
		"ab_rig_CRN.placeHolderList[3342]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateX" 
		"ab_rig_CRN.placeHolderList[3343]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateY" 
		"ab_rig_CRN.placeHolderList[3344]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[3345]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[3346]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape.message" 
		"ab_rig_CRN.placeHolderList[3347]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape4.message" 
		"ab_rig_CRN.placeHolderList[3348]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape5.message" 
		"ab_rig_CRN.placeHolderList[3349]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape6.message" 
		"ab_rig_CRN.placeHolderList[3350]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[3351]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3352]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[3353]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[3354]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3355]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3356]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3357]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3358]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[3359]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3360]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[3361]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[3362]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[3363]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3364]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[3365]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[3366]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3367]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3368]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3369]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3370]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[3371]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3372]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape4.message" 
		"ab_rig_CRN.placeHolderList[3373]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape5.message" 
		"ab_rig_CRN.placeHolderList[3374]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape6.message" 
		"ab_rig_CRN.placeHolderList[3375]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset.message" 
		"ab_rig_CRN.placeHolderList[3376]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateX" 
		"ab_rig_CRN.placeHolderList[3377]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateY" 
		"ab_rig_CRN.placeHolderList[3378]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateZ" 
		"ab_rig_CRN.placeHolderList[3379]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateX" 
		"ab_rig_CRN.placeHolderList[3380]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateY" 
		"ab_rig_CRN.placeHolderList[3381]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[3382]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[3383]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape.message" 
		"ab_rig_CRN.placeHolderList[3384]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape4.message" 
		"ab_rig_CRN.placeHolderList[3385]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape5.message" 
		"ab_rig_CRN.placeHolderList[3386]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape6.message" 
		"ab_rig_CRN.placeHolderList[3387]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset.message" 
		"ab_rig_CRN.placeHolderList[3388]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateX" 
		"ab_rig_CRN.placeHolderList[3389]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateY" 
		"ab_rig_CRN.placeHolderList[3390]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateZ" 
		"ab_rig_CRN.placeHolderList[3391]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateX" 
		"ab_rig_CRN.placeHolderList[3392]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateY" 
		"ab_rig_CRN.placeHolderList[3393]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateZ" 
		"ab_rig_CRN.placeHolderList[3394]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.message" 
		"ab_rig_CRN.placeHolderList[3395]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape.message" 
		"ab_rig_CRN.placeHolderList[3396]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape1.message" 
		"ab_rig_CRN.placeHolderList[3397]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape2.message" 
		"ab_rig_CRN.placeHolderList[3398]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape3.message" 
		"ab_rig_CRN.placeHolderList[3399]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset.message" 
		"ab_rig_CRN.placeHolderList[3400]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateX" 
		"ab_rig_CRN.placeHolderList[3401]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateY" 
		"ab_rig_CRN.placeHolderList[3402]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateZ" 
		"ab_rig_CRN.placeHolderList[3403]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateX" 
		"ab_rig_CRN.placeHolderList[3404]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateY" 
		"ab_rig_CRN.placeHolderList[3405]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[3406]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleX" 
		"ab_rig_CRN.placeHolderList[3407]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleY" 
		"ab_rig_CRN.placeHolderList[3408]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[3409]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.message" 
		"ab_rig_CRN.placeHolderList[3410]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_optionShape.message" 
		"ab_rig_CRN.placeHolderList[3411]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_optionShape1.message" 
		"ab_rig_CRN.placeHolderList[3412]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[3413]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3414]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[3415]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[3416]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3417]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3418]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3419]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3420]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[3421]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3422]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[3423]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[3424]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[3425]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3426]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[3427]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[3428]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3429]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3430]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3431]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3432]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[3433]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3434]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[3435]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[3436]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[3437]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[3438]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3439]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[3440]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[3441]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3442]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3443]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3444]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3445]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[3446]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3447]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[3448]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[3449]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[3450]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3451]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[3452]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[3453]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3454]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3455]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3456]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3457]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[3458]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3459]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[3460]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[3461]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[3462]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset.message" 
		"ab_rig_CRN.placeHolderList[3463]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateX" 
		"ab_rig_CRN.placeHolderList[3464]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateY" 
		"ab_rig_CRN.placeHolderList[3465]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateZ" 
		"ab_rig_CRN.placeHolderList[3466]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateX" 
		"ab_rig_CRN.placeHolderList[3467]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateY" 
		"ab_rig_CRN.placeHolderList[3468]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[3469]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[3470]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape.message" 
		"ab_rig_CRN.placeHolderList[3471]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape1.message" 
		"ab_rig_CRN.placeHolderList[3472]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape2.message" 
		"ab_rig_CRN.placeHolderList[3473]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape3.message" 
		"ab_rig_CRN.placeHolderList[3474]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[3475]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset.message" 
		"ab_rig_CRN.placeHolderList[3476]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[3477]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[3478]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[3479]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[3480]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[3481]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[3482]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[3483]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape.message" 
		"ab_rig_CRN.placeHolderList[3484]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[3485]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[3486]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[3487]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset.message" 
		"ab_rig_CRN.placeHolderList[3488]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[3489]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[3490]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[3491]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[3492]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[3493]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[3494]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[3495]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape.message" 
		"ab_rig_CRN.placeHolderList[3496]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[3497]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[3498]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[3499]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset.message" 
		"ab_rig_CRN.placeHolderList[3500]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateX" 
		"ab_rig_CRN.placeHolderList[3501]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateY" 
		"ab_rig_CRN.placeHolderList[3502]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateZ" 
		"ab_rig_CRN.placeHolderList[3503]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateX" 
		"ab_rig_CRN.placeHolderList[3504]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateY" 
		"ab_rig_CRN.placeHolderList[3505]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[3506]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[3507]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape.message" 
		"ab_rig_CRN.placeHolderList[3508]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape1.message" 
		"ab_rig_CRN.placeHolderList[3509]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape2.message" 
		"ab_rig_CRN.placeHolderList[3510]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape3.message" 
		"ab_rig_CRN.placeHolderList[3511]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset.message" 
		"ab_rig_CRN.placeHolderList[3512]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateX" 
		"ab_rig_CRN.placeHolderList[3513]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateY" 
		"ab_rig_CRN.placeHolderList[3514]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateZ" 
		"ab_rig_CRN.placeHolderList[3515]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateX" 
		"ab_rig_CRN.placeHolderList[3516]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateY" 
		"ab_rig_CRN.placeHolderList[3517]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateZ" 
		"ab_rig_CRN.placeHolderList[3518]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.message" 
		"ab_rig_CRN.placeHolderList[3519]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape.message" 
		"ab_rig_CRN.placeHolderList[3520]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape1.message" 
		"ab_rig_CRN.placeHolderList[3521]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape2.message" 
		"ab_rig_CRN.placeHolderList[3522]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape3.message" 
		"ab_rig_CRN.placeHolderList[3523]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp.message" 
		"ab_rig_CRN.placeHolderList[3524]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b.rotateY" 
		"ab_rig_CRN.placeHolderList[3525]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a.translateZ" 
		"ab_rig_CRN.placeHolderList[3526]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a.rotateX" 
		"ab_rig_CRN.placeHolderList[3527]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset.message" 
		"ab_rig_CRN.placeHolderList[3528]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002.message" 
		"ab_rig_CRN.placeHolderList[3529]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateX" 
		"ab_rig_CRN.placeHolderList[3530]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateY" 
		"ab_rig_CRN.placeHolderList[3531]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateZ" 
		"ab_rig_CRN.placeHolderList[3532]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateX" 
		"ab_rig_CRN.placeHolderList[3533]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateY" 
		"ab_rig_CRN.placeHolderList[3534]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateZ" 
		"ab_rig_CRN.placeHolderList[3535]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleX" 
		"ab_rig_CRN.placeHolderList[3536]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleY" 
		"ab_rig_CRN.placeHolderList[3537]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleZ" 
		"ab_rig_CRN.placeHolderList[3538]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.message" 
		"ab_rig_CRN.placeHolderList[3539]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape.message" 
		"ab_rig_CRN.placeHolderList[3540]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape1.message" 
		"ab_rig_CRN.placeHolderList[3541]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape2.message" 
		"ab_rig_CRN.placeHolderList[3542]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape3.message" 
		"ab_rig_CRN.placeHolderList[3543]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset.message" 
		"ab_rig_CRN.placeHolderList[3544]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateX" 
		"ab_rig_CRN.placeHolderList[3545]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateY" 
		"ab_rig_CRN.placeHolderList[3546]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateZ" 
		"ab_rig_CRN.placeHolderList[3547]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateX" 
		"ab_rig_CRN.placeHolderList[3548]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateY" 
		"ab_rig_CRN.placeHolderList[3549]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateZ" 
		"ab_rig_CRN.placeHolderList[3550]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleX" 
		"ab_rig_CRN.placeHolderList[3551]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleY" 
		"ab_rig_CRN.placeHolderList[3552]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleZ" 
		"ab_rig_CRN.placeHolderList[3553]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.message" 
		"ab_rig_CRN.placeHolderList[3554]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape.message" 
		"ab_rig_CRN.placeHolderList[3555]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape1.message" 
		"ab_rig_CRN.placeHolderList[3556]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape2.message" 
		"ab_rig_CRN.placeHolderList[3557]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape3.message" 
		"ab_rig_CRN.placeHolderList[3558]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset.message" 
		"ab_rig_CRN.placeHolderList[3559]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateX" 
		"ab_rig_CRN.placeHolderList[3560]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateY" 
		"ab_rig_CRN.placeHolderList[3561]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateZ" 
		"ab_rig_CRN.placeHolderList[3562]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateX" 
		"ab_rig_CRN.placeHolderList[3563]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateY" 
		"ab_rig_CRN.placeHolderList[3564]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateZ" 
		"ab_rig_CRN.placeHolderList[3565]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.message" 
		"ab_rig_CRN.placeHolderList[3566]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape.message" 
		"ab_rig_CRN.placeHolderList[3567]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape1.message" 
		"ab_rig_CRN.placeHolderList[3568]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape2.message" 
		"ab_rig_CRN.placeHolderList[3569]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape3.message" 
		"ab_rig_CRN.placeHolderList[3570]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset.message" 
		"ab_rig_CRN.placeHolderList[3571]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateX" 
		"ab_rig_CRN.placeHolderList[3572]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateY" 
		"ab_rig_CRN.placeHolderList[3573]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateZ" 
		"ab_rig_CRN.placeHolderList[3574]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateX" 
		"ab_rig_CRN.placeHolderList[3575]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateY" 
		"ab_rig_CRN.placeHolderList[3576]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateZ" 
		"ab_rig_CRN.placeHolderList[3577]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.message" 
		"ab_rig_CRN.placeHolderList[3578]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape.message" 
		"ab_rig_CRN.placeHolderList[3579]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape1.message" 
		"ab_rig_CRN.placeHolderList[3580]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape2.message" 
		"ab_rig_CRN.placeHolderList[3581]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape3.message" 
		"ab_rig_CRN.placeHolderList[3582]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset.message" 
		"ab_rig_CRN.placeHolderList[3583]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[3584]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[3585]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[3586]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[3587]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[3588]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[3589]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[3590]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape.message" 
		"ab_rig_CRN.placeHolderList[3591]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape1.message" 
		"ab_rig_CRN.placeHolderList[3592]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape2.message" 
		"ab_rig_CRN.placeHolderList[3593]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape3.message" 
		"ab_rig_CRN.placeHolderList[3594]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re.message" 
		"ab_rig_CRN.placeHolderList[3595]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset.message" 
		"ab_rig_CRN.placeHolderList[3596]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[3597]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[3598]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[3599]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[3600]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[3601]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[3602]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[3603]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape.message" 
		"ab_rig_CRN.placeHolderList[3604]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape1.message" 
		"ab_rig_CRN.placeHolderList[3605]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape2.message" 
		"ab_rig_CRN.placeHolderList[3606]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape3.message" 
		"ab_rig_CRN.placeHolderList[3607]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp.message" 
		"ab_rig_CRN.placeHolderList[3608]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_upper.message" 
		"ab_rig_CRN.placeHolderList[3609]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_upper|ab_rig_C:null1_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3610]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_under.message" 
		"ab_rig_CRN.placeHolderList[3611]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_under|ab_rig_C:null2_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3612]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_tre" 
		"ab_rig_CRN.placeHolderList[3613]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_strength" 
		"ab_rig_CRN.placeHolderList[3614]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.eye_type" 
		"ab_rig_CRN.placeHolderList[3615]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.color" 
		"ab_rig_CRN.placeHolderList[3616]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp.message" "ab_rig_CRN.placeHolderList[3617]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root.message" 
		"ab_rig_CRN.placeHolderList[3618]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp.message" 
		"ab_rig_CRN.placeHolderList[3619]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root.message" 
		"ab_rig_CRN.placeHolderList[3620]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye.message" 
		"ab_rig_CRN.placeHolderList[3621]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_L_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[3622]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_upper.message" 
		"ab_rig_CRN.placeHolderList[3623]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_under.message" 
		"ab_rig_CRN.placeHolderList[3624]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_R_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[3625]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3626]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye_root_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3627]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye_root_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3628]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp.message" 
		"ab_rig_CRN.placeHolderList[3629]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under.message" 
		"ab_rig_CRN.placeHolderList[3630]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under|ab_rig_C:Jnt_body_under_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3631]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under|ab_rig_C:Jnt_body_under_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3632]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper.message" 
		"ab_rig_CRN.placeHolderList[3633]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper|ab_rig_C:Jnt_body_upper_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3634]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper|ab_rig_C:Jnt_body_upper_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3635]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[3636]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[3637]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_001|ab_rig_C:Jnt_C_body_middle_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3638]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_001|ab_rig_C:Jnt_C_body_middle_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3639]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[3640]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_002|ab_rig_C:Jnt_C_body_middle_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3641]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_002|ab_rig_C:Jnt_C_body_middle_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3642]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[3643]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_001|ab_rig_C:Jnt_L_body_middle_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3644]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_001|ab_rig_C:Jnt_L_body_middle_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3645]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[3646]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_002|ab_rig_C:Jnt_L_body_middle_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3647]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_002|ab_rig_C:Jnt_L_body_middle_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3648]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[3649]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_003|ab_rig_C:Jnt_L_body_middle_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3650]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_003|ab_rig_C:Jnt_L_body_middle_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3651]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[3652]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_003|ab_rig_C:Jnt_R_body_middle_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3653]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_003|ab_rig_C:Jnt_R_body_middle_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3654]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[3655]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_002|ab_rig_C:Jnt_R_body_middle_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3656]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_002|ab_rig_C:Jnt_R_body_middle_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3657]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[3658]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_001|ab_rig_C:Jnt_R_body_middle_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3659]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_001|ab_rig_C:Jnt_R_body_middle_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3660]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[3661]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[3662]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_001|ab_rig_C:Jnt_C_body_under_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3663]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_001|ab_rig_C:Jnt_C_body_under_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3664]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[3665]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_002|ab_rig_C:Jnt_C_body_under_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3666]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_002|ab_rig_C:Jnt_C_body_under_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3667]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[3668]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_001|ab_rig_C:Jnt_L_body_under_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3669]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_001|ab_rig_C:Jnt_L_body_under_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3670]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[3671]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_002|ab_rig_C:Jnt_L_body_under_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3672]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_002|ab_rig_C:Jnt_L_body_under_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3673]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[3674]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_003|ab_rig_C:Jnt_L_body_under_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3675]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_003|ab_rig_C:Jnt_L_body_under_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3676]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[3677]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_002|ab_rig_C:Jnt_R_body_under_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3678]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_002|ab_rig_C:Jnt_R_body_under_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3679]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[3680]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_003|ab_rig_C:Jnt_R_body_under_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3681]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_003|ab_rig_C:Jnt_R_body_under_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3682]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[3683]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_001|ab_rig_C:Jnt_R_body_under_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3684]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_001|ab_rig_C:Jnt_R_body_under_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3685]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[3686]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[3687]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_001|ab_rig_C:Jnt_C_body_upper_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3688]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_001|ab_rig_C:Jnt_C_body_upper_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3689]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[3690]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_002|ab_rig_C:Jnt_C_body_upper_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3691]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_002|ab_rig_C:Jnt_C_body_upper_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3692]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[3693]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_001|ab_rig_C:Jnt_L_body_upper_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3694]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_001|ab_rig_C:Jnt_L_body_upper_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3695]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[3696]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_002|ab_rig_C:Jnt_L_body_upper_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3697]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_002|ab_rig_C:Jnt_L_body_upper_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3698]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[3699]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_003|ab_rig_C:Jnt_L_body_upper_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3700]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_003|ab_rig_C:Jnt_L_body_upper_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3701]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[3702]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_003|ab_rig_C:Jnt_R_body_upper_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3703]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_003|ab_rig_C:Jnt_R_body_upper_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3704]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[3705]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_002|ab_rig_C:Jnt_R_body_upper_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3706]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_002|ab_rig_C:Jnt_R_body_upper_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3707]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[3708]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_001|ab_rig_C:Jnt_R_body_upper_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3709]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_001|ab_rig_C:Jnt_R_body_upper_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[3710]" ""
		5 3 "ab_rig_CRN" "ab_rig_C:shapeEditorManager.message" "ab_rig_CRN.placeHolderList[3711]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:poseInterpolatorManager.message" "ab_rig_CRN.placeHolderList[3712]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:layerManager.message" "ab_rig_CRN.placeHolderList[3713]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:defaultLayer.message" "ab_rig_CRN.placeHolderList[3714]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader1SG.message" "ab_rig_CRN.placeHolderList[3715]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader2SG.message" "ab_rig_CRN.placeHolderList[3716]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader3SG.message" "ab_rig_CRN.placeHolderList[3717]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader4SG.message" "ab_rig_CRN.placeHolderList[3718]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide86.message" "ab_rig_CRN.placeHolderList[3719]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide84.message" "ab_rig_CRN.placeHolderList[3720]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide85.message" "ab_rig_CRN.placeHolderList[3721]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors7.message" "ab_rig_CRN.placeHolderList[3722]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors5.message" "ab_rig_CRN.placeHolderList[3723]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition4.message" "ab_rig_CRN.placeHolderList[3724]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide24.message" "ab_rig_CRN.placeHolderList[3725]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide22.message" "ab_rig_CRN.placeHolderList[3726]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide26.message" "ab_rig_CRN.placeHolderList[3727]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide25.message" "ab_rig_CRN.placeHolderList[3728]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors8.message" "ab_rig_CRN.placeHolderList[3729]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors6.message" "ab_rig_CRN.placeHolderList[3730]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition5.message" "ab_rig_CRN.placeHolderList[3731]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide23.message" "ab_rig_CRN.placeHolderList[3732]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide28.message" "ab_rig_CRN.placeHolderList[3733]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide27.message" "ab_rig_CRN.placeHolderList[3734]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide87.message" "ab_rig_CRN.placeHolderList[3735]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide88.message" "ab_rig_CRN.placeHolderList[3736]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors3.message" "ab_rig_CRN.placeHolderList[3737]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors1.message" "ab_rig_CRN.placeHolderList[3738]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition1.message" "ab_rig_CRN.placeHolderList[3739]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide13.message" "ab_rig_CRN.placeHolderList[3740]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide11.message" "ab_rig_CRN.placeHolderList[3741]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide15.message" "ab_rig_CRN.placeHolderList[3742]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide14.message" "ab_rig_CRN.placeHolderList[3743]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors4.message" "ab_rig_CRN.placeHolderList[3744]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors2.message" "ab_rig_CRN.placeHolderList[3745]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition2.message" "ab_rig_CRN.placeHolderList[3746]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide12.message" "ab_rig_CRN.placeHolderList[3747]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide17.message" "ab_rig_CRN.placeHolderList[3748]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide16.message" "ab_rig_CRN.placeHolderList[3749]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide69.message" "ab_rig_CRN.placeHolderList[3750]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide70.message" "ab_rig_CRN.placeHolderList[3751]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide71.message" "ab_rig_CRN.placeHolderList[3752]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide72.message" "ab_rig_CRN.placeHolderList[3753]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide73.message" "ab_rig_CRN.placeHolderList[3754]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide76.message" "ab_rig_CRN.placeHolderList[3755]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide74.message" "ab_rig_CRN.placeHolderList[3756]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide75.message" "ab_rig_CRN.placeHolderList[3757]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide77.message" "ab_rig_CRN.placeHolderList[3758]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide78.message" "ab_rig_CRN.placeHolderList[3759]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide94.message" "ab_rig_CRN.placeHolderList[3760]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide95.message" "ab_rig_CRN.placeHolderList[3761]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide96.message" "ab_rig_CRN.placeHolderList[3762]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide97.message" "ab_rig_CRN.placeHolderList[3763]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide98.message" "ab_rig_CRN.placeHolderList[3764]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide59.message" "ab_rig_CRN.placeHolderList[3765]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide60.message" "ab_rig_CRN.placeHolderList[3766]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide61.message" "ab_rig_CRN.placeHolderList[3767]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide62.message" "ab_rig_CRN.placeHolderList[3768]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide63.message" "ab_rig_CRN.placeHolderList[3769]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide66.message" "ab_rig_CRN.placeHolderList[3770]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide64.message" "ab_rig_CRN.placeHolderList[3771]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide65.message" "ab_rig_CRN.placeHolderList[3772]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide67.message" "ab_rig_CRN.placeHolderList[3773]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide68.message" "ab_rig_CRN.placeHolderList[3774]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide56.message" "ab_rig_CRN.placeHolderList[3775]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendTwoAttr1.message" "ab_rig_CRN.placeHolderList[3776]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide55.message" "ab_rig_CRN.placeHolderList[3777]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide57.message" "ab_rig_CRN.placeHolderList[3778]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide58.message" "ab_rig_CRN.placeHolderList[3779]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors11.message" "ab_rig_CRN.placeHolderList[3780]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors9.message" "ab_rig_CRN.placeHolderList[3781]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition7.message" "ab_rig_CRN.placeHolderList[3782]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide35.message" "ab_rig_CRN.placeHolderList[3783]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide33.message" "ab_rig_CRN.placeHolderList[3784]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide37.message" "ab_rig_CRN.placeHolderList[3785]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide36.message" "ab_rig_CRN.placeHolderList[3786]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors12.message" "ab_rig_CRN.placeHolderList[3787]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors10.message" "ab_rig_CRN.placeHolderList[3788]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition8.message" "ab_rig_CRN.placeHolderList[3789]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide34.message" "ab_rig_CRN.placeHolderList[3790]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide39.message" "ab_rig_CRN.placeHolderList[3791]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide38.message" "ab_rig_CRN.placeHolderList[3792]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors15.message" "ab_rig_CRN.placeHolderList[3793]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors13.message" "ab_rig_CRN.placeHolderList[3794]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition10.message" "ab_rig_CRN.placeHolderList[3795]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide46.message" "ab_rig_CRN.placeHolderList[3796]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide44.message" "ab_rig_CRN.placeHolderList[3797]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide48.message" "ab_rig_CRN.placeHolderList[3798]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide47.message" "ab_rig_CRN.placeHolderList[3799]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors16.message" "ab_rig_CRN.placeHolderList[3800]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors14.message" "ab_rig_CRN.placeHolderList[3801]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition11.message" "ab_rig_CRN.placeHolderList[3802]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide45.message" "ab_rig_CRN.placeHolderList[3803]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide50.message" "ab_rig_CRN.placeHolderList[3804]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide49.message" "ab_rig_CRN.placeHolderList[3805]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide79.message" "ab_rig_CRN.placeHolderList[3806]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide80.message" "ab_rig_CRN.placeHolderList[3807]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide81.message" "ab_rig_CRN.placeHolderList[3808]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide82.message" "ab_rig_CRN.placeHolderList[3809]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide83.message" "ab_rig_CRN.placeHolderList[3810]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide92.message" "ab_rig_CRN.placeHolderList[3811]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide93.message" "ab_rig_CRN.placeHolderList[3812]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide91.message" "ab_rig_CRN.placeHolderList[3813]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide89.message" "ab_rig_CRN.placeHolderList[3814]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide90.message" "ab_rig_CRN.placeHolderList[3815]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide86.message" "ab_rig_CRN.placeHolderList[3816]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide84.message" "ab_rig_CRN.placeHolderList[3817]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide85.message" "ab_rig_CRN.placeHolderList[3818]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors7.message" "ab_rig_CRN.placeHolderList[3819]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors5.message" "ab_rig_CRN.placeHolderList[3820]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition4.message" "ab_rig_CRN.placeHolderList[3821]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide24.message" "ab_rig_CRN.placeHolderList[3822]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide22.message" "ab_rig_CRN.placeHolderList[3823]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide26.message" "ab_rig_CRN.placeHolderList[3824]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide25.message" "ab_rig_CRN.placeHolderList[3825]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors8.message" "ab_rig_CRN.placeHolderList[3826]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors6.message" "ab_rig_CRN.placeHolderList[3827]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition5.message" "ab_rig_CRN.placeHolderList[3828]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide23.message" "ab_rig_CRN.placeHolderList[3829]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide28.message" "ab_rig_CRN.placeHolderList[3830]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide27.message" "ab_rig_CRN.placeHolderList[3831]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide87.message" "ab_rig_CRN.placeHolderList[3832]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide88.message" "ab_rig_CRN.placeHolderList[3833]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors3.message" "ab_rig_CRN.placeHolderList[3834]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors1.message" "ab_rig_CRN.placeHolderList[3835]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition1.message" "ab_rig_CRN.placeHolderList[3836]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide13.message" "ab_rig_CRN.placeHolderList[3837]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide11.message" "ab_rig_CRN.placeHolderList[3838]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide15.message" "ab_rig_CRN.placeHolderList[3839]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide14.message" "ab_rig_CRN.placeHolderList[3840]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors4.message" "ab_rig_CRN.placeHolderList[3841]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors2.message" "ab_rig_CRN.placeHolderList[3842]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition2.message" "ab_rig_CRN.placeHolderList[3843]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide12.message" "ab_rig_CRN.placeHolderList[3844]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide17.message" "ab_rig_CRN.placeHolderList[3845]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide16.message" "ab_rig_CRN.placeHolderList[3846]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide69.message" "ab_rig_CRN.placeHolderList[3847]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide70.message" "ab_rig_CRN.placeHolderList[3848]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide71.message" "ab_rig_CRN.placeHolderList[3849]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide72.message" "ab_rig_CRN.placeHolderList[3850]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide73.message" "ab_rig_CRN.placeHolderList[3851]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide76.message" "ab_rig_CRN.placeHolderList[3852]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide74.message" "ab_rig_CRN.placeHolderList[3853]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide75.message" "ab_rig_CRN.placeHolderList[3854]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide77.message" "ab_rig_CRN.placeHolderList[3855]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide78.message" "ab_rig_CRN.placeHolderList[3856]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide94.message" "ab_rig_CRN.placeHolderList[3857]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide95.message" "ab_rig_CRN.placeHolderList[3858]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide96.message" "ab_rig_CRN.placeHolderList[3859]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide97.message" "ab_rig_CRN.placeHolderList[3860]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide98.message" "ab_rig_CRN.placeHolderList[3861]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide59.message" "ab_rig_CRN.placeHolderList[3862]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide60.message" "ab_rig_CRN.placeHolderList[3863]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide61.message" "ab_rig_CRN.placeHolderList[3864]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide62.message" "ab_rig_CRN.placeHolderList[3865]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide63.message" "ab_rig_CRN.placeHolderList[3866]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide66.message" "ab_rig_CRN.placeHolderList[3867]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide64.message" "ab_rig_CRN.placeHolderList[3868]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide65.message" "ab_rig_CRN.placeHolderList[3869]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide67.message" "ab_rig_CRN.placeHolderList[3870]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide68.message" "ab_rig_CRN.placeHolderList[3871]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide56.message" "ab_rig_CRN.placeHolderList[3872]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendTwoAttr1.message" "ab_rig_CRN.placeHolderList[3873]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide55.message" "ab_rig_CRN.placeHolderList[3874]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide57.message" "ab_rig_CRN.placeHolderList[3875]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide58.message" "ab_rig_CRN.placeHolderList[3876]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors11.message" "ab_rig_CRN.placeHolderList[3877]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors9.message" "ab_rig_CRN.placeHolderList[3878]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition7.message" "ab_rig_CRN.placeHolderList[3879]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide35.message" "ab_rig_CRN.placeHolderList[3880]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide33.message" "ab_rig_CRN.placeHolderList[3881]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide37.message" "ab_rig_CRN.placeHolderList[3882]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide36.message" "ab_rig_CRN.placeHolderList[3883]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors12.message" "ab_rig_CRN.placeHolderList[3884]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors10.message" "ab_rig_CRN.placeHolderList[3885]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition8.message" "ab_rig_CRN.placeHolderList[3886]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide34.message" "ab_rig_CRN.placeHolderList[3887]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide39.message" "ab_rig_CRN.placeHolderList[3888]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide38.message" "ab_rig_CRN.placeHolderList[3889]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors15.message" "ab_rig_CRN.placeHolderList[3890]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors13.message" "ab_rig_CRN.placeHolderList[3891]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition10.message" "ab_rig_CRN.placeHolderList[3892]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide46.message" "ab_rig_CRN.placeHolderList[3893]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide44.message" "ab_rig_CRN.placeHolderList[3894]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide48.message" "ab_rig_CRN.placeHolderList[3895]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide47.message" "ab_rig_CRN.placeHolderList[3896]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors16.message" "ab_rig_CRN.placeHolderList[3897]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors14.message" "ab_rig_CRN.placeHolderList[3898]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition11.message" "ab_rig_CRN.placeHolderList[3899]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide45.message" "ab_rig_CRN.placeHolderList[3900]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide50.message" "ab_rig_CRN.placeHolderList[3901]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide49.message" "ab_rig_CRN.placeHolderList[3902]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide79.message" "ab_rig_CRN.placeHolderList[3903]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide80.message" "ab_rig_CRN.placeHolderList[3904]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide81.message" "ab_rig_CRN.placeHolderList[3905]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide82.message" "ab_rig_CRN.placeHolderList[3906]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide83.message" "ab_rig_CRN.placeHolderList[3907]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide92.message" "ab_rig_CRN.placeHolderList[3908]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide93.message" "ab_rig_CRN.placeHolderList[3909]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide91.message" "ab_rig_CRN.placeHolderList[3910]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide89.message" "ab_rig_CRN.placeHolderList[3911]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide90.message" "ab_rig_CRN.placeHolderList[3912]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:skinCluster1.message" "ab_rig_CRN.placeHolderList[3913]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:bindPose4.message" "ab_rig_CRN.placeHolderList[3914]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:makeNurbCircle1.message" "ab_rig_CRN.placeHolderList[3915]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:transformGeometry1.message" "ab_rig_CRN.placeHolderList[3916]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pairBlend1.message" "ab_rig_CRN.placeHolderList[3917]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage37.message" "ab_rig_CRN.placeHolderList[3918]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide38.message" "ab_rig_CRN.placeHolderList[3919]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide58.message" "ab_rig_CRN.placeHolderList[3920]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage40.message" "ab_rig_CRN.placeHolderList[3921]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide41.message" "ab_rig_CRN.placeHolderList[3922]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide57.message" "ab_rig_CRN.placeHolderList[3923]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage38.message" "ab_rig_CRN.placeHolderList[3924]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide40.message" "ab_rig_CRN.placeHolderList[3925]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide56.message" "ab_rig_CRN.placeHolderList[3926]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage39.message" "ab_rig_CRN.placeHolderList[3927]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide39.message" "ab_rig_CRN.placeHolderList[3928]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide55.message" "ab_rig_CRN.placeHolderList[3929]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage46.message" "ab_rig_CRN.placeHolderList[3930]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide47.message" "ab_rig_CRN.placeHolderList[3931]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage45.message" "ab_rig_CRN.placeHolderList[3932]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide48.message" "ab_rig_CRN.placeHolderList[3933]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage47.message" "ab_rig_CRN.placeHolderList[3934]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide49.message" "ab_rig_CRN.placeHolderList[3935]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage50.message" "ab_rig_CRN.placeHolderList[3936]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide50.message" "ab_rig_CRN.placeHolderList[3937]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage41.message" "ab_rig_CRN.placeHolderList[3938]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide42.message" "ab_rig_CRN.placeHolderList[3939]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide62.message" "ab_rig_CRN.placeHolderList[3940]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage42.message" "ab_rig_CRN.placeHolderList[3941]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide43.message" "ab_rig_CRN.placeHolderList[3942]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide61.message" "ab_rig_CRN.placeHolderList[3943]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage43.message" "ab_rig_CRN.placeHolderList[3944]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide44.message" "ab_rig_CRN.placeHolderList[3945]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide59.message" "ab_rig_CRN.placeHolderList[3946]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage44.message" "ab_rig_CRN.placeHolderList[3947]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide45.message" "ab_rig_CRN.placeHolderList[3948]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide60.message" "ab_rig_CRN.placeHolderList[3949]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage52.message" "ab_rig_CRN.placeHolderList[3950]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide51.message" "ab_rig_CRN.placeHolderList[3951]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage49.message" "ab_rig_CRN.placeHolderList[3952]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide52.message" "ab_rig_CRN.placeHolderList[3953]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage51.message" "ab_rig_CRN.placeHolderList[3954]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide53.message" "ab_rig_CRN.placeHolderList[3955]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage48.message" "ab_rig_CRN.placeHolderList[3956]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide54.message" "ab_rig_CRN.placeHolderList[3957]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide120.message" "ab_rig_CRN.placeHolderList[3958]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide69.message" "ab_rig_CRN.placeHolderList[3959]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide68.message" "ab_rig_CRN.placeHolderList[3960]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide66.message" "ab_rig_CRN.placeHolderList[3961]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide65.message" "ab_rig_CRN.placeHolderList[3962]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide67.message" "ab_rig_CRN.placeHolderList[3963]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide71.message" "ab_rig_CRN.placeHolderList[3964]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide70.message" "ab_rig_CRN.placeHolderList[3965]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide63.message" "ab_rig_CRN.placeHolderList[3966]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide75.message" "ab_rig_CRN.placeHolderList[3967]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide73.message" "ab_rig_CRN.placeHolderList[3968]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide76.message" "ab_rig_CRN.placeHolderList[3969]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide78.message" "ab_rig_CRN.placeHolderList[3970]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide74.message" "ab_rig_CRN.placeHolderList[3971]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide72.message" "ab_rig_CRN.placeHolderList[3972]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide64.message" "ab_rig_CRN.placeHolderList[3973]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:JNT_L.message" "ab_rig_CRN.placeHolderList[3974]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:GEO_L.message" "ab_rig_CRN.placeHolderList[3975]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:uiConfigurationScriptNode.message" "ab_rig_CRN.placeHolderList[3976]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:sceneConfigurationScriptNode.message" "ab_rig_CRN.placeHolderList[3977]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:skinCluster2.message" "ab_rig_CRN.placeHolderList[3978]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Rig_C_body_under_option_translateX1";
	rename -uid "52A61CD8-4F14-A3EF-F1DF-9280182248F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 4 0 8 0 11 0.01698134653545777 12 0.012301549066279437
		 13 0 23 0 26 0 32 -2.3229219914654706 38 0;
	setAttr -s 11 ".kit[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 0.97986266045223458 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 -0.19967264873153989 0 0 0 0 
		0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 0.97986266045223447 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 -0.19967264873153989 0 0 0 0 
		0;
createNode animCurveTL -n "Rig_C_body_under_option_translateY1";
	rename -uid "5D4F7BAF-4E6F-1900-BD00-58AC8BF41A98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -6.8189572134181402 2 -16.455831453202698
		 3 -5.1952606798458163 4 -2.2767445239089139 8 -6.4119588604887143 11 -7.2656356231102315
		 12 -8.7101618617421366 13 -6.2500207112296202 23 -6.2500207112296202 26 -4.5987418256252788
		 32 -3.9360152769860308 38 0;
	setAttr -s 13 ".kit[10:12]"  1 18 18;
	setAttr -s 13 ".kot[10:12]"  1 18 18;
	setAttr -s 13 ".kix[10:12]"  1 0.12476071533680341 1;
	setAttr -s 13 ".kiy[10:12]"  0 0.99218685937108098 0;
	setAttr -s 13 ".kox[10:12]"  1 0.12476071533680341 1;
	setAttr -s 13 ".koy[10:12]"  0 0.99218685937108098 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateZ1";
	rename -uid "35E8CA01-4006-650F-7992-298E1A15D1DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 2 1.5318318989127833 3 7.7182413093303195
		 4 6.663010022686839 8 -10.771870318804755 11 0.59622947942513693 12 0.67352281258695101
		 13 0 23 0 26 0 38 0;
	setAttr -s 12 ".kit[0:11]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kot[0:11]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kix[0:11]"  1 1 0.010796303610933918 1 0.013160798195531134 
		1 0.17685806740923171 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0.99994171821578703 0 -0.99991339294503734 
		0 0.98423636591637464 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 0.010796303610933918 1 0.013160798195531133 
		1 0.17685806740923171 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0.99994171821578703 0 -0.99991339294503734 
		0 0.98423636591637464 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateX1";
	rename -uid "C96BF0D8-4996-733D-FC01-499F675A5FC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 4 8.4220159022928875 8 32.957738110020735
		 11 -7.7469155445051214 12 -5.6645442537932604 13 0 23 0 26 0 38 0;
	setAttr -s 10 ".kit[0:9]"  1 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  1 1 0.45223785838831254 1 1 0.52468039492181862 
		1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0.89189737046386264 0 0 0.851299291192401 
		0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 1 0.4522378583883126 1 1 0.5246803949218185 
		1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0.89189737046386264 0 0 0.851299291192401 
		0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateY1";
	rename -uid "5A4E3105-4988-119F-6E78-7D9E00082264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 0 8 0 12 0.40188165746255655 13 0
		 23 0 26 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateZ1";
	rename -uid "A7F310F0-472E-4373-E818-8AA9BFA3B4DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 0 8 0 12 0.19360640985685743 13 0
		 23 0 26 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleX1";
	rename -uid "8196C320-4A7A-57ED-18E0-85B265966E6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1.886945027276254 2 1.2082529050457587
		 4 0.82716005587475605 8 0.75441097447189631 12 1.1728093266572228 13 2.4585025317112685
		 15 2.790861667708926 23 2.4988180616212783 26 1.0060428577399385 32 1.1338126444124348
		 38 1;
	setAttr -s 12 ".kit[0:11]"  1 1 18 18 18 18 18 18 
		18 1 18 18;
	setAttr -s 12 ".kot[0:11]"  1 1 18 18 18 18 18 18 
		18 1 18 18;
	setAttr -s 12 ".kix[0:11]"  1 1 0.11713647741165099 0.60692541423221424 
		1 0.13162621153268708 0.083287213233150179 1 0.35559397886055921 0.45361000058657558 
		1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 -0.99311582691023004 -0.79475879457798704 
		0 0.99129942017412287 0.99652558427360793 0 -0.9346405310054321 -0.89120029587508942 
		0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 0.11713647741165099 0.60692541423221424 
		1 0.13162621153268711 0.083287213233150179 1 0.35559397886055921 0.45361000058657558 
		1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 -0.99311582691023004 -0.79475879457798704 
		0 0.99129942017412287 0.99652558427360793 0 -0.9346405310054321 -0.89120029587508942 
		0 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleY1";
	rename -uid "5FD3165C-4EEE-E5CC-E382-03BE40D8B841";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 4 0.85874885802674261 8 1 12 1.3804688753105745
		 13 0.80992258129108208 23 1 26 1 38 1;
	setAttr -s 9 ".kit[0:8]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 0.53840328349837752 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0.84268731111733597 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.53840328349837752 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.84268731111733608 0 0 0 0 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleZ1";
	rename -uid "BDD5EAC2-4FB3-1F0F-86FD-D5B3FE33BA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1.886945027276254 2 1.2082529050457587
		 4 0.70131850963305609 8 0.75441097447189631 12 1.1728093266572228 13 2.4585025317112685
		 15 2.790861667708926 23 2.4988180616212783 26 1.0060428577399385 38 1;
	setAttr -s 11 ".kit[0:10]"  1 1 18 18 18 18 18 18 
		18 1 18;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 1 18;
	setAttr -s 11 ".kix[0:10]"  1 1 0.10484838640845456 1 0.72295139786703355 
		0.13162621153268708 0.083287213233150179 1 0.35559397886055921 0.45361000058657558 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 -0.99448821806371523 0 0.69089889008602567 
		0.99129942017412287 0.99652558427360793 0 -0.9346405310054321 -0.89120029587508942 
		0;
	setAttr -s 11 ".kox[0:10]"  1 1 0.10484838640845456 1 0.72295139786703355 
		0.13162621153268711 0.083287213233150179 1 0.35559397886055921 0.45361000058657558 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 -0.99448821806371523 0 0.69089889008602567 
		0.99129942017412287 0.99652558427360793 0 -0.9346405310054321 -0.89120029587508942 
		0;
createNode animLayer -n "BaseAnimation";
	rename -uid "6E02D5EC-4543-497F-CC30-DD82571D1BCF";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
	setAttr ".ovrd" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "91AEEDA9-4885-CA24-8AFF-E1B5C7E4A13F";
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
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 450\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n"
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
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 0.389978\n                -animateTransition 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "43904871-4EC6-C277-5975-FDA949223D7F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 41 -ast -13 -aet 424 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	rename -uid "686E33DA-4B8A-2D01-A09C-87A42B9DFACF";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "C0530B40-4584-6D5C-B201-2AA5124EA40E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1133.3332882987147 -547.61902585862265 ;
	setAttr ".tgi[0].vh" -type "double2" 1133.3332882987147 547.61902585862265 ;
	setAttr -s 874 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 950;
	setAttr ".tgi[0].ni[0].y" 10672.857421875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 358.57144165039062;
	setAttr ".tgi[0].ni[1].y" 29722.857421875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1257.142822265625;
	setAttr ".tgi[0].ni[2].y" -28315.71484375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1257.142822265625;
	setAttr ".tgi[0].ni[3].y" -32810;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -620;
	setAttr ".tgi[0].ni[4].y" 12747.142578125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 335.71429443359375;
	setAttr ".tgi[0].ni[5].y" 6667.14306640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 358.57144165039062;
	setAttr ".tgi[0].ni[6].y" 22088.572265625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 358.57144165039062;
	setAttr ".tgi[0].ni[7].y" 19020;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1277.142822265625;
	setAttr ".tgi[0].ni[8].y" -22525.71484375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -620;
	setAttr ".tgi[0].ni[9].y" 12848.5712890625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[10].y" 30005.71484375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1248.5714111328125;
	setAttr ".tgi[0].ni[11].y" -22157.142578125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 642.85711669921875;
	setAttr ".tgi[0].ni[12].y" 9735.7138671875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 358.57144165039062;
	setAttr ".tgi[0].ni[13].y" 13181.4287109375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1257.142822265625;
	setAttr ".tgi[0].ni[14].y" -31600;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[15].y" -10800;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[16].y" -8074.28564453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[17].y" 21100;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -264.28570556640625;
	setAttr ".tgi[0].ni[18].y" 23365.71484375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 1255.7142333984375;
	setAttr ".tgi[0].ni[19].y" -22308.572265625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1257.142822265625;
	setAttr ".tgi[0].ni[20].y" -1887.142822265625;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[21].y" 2281.428466796875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 358.57144165039062;
	setAttr ".tgi[0].ni[22].y" 33800;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -264.28570556640625;
	setAttr ".tgi[0].ni[23].y" 25838.572265625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 358.57144165039062;
	setAttr ".tgi[0].ni[24].y" 29621.427734375;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 911.4285888671875;
	setAttr ".tgi[0].ni[25].y" -562.85711669921875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 358.57144165039062;
	setAttr ".tgi[0].ni[26].y" 25341.427734375;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 358.57144165039062;
	setAttr ".tgi[0].ni[27].y" 34465.71484375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 771.4285888671875;
	setAttr ".tgi[0].ni[28].y" 29001.427734375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[29].y" -8831.4287109375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 877.14288330078125;
	setAttr ".tgi[0].ni[30].y" 2740;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[31].y" -19885.71484375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1257.142822265625;
	setAttr ".tgi[0].ni[32].y" -30044.28515625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 28.571428298950195;
	setAttr ".tgi[0].ni[33].y" 6868.5712890625;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 642.85711669921875;
	setAttr ".tgi[0].ni[34].y" 10268.5712890625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 358.57144165039062;
	setAttr ".tgi[0].ni[35].y" 28245.71484375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 358.57144165039062;
	setAttr ".tgi[0].ni[36].y" 13282.857421875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1190;
	setAttr ".tgi[0].ni[37].y" -6257.14306640625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 358.57144165039062;
	setAttr ".tgi[0].ni[38].y" 32500;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[39].y" -11708.5712890625;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 877.14288330078125;
	setAttr ".tgi[0].ni[40].y" 3260;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 642.85711669921875;
	setAttr ".tgi[0].ni[41].y" 10412.857421875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 358.57144165039062;
	setAttr ".tgi[0].ni[42].y" 16284.2861328125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1257.142822265625;
	setAttr ".tgi[0].ni[43].y" -25204.28515625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 51.428569793701172;
	setAttr ".tgi[0].ni[44].y" 20498.572265625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1257.142822265625;
	setAttr ".tgi[0].ni[45].y" -28142.857421875;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1257.142822265625;
	setAttr ".tgi[0].ni[46].y" -26932.857421875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 358.57144165039062;
	setAttr ".tgi[0].ni[47].y" 34205.71484375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[48].y" 19247.142578125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -264.28570556640625;
	setAttr ".tgi[0].ni[49].y" 23865.71484375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1277.142822265625;
	setAttr ".tgi[0].ni[50].y" -21315.71484375;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 358.57144165039062;
	setAttr ".tgi[0].ni[51].y" 34104.28515625;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 1204.2857666015625;
	setAttr ".tgi[0].ni[52].y" -16100;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1234.2857666015625;
	setAttr ".tgi[0].ni[53].y" -19280;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 877.14288330078125;
	setAttr ".tgi[0].ni[54].y" 3014.28564453125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 950;
	setAttr ".tgi[0].ni[55].y" -794.28570556640625;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[56].y" 17337.142578125;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[57].y" -9437.142578125;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1197.142822265625;
	setAttr ".tgi[0].ni[58].y" -12920;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[59].y" -8377.142578125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1277.142822265625;
	setAttr ".tgi[0].ni[60].y" -17167.142578125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 358.57144165039062;
	setAttr ".tgi[0].ni[61].y" 36025.71484375;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[62].y" -4288.5712890625;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 771.4285888671875;
	setAttr ".tgi[0].ni[63].y" 33637.14453125;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 1200;
	setAttr ".tgi[0].ni[64].y" -15342.857421875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" -1040;
	setAttr ".tgi[0].ni[65].y" 26652.857421875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 358.57144165039062;
	setAttr ".tgi[0].ni[66].y" 18715.71484375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -1444.2857666015625;
	setAttr ".tgi[0].ni[67].y" 26805.71484375;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 358.57144165039062;
	setAttr ".tgi[0].ni[68].y" 36127.14453125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 358.57144165039062;
	setAttr ".tgi[0].ni[69].y" 30547.142578125;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[70].y" 35441.4296875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[71].y" 20977.142578125;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[72].y" -9740;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1277.142822265625;
	setAttr ".tgi[0].ni[73].y" -15092.857421875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 358.57144165039062;
	setAttr ".tgi[0].ni[74].y" 18918.572265625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 1257.142822265625;
	setAttr ".tgi[0].ni[75].y" -23994.28515625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[76].y" -7468.5712890625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 335.71429443359375;
	setAttr ".tgi[0].ni[77].y" 6191.4287109375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[78].y" -13374.2861328125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 358.57144165039062;
	setAttr ".tgi[0].ni[79].y" 16882.857421875;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 1277.142822265625;
	setAttr ".tgi[0].ni[80].y" -22698.572265625;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 950;
	setAttr ".tgi[0].ni[81].y" -1301.4285888671875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 877.14288330078125;
	setAttr ".tgi[0].ni[82].y" 3657.142822265625;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[83].y" -11254.2861328125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 358.57144165039062;
	setAttr ".tgi[0].ni[84].y" 29012.857421875;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 358.57144165039062;
	setAttr ".tgi[0].ni[85].y" 20440;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[86].y" -9285.7138671875;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 1258.5714111328125;
	setAttr ".tgi[0].ni[87].y" -12022.857421875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 358.57144165039062;
	setAttr ".tgi[0].ni[88].y" 31631.427734375;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[89].y" 26560;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[90].y" 26682.857421875;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1190;
	setAttr ".tgi[0].ni[91].y" -6408.5712890625;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 1257.142822265625;
	setAttr ".tgi[0].ni[92].y" -410;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 358.57144165039062;
	setAttr ".tgi[0].ni[93].y" 30648.572265625;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[94].y" 27051.427734375;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[95].y" 34608.5703125;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 358.57144165039062;
	setAttr ".tgi[0].ni[96].y" 27554.28515625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1201.4285888671875;
	setAttr ".tgi[0].ni[97].y" -15645.7138671875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 358.57144165039062;
	setAttr ".tgi[0].ni[98].y" 19324.28515625;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 867.14288330078125;
	setAttr ".tgi[0].ni[99].y" 5672.85693359375;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 1207.142822265625;
	setAttr ".tgi[0].ni[100].y" 7814.28564453125;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 950;
	setAttr ".tgi[0].ni[101].y" -1200;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 1257.142822265625;
	setAttr ".tgi[0].ni[102].y" -30217.142578125;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 877.14288330078125;
	setAttr ".tgi[0].ni[103].y" 631.4285888671875;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" -264.28570556640625;
	setAttr ".tgi[0].ni[104].y" 24784.28515625;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 877.14288330078125;
	setAttr ".tgi[0].ni[105].y" 3534.28564453125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -620;
	setAttr ".tgi[0].ni[106].y" 12950;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 358.57144165039062;
	setAttr ".tgi[0].ni[107].y" 32601.427734375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[108].y" 18074.28515625;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1224.2857666015625;
	setAttr ".tgi[0].ni[109].y" -4905.71435546875;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 950;
	setAttr ".tgi[0].ni[110].y" -1098.5714111328125;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1255.7142333984375;
	setAttr ".tgi[0].ni[111].y" -22460;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 891.4285888671875;
	setAttr ".tgi[0].ni[112].y" 12215.7138671875;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -620;
	setAttr ".tgi[0].ni[113].y" 12645.7138671875;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 28.571428298950195;
	setAttr ".tgi[0].ni[114].y" 9577.142578125;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[115].y" -10042.857421875;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 358.57144165039062;
	setAttr ".tgi[0].ni[116].y" 13485.7138671875;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 771.4285888671875;
	setAttr ".tgi[0].ni[117].y" 33294.28515625;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 358.57144165039062;
	setAttr ".tgi[0].ni[118].y" 19121.427734375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 335.71429443359375;
	setAttr ".tgi[0].ni[119].y" 6335.71435546875;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 358.57144165039062;
	setAttr ".tgi[0].ni[120].y" 17460;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[121].y" -4894.28564453125;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1277.142822265625;
	setAttr ".tgi[0].ni[122].y" -24081.427734375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1257.142822265625;
	setAttr ".tgi[0].ni[123].y" 5932.85693359375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 358.57144165039062;
	setAttr ".tgi[0].ni[124].y" 24371.427734375;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" -185.71427917480469;
	setAttr ".tgi[0].ni[125].y" 12190;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 358.57144165039062;
	setAttr ".tgi[0].ni[126].y" 30141.427734375;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -264.28570556640625;
	setAttr ".tgi[0].ni[127].y" 24661.427734375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 950;
	setAttr ".tgi[0].ni[128].y" -1735.7142333984375;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 358.57144165039062;
	setAttr ".tgi[0].ni[129].y" 20237.142578125;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 1257.142822265625;
	setAttr ".tgi[0].ni[130].y" 5521.4287109375;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 1277.142822265625;
	setAttr ".tgi[0].ni[131].y" -30394.28515625;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 642.85711669921875;
	setAttr ".tgi[0].ni[132].y" 6681.4287109375;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 358.57144165039062;
	setAttr ".tgi[0].ni[133].y" 22754.28515625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1191.4285888671875;
	setAttr ".tgi[0].ni[134].y" -6862.85693359375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1257.142822265625;
	setAttr ".tgi[0].ni[135].y" -34475.71484375;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 771.4285888671875;
	setAttr ".tgi[0].ni[136].y" 16428.572265625;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 358.57144165039062;
	setAttr ".tgi[0].ni[137].y" 20757.142578125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 335.71429443359375;
	setAttr ".tgi[0].ni[138].y" 10730;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[139].y" -17462.857421875;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" -620;
	setAttr ".tgi[0].ni[140].y" 11631.4287109375;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 1172.857177734375;
	setAttr ".tgi[0].ni[141].y" -2622.857177734375;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[142].y" -4137.14306640625;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 771.4285888671875;
	setAttr ".tgi[0].ni[143].y" 18295.71484375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 1257.142822265625;
	setAttr ".tgi[0].ni[144].y" 4771.4287109375;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 358.57144165039062;
	setAttr ".tgi[0].ni[145].y" 35924.28515625;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[146].y" 22835.71484375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 1215.7142333984375;
	setAttr ".tgi[0].ni[147].y" 91.428573608398438;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[148].y" 1487.142822265625;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 950;
	setAttr ".tgi[0].ni[149].y" 6610;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 1164.2857666015625;
	setAttr ".tgi[0].ni[150].y" -2017.142822265625;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 358.57144165039062;
	setAttr ".tgi[0].ni[151].y" 23635.71484375;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[152].y" 12215.7138671875;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" -264.28570556640625;
	setAttr ".tgi[0].ni[153].y" 98.571426391601562;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 1257.142822265625;
	setAttr ".tgi[0].ni[154].y" 6955.71435546875;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" -620;
	setAttr ".tgi[0].ni[155].y" 11935.7138671875;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 1268.5714111328125;
	setAttr ".tgi[0].ni[156].y" -12931.4287109375;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 358.57144165039062;
	setAttr ".tgi[0].ni[157].y" 28911.427734375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 358.57144165039062;
	setAttr ".tgi[0].ni[158].y" 30851.427734375;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 358.57144165039062;
	setAttr ".tgi[0].ni[159].y" 33394.28515625;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1257.142822265625;
	setAttr ".tgi[0].ni[160].y" 8987.142578125;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 358.57144165039062;
	setAttr ".tgi[0].ni[161].y" 21162.857421875;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -264.28570556640625;
	setAttr ".tgi[0].ni[162].y" 23152.857421875;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 877.14288330078125;
	setAttr ".tgi[0].ni[163].y" 1274.2857666015625;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[164].y" 1610;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 358.57144165039062;
	setAttr ".tgi[0].ni[165].y" 29317.142578125;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 1200;
	setAttr ".tgi[0].ni[166].y" -15040;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 358.57144165039062;
	setAttr ".tgi[0].ni[167].y" 24574.28515625;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[168].y" -12465.7138671875;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[169].y" 26260;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1257.142822265625;
	setAttr ".tgi[0].ni[170].y" -26068.572265625;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1257.142822265625;
	setAttr ".tgi[0].ni[171].y" -28488.572265625;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 1200;
	setAttr ".tgi[0].ni[172].y" -14888.5712890625;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[173].y" -20340;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 358.57144165039062;
	setAttr ".tgi[0].ni[174].y" 30952.857421875;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[175].y" 19124.28515625;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[176].y" -7317.14306640625;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 358.57144165039062;
	setAttr ".tgi[0].ni[177].y" 20338.572265625;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 1257.142822265625;
	setAttr ".tgi[0].ni[178].y" -25550;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 358.57144165039062;
	setAttr ".tgi[0].ni[179].y" 35721.4296875;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 335.71429443359375;
	setAttr ".tgi[0].ni[180].y" 8222.857421875;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 358.57144165039062;
	setAttr ".tgi[0].ni[181].y" 31054.28515625;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 877.14288330078125;
	setAttr ".tgi[0].ni[182].y" 1945.7142333984375;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 1277.142822265625;
	setAttr ".tgi[0].ni[183].y" -23044.28515625;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 358.57144165039062;
	setAttr ".tgi[0].ni[184].y" 18328.572265625;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 358.57144165039062;
	setAttr ".tgi[0].ni[185].y" 32804.28515625;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 771.4285888671875;
	setAttr ".tgi[0].ni[186].y" 20962.857421875;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 1257.142822265625;
	setAttr ".tgi[0].ni[187].y" -30562.857421875;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 877.14288330078125;
	setAttr ".tgi[0].ni[188].y" 1028.5714111328125;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 642.85711669921875;
	setAttr ".tgi[0].ni[189].y" 6537.14306640625;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 1204.2857666015625;
	setAttr ".tgi[0].ni[190].y" -16705.71484375;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 358.57144165039062;
	setAttr ".tgi[0].ni[191].y" 14411.4287109375;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" -264.28570556640625;
	setAttr ".tgi[0].ni[192].y" 26402.857421875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1257.142822265625;
	setAttr ".tgi[0].ni[193].y" -24858.572265625;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 1202.857177734375;
	setAttr ".tgi[0].ni[194].y" 11448.5712890625;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[195].y" 3075.71435546875;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1257.142822265625;
	setAttr ".tgi[0].ni[196].y" -23821.427734375;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 358.57144165039062;
	setAttr ".tgi[0].ni[197].y" 29418.572265625;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 358.57144165039062;
	setAttr ".tgi[0].ni[198].y" 21727.142578125;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 1257.142822265625;
	setAttr ".tgi[0].ni[199].y" -35838.5703125;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 1200;
	setAttr ".tgi[0].ni[200].y" -15191.4287109375;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" -731.4285888671875;
	setAttr ".tgi[0].ni[201].y" 26618.572265625;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[202].y" -13828.5712890625;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[203].y" -10648.5712890625;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 358.57144165039062;
	setAttr ".tgi[0].ni[204].y" 17358.572265625;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 358.57144165039062;
	setAttr ".tgi[0].ni[205].y" 19628.572265625;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[206].y" -3834.28564453125;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 1224.2857666015625;
	setAttr ".tgi[0].ni[207].y" -5814.28564453125;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" -620;
	setAttr ".tgi[0].ni[208].y" 11530;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" -571.4285888671875;
	setAttr ".tgi[0].ni[209].y" 98.571426391601562;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 465.71429443359375;
	setAttr ".tgi[0].ni[210].y" 11321.4287109375;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 465.71429443359375;
	setAttr ".tgi[0].ni[211].y" 11220;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 1277.142822265625;
	setAttr ".tgi[0].ni[212].y" -20105.71484375;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 1257.142822265625;
	setAttr ".tgi[0].ni[213].y" 10341.4287109375;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -1040;
	setAttr ".tgi[0].ni[214].y" 25191.427734375;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[215].y" 10540;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 358.57144165039062;
	setAttr ".tgi[0].ni[216].y" 14997.142578125;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 950;
	setAttr ".tgi[0].ni[217].y" -1402.857177734375;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 1257.142822265625;
	setAttr ".tgi[0].ni[218].y" -33415.71484375;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[219].y" 26137.142578125;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 642.85711669921875;
	setAttr ".tgi[0].ni[220].y" 7214.28564453125;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 642.85711669921875;
	setAttr ".tgi[0].ni[221].y" 9922.857421875;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 358.57144165039062;
	setAttr ".tgi[0].ni[222].y" 26064.28515625;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 1175.7142333984375;
	setAttr ".tgi[0].ni[223].y" -2925.71435546875;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 358.57144165039062;
	setAttr ".tgi[0].ni[224].y" 19730;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 950;
	setAttr ".tgi[0].ni[225].y" 9995.7138671875;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[226].y" 33502.85546875;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[227].y" 2404.28564453125;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 771.4285888671875;
	setAttr ".tgi[0].ni[228].y" 32120;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 1257.142822265625;
	setAttr ".tgi[0].ni[229].y" -29871.427734375;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 1257.142822265625;
	setAttr ".tgi[0].ni[230].y" -22957.142578125;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 358.57144165039062;
	setAttr ".tgi[0].ni[231].y" 35822.85546875;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 1215.7142333984375;
	setAttr ".tgi[0].ni[232].y" 1302.857177734375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 1277.142822265625;
	setAttr ".tgi[0].ni[233].y" -24254.28515625;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 642.85711669921875;
	setAttr ".tgi[0].ni[234].y" 9591.4287109375;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" -264.28570556640625;
	setAttr ".tgi[0].ni[235].y" 27438.572265625;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[236].y" 22958.572265625;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 358.57144165039062;
	setAttr ".tgi[0].ni[237].y" 14310;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[238].y" -17765.71484375;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 642.85711669921875;
	setAttr ".tgi[0].ni[239].y" 7358.5712890625;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 642.85711669921875;
	setAttr ".tgi[0].ni[240].y" 6350;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 877.14288330078125;
	setAttr ".tgi[0].ni[241].y" 2342.857177734375;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[242].y" -14282.857421875;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 335.71429443359375;
	setAttr ".tgi[0].ni[243].y" 10585.7138671875;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[244].y" 19001.427734375;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[245].y" 34362.85546875;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 798.5714111328125;
	setAttr ".tgi[0].ni[246].y" 4598.5712890625;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 335.71429443359375;
	setAttr ".tgi[0].ni[247].y" 10052.857421875;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[248].y" 17461.427734375;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 1214.2857666015625;
	setAttr ".tgi[0].ni[249].y" 5997.14306640625;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[250].y" -20037.142578125;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" -264.28570556640625;
	setAttr ".tgi[0].ni[251].y" 26084.28515625;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 335.71429443359375;
	setAttr ".tgi[0].ni[252].y" 9721.4287109375;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 642.85711669921875;
	setAttr ".tgi[0].ni[253].y" 7027.14306640625;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 1214.2857666015625;
	setAttr ".tgi[0].ni[254].y" 2060;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 358.57144165039062;
	setAttr ".tgi[0].ni[255].y" 29215.71484375;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 950;
	setAttr ".tgi[0].ni[256].y" -1887.142822265625;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 358.57144165039062;
	setAttr ".tgi[0].ni[257].y" 20034.28515625;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[258].y" -7620;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" -731.4285888671875;
	setAttr ".tgi[0].ni[259].y" 24472.857421875;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 1257.142822265625;
	setAttr ".tgi[0].ni[260].y" -27970;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 950;
	setAttr ".tgi[0].ni[261].y" -1504.2857666015625;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[262].y" 34117.14453125;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 358.57144165039062;
	setAttr ".tgi[0].ni[263].y" 27148.572265625;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 1257.142822265625;
	setAttr ".tgi[0].ni[264].y" -29698.572265625;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 2322.857177734375;
	setAttr ".tgi[0].ni[265].y" 14271.4287109375;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 1257.142822265625;
	setAttr ".tgi[0].ni[266].y" -32118.572265625;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[267].y" 14902.857421875;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 1257.142822265625;
	setAttr ".tgi[0].ni[268].y" -34778.5703125;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[269].y" 33380;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 358.57144165039062;
	setAttr ".tgi[0].ni[270].y" 32138.572265625;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[271].y" 35564.28515625;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 358.57144165039062;
	setAttr ".tgi[0].ni[272].y" 19831.427734375;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 642.85711669921875;
	setAttr ".tgi[0].ni[273].y" 7704.28564453125;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 1187.142822265625;
	setAttr ".tgi[0].ni[274].y" -5802.85693359375;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 642.85711669921875;
	setAttr ".tgi[0].ni[275].y" 6205.71435546875;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 1277.142822265625;
	setAttr ".tgi[0].ni[276].y" -26847.142578125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 1254.2857666015625;
	setAttr ".tgi[0].ni[277].y" -8842.857421875;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[278].y" -13980;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 771.4285888671875;
	setAttr ".tgi[0].ni[279].y" 19668.572265625;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 950;
	setAttr ".tgi[0].ni[280].y" -895.71429443359375;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 877.14288330078125;
	setAttr ".tgi[0].ni[281].y" 1822.857177734375;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 1277.142822265625;
	setAttr ".tgi[0].ni[282].y" -27971.427734375;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 1190;
	setAttr ".tgi[0].ni[283].y" -6711.4287109375;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 335.71429443359375;
	setAttr ".tgi[0].ni[284].y" 11075.7138671875;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 358.57144165039062;
	setAttr ".tgi[0].ni[285].y" 32702.857421875;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 1257.142822265625;
	setAttr ".tgi[0].ni[286].y" -31081.427734375;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 358.57144165039062;
	setAttr ".tgi[0].ni[287].y" 22291.427734375;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 560;
	setAttr ".tgi[0].ni[288].y" 5672.85693359375;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 358.57144165039062;
	setAttr ".tgi[0].ni[289].y" 14208.5712890625;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[290].y" -7922.85693359375;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 1197.142822265625;
	setAttr ".tgi[0].ni[291].y" -13222.857421875;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 1257.142822265625;
	setAttr ".tgi[0].ni[292].y" -23130;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 358.57144165039062;
	setAttr ".tgi[0].ni[293].y" 24777.142578125;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 358.57144165039062;
	setAttr ".tgi[0].ni[294].y" 20135.71484375;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 798.5714111328125;
	setAttr ".tgi[0].ni[295].y" 4497.14306640625;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 1204.2857666015625;
	setAttr ".tgi[0].ni[296].y" -16554.28515625;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 51.428569793701172;
	setAttr ".tgi[0].ni[297].y" 20621.427734375;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 1255.7142333984375;
	setAttr ".tgi[0].ni[298].y" -9902.857421875;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 358.57144165039062;
	setAttr ".tgi[0].ni[299].y" 24675.71484375;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 1191.4285888671875;
	setAttr ".tgi[0].ni[300].y" -7165.71435546875;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[301].y" -7771.4287109375;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[302].y" -12768.5712890625;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" -264.28570556640625;
	setAttr ".tgi[0].ni[303].y" 26920;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[304].y" 3472.857177734375;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 1257.142822265625;
	setAttr ".tgi[0].ni[305].y" -22784.28515625;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 358.57144165039062;
	setAttr ".tgi[0].ni[306].y" 23737.142578125;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 642.85711669921875;
	setAttr ".tgi[0].ni[307].y" 8035.71435546875;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[308].y" -5045.71435546875;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[309].y" -10194.2861328125;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[310].y" -10497.142578125;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 1225.7142333984375;
	setAttr ".tgi[0].ni[311].y" -18825.71484375;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[312].y" 32817.14453125;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 358.57144165039062;
	setAttr ".tgi[0].ni[313].y" 23432.857421875;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 771.4285888671875;
	setAttr ".tgi[0].ni[314].y" 18418.572265625;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 771.4285888671875;
	setAttr ".tgi[0].ni[315].y" 34700;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" -264.28570556640625;
	setAttr ".tgi[0].ni[316].y" 24130;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 642.85711669921875;
	setAttr ".tgi[0].ni[317].y" 11090;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 465.71429443359375;
	setAttr ".tgi[0].ni[318].y" 11828.5712890625;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[319].y" 25425.71484375;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" -1040;
	setAttr ".tgi[0].ni[320].y" 25314.28515625;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 1257.142822265625;
	setAttr ".tgi[0].ni[321].y" 11018.5712890625;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 1167.142822265625;
	setAttr ".tgi[0].ni[322].y" -2168.571533203125;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 1257.142822265625;
	setAttr ".tgi[0].ni[323].y" -35081.4296875;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 1215.7142333984375;
	setAttr ".tgi[0].ni[324].y" -18674.28515625;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 1207.142822265625;
	setAttr ".tgi[0].ni[325].y" 8571.4287109375;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" -264.28570556640625;
	setAttr ".tgi[0].ni[326].y" 23030;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[327].y" -9134.2861328125;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 335.71429443359375;
	setAttr ".tgi[0].ni[328].y" 9044.2861328125;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 335.71429443359375;
	setAttr ".tgi[0].ni[329].y" 5845.71435546875;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 1197.142822265625;
	setAttr ".tgi[0].ni[330].y" -13071.4287109375;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" -1444.2857666015625;
	setAttr ".tgi[0].ni[331].y" 26704.28515625;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 642.85711669921875;
	setAttr ".tgi[0].ni[332].y" 9390;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 1257.142822265625;
	setAttr ".tgi[0].ni[333].y" -27278.572265625;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" 642.85711669921875;
	setAttr ".tgi[0].ni[334].y" 5860;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 1187.142822265625;
	setAttr ".tgi[0].ni[335].y" -5651.4287109375;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 358.57144165039062;
	setAttr ".tgi[0].ni[336].y" 31155.71484375;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 358.57144165039062;
	setAttr ".tgi[0].ni[337].y" 23534.28515625;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 1257.142822265625;
	setAttr ".tgi[0].ni[338].y" -25377.142578125;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 335.71429443359375;
	setAttr ".tgi[0].ni[339].y" 10931.4287109375;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[340].y" -11557.142578125;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 642.85711669921875;
	setAttr ".tgi[0].ni[341].y" 8381.4287109375;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 642.85711669921875;
	setAttr ".tgi[0].ni[342].y" 8568.5712890625;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 1257.142822265625;
	setAttr ".tgi[0].ni[343].y" -24340;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 771.4285888671875;
	setAttr ".tgi[0].ni[344].y" 32857.14453125;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[345].y" 25671.427734375;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 358.57144165039062;
	setAttr ".tgi[0].ni[346].y" 35277.14453125;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 1277.142822265625;
	setAttr ".tgi[0].ni[347].y" -31000;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 771.4285888671875;
	setAttr ".tgi[0].ni[348].y" 22578.572265625;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" 1257.142822265625;
	setAttr ".tgi[0].ni[349].y" -30390;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" 358.57144165039062;
	setAttr ".tgi[0].ni[350].y" 19222.857421875;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" 335.71429443359375;
	setAttr ".tgi[0].ni[351].y" 8698.5712890625;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" 358.57144165039062;
	setAttr ".tgi[0].ni[352].y" 13587.142578125;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[353].y" 26014.28515625;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" 1257.142822265625;
	setAttr ".tgi[0].ni[354].y" 5232.85693359375;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 1234.2857666015625;
	setAttr ".tgi[0].ni[355].y" -19128.572265625;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" -264.28570556640625;
	setAttr ".tgi[0].ni[356].y" 23620;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" -264.28570556640625;
	setAttr ".tgi[0].ni[357].y" 27864.28515625;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[358].y" 9328.5712890625;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" -264.28570556640625;
	setAttr ".tgi[0].ni[359].y" 27561.427734375;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 911.4285888671875;
	setAttr ".tgi[0].ni[360].y" -360;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" 771.4285888671875;
	setAttr ".tgi[0].ni[361].y" 29605.71484375;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 771.4285888671875;
	setAttr ".tgi[0].ni[362].y" 35854.28515625;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" 891.4285888671875;
	setAttr ".tgi[0].ni[363].y" 11828.5712890625;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" -264.28570556640625;
	setAttr ".tgi[0].ni[364].y" 25521.427734375;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[365].y" -8085.71435546875;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 358.57144165039062;
	setAttr ".tgi[0].ni[366].y" 14692.857421875;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" 642.85711669921875;
	setAttr ".tgi[0].ni[367].y" 8914.2861328125;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" 1225.7142333984375;
	setAttr ".tgi[0].ni[368].y" -7025.71435546875;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[369].y" -14434.2861328125;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" 358.57144165039062;
	setAttr ".tgi[0].ni[370].y" 21061.427734375;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" -264.28570556640625;
	setAttr ".tgi[0].ni[371].y" 22907.142578125;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" 358.57144165039062;
	setAttr ".tgi[0].ni[372].y" 23838.572265625;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 1277.142822265625;
	setAttr ".tgi[0].ni[373].y" -14920;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 1257.142822265625;
	setAttr ".tgi[0].ni[374].y" -24685.71484375;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 1257.142822265625;
	setAttr ".tgi[0].ni[375].y" -35384.28515625;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" 335.71429443359375;
	setAttr ".tgi[0].ni[376].y" 7545.71435546875;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" 1204.2857666015625;
	setAttr ".tgi[0].ni[377].y" -16251.4287109375;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" 1210;
	setAttr ".tgi[0].ni[378].y" 7360;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" 642.85711669921875;
	setAttr ".tgi[0].ni[379].y" 5377.14306640625;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" 1277.142822265625;
	setAttr ".tgi[0].ni[380].y" -30091.427734375;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" 358.57144165039062;
	setAttr ".tgi[0].ni[381].y" 34668.5703125;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[382].y" 33625.71484375;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" 358.57144165039062;
	setAttr ".tgi[0].ni[383].y" 13688.5712890625;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 1277.142822265625;
	setAttr ".tgi[0].ni[384].y" -31151.427734375;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" 358.57144165039062;
	setAttr ".tgi[0].ni[385].y" 22494.28515625;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 1277.142822265625;
	setAttr ".tgi[0].ni[386].y" -28425.71484375;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 358.57144165039062;
	setAttr ".tgi[0].ni[387].y" 18817.142578125;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" -264.28570556640625;
	setAttr ".tgi[0].ni[388].y" 24907.142578125;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" 1257.142822265625;
	setAttr ".tgi[0].ni[389].y" -28661.427734375;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" 1277.142822265625;
	setAttr ".tgi[0].ni[390].y" -27365.71484375;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" 358.57144165039062;
	setAttr ".tgi[0].ni[391].y" 15720;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" -264.28570556640625;
	setAttr ".tgi[0].ni[392].y" 25152.857421875;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 911.4285888671875;
	setAttr ".tgi[0].ni[393].y" -157.14285278320312;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" -264.28570556640625;
	setAttr ".tgi[0].ni[394].y" 25030;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" 358.57144165039062;
	setAttr ".tgi[0].ni[395].y" 25240;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" 877.14288330078125;
	setAttr ".tgi[0].ni[396].y" 1151.4285888671875;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 335.71429443359375;
	setAttr ".tgi[0].ni[397].y" 7012.85693359375;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 1277.142822265625;
	setAttr ".tgi[0].ni[398].y" -31757.142578125;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 1257.142822265625;
	setAttr ".tgi[0].ni[399].y" -35232.85546875;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 358.57144165039062;
	setAttr ".tgi[0].ni[400].y" 13904.2861328125;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" 911.4285888671875;
	setAttr ".tgi[0].ni[401].y" 480;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[402].y" -5348.5712890625;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" 877.14288330078125;
	setAttr ".tgi[0].ni[403].y" 754.28570556640625;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" 950;
	setAttr ".tgi[0].ni[404].y" 11018.5712890625;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" 642.85711669921875;
	setAttr ".tgi[0].ni[405].y" 6882.85693359375;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" 358.57144165039062;
	setAttr ".tgi[0].ni[406].y" 21422.857421875;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" 1234.2857666015625;
	setAttr ".tgi[0].ni[407].y" -19582.857421875;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" 1257.142822265625;
	setAttr ".tgi[0].ni[408].y" 5060;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" 1225.7142333984375;
	setAttr ".tgi[0].ni[409].y" -6268.5712890625;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" 1257.142822265625;
	setAttr ".tgi[0].ni[410].y" -34021.4296875;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" 358.57144165039062;
	setAttr ".tgi[0].ni[411].y" 21625.71484375;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" 1234.2857666015625;
	setAttr ".tgi[0].ni[412].y" -18977.142578125;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" 358.57144165039062;
	setAttr ".tgi[0].ni[413].y" 33901.4296875;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[414].y" 3595.71435546875;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" 771.4285888671875;
	setAttr ".tgi[0].ni[415].y" 15134.2861328125;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" 358.57144165039062;
	setAttr ".tgi[0].ni[416].y" 14107.142578125;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" 1177.142822265625;
	setAttr ".tgi[0].ni[417].y" -3228.571533203125;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" 1277.142822265625;
	setAttr ".tgi[0].ni[418].y" -17685.71484375;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 1257.142822265625;
	setAttr ".tgi[0].ni[419].y" -23648.572265625;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 465.71429443359375;
	setAttr ".tgi[0].ni[420].y" 12277.142578125;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 358.57144165039062;
	setAttr ".tgi[0].ni[421].y" 29114.28515625;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[422].y" 23572.857421875;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" 358.57144165039062;
	setAttr ".tgi[0].ni[423].y" 22392.857421875;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" 358.57144165039062;
	setAttr ".tgi[0].ni[424].y" 25037.142578125;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" 771.4285888671875;
	setAttr ".tgi[0].ni[425].y" 27414.28515625;
	setAttr ".tgi[0].ni[425].nvs" 18304;
	setAttr ".tgi[0].ni[426].x" 358.57144165039062;
	setAttr ".tgi[0].ni[426].y" 19932.857421875;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[427].y" -20794.28515625;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" 1257.142822265625;
	setAttr ".tgi[0].ni[428].y" 7632.85693359375;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" 798.5714111328125;
	setAttr ".tgi[0].ni[429].y" 3990;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 358.57144165039062;
	setAttr ".tgi[0].ni[430].y" 31935.71484375;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" 642.85711669921875;
	setAttr ".tgi[0].ni[431].y" 6004.28564453125;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" 51.428569793701172;
	setAttr ".tgi[0].ni[432].y" 21748.572265625;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" -264.28570556640625;
	setAttr ".tgi[0].ni[433].y" 27055.71484375;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 1257.142822265625;
	setAttr ".tgi[0].ni[434].y" -22611.427734375;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 335.71429443359375;
	setAttr ".tgi[0].ni[435].y" 8367.142578125;
	setAttr ".tgi[0].ni[435].nvs" 18304;
	setAttr ".tgi[0].ni[436].x" 358.57144165039062;
	setAttr ".tgi[0].ni[436].y" 24270;
	setAttr ".tgi[0].ni[436].nvs" 18304;
	setAttr ".tgi[0].ni[437].x" 335.71429443359375;
	setAttr ".tgi[0].ni[437].y" 8900;
	setAttr ".tgi[0].ni[437].nvs" 18304;
	setAttr ".tgi[0].ni[438].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[438].y" 10842.857421875;
	setAttr ".tgi[0].ni[438].nvs" 18304;
	setAttr ".tgi[0].ni[439].x" 1182.857177734375;
	setAttr ".tgi[0].ni[439].y" -3531.428466796875;
	setAttr ".tgi[0].ni[439].nvs" 18304;
	setAttr ".tgi[0].ni[440].x" 358.57144165039062;
	setAttr ".tgi[0].ni[440].y" 21987.142578125;
	setAttr ".tgi[0].ni[440].nvs" 18304;
	setAttr ".tgi[0].ni[441].x" -264.28570556640625;
	setAttr ".tgi[0].ni[441].y" 25398.572265625;
	setAttr ".tgi[0].ni[441].nvs" 18304;
	setAttr ".tgi[0].ni[442].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[442].y" -20642.857421875;
	setAttr ".tgi[0].ni[442].nvs" 18304;
	setAttr ".tgi[0].ni[443].x" 335.71429443359375;
	setAttr ".tgi[0].ni[443].y" 9231.4287109375;
	setAttr ".tgi[0].ni[443].nvs" 18304;
	setAttr ".tgi[0].ni[444].x" 771.4285888671875;
	setAttr ".tgi[0].ni[444].y" 29388.572265625;
	setAttr ".tgi[0].ni[444].nvs" 18304;
	setAttr ".tgi[0].ni[445].x" 771.4285888671875;
	setAttr ".tgi[0].ni[445].y" 30718.572265625;
	setAttr ".tgi[0].ni[445].nvs" 18304;
	setAttr ".tgi[0].ni[446].x" 335.71429443359375;
	setAttr ".tgi[0].ni[446].y" 7690;
	setAttr ".tgi[0].ni[446].nvs" 18304;
	setAttr ".tgi[0].ni[447].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[447].y" 2007.142822265625;
	setAttr ".tgi[0].ni[447].nvs" 18304;
	setAttr ".tgi[0].ni[448].x" 465.71429443359375;
	setAttr ".tgi[0].ni[448].y" 11625.7138671875;
	setAttr ".tgi[0].ni[448].nvs" 18304;
	setAttr ".tgi[0].ni[449].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[449].y" -11860;
	setAttr ".tgi[0].ni[449].nvs" 18304;
	setAttr ".tgi[0].ni[450].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[450].y" 3198.571533203125;
	setAttr ".tgi[0].ni[450].nvs" 18304;
	setAttr ".tgi[0].ni[451].x" 1277.142822265625;
	setAttr ".tgi[0].ni[451].y" -22180;
	setAttr ".tgi[0].ni[451].nvs" 18304;
	setAttr ".tgi[0].ni[452].x" 877.14288330078125;
	setAttr ".tgi[0].ni[452].y" 2465.71435546875;
	setAttr ".tgi[0].ni[452].nvs" 18304;
	setAttr ".tgi[0].ni[453].x" 1255.7142333984375;
	setAttr ".tgi[0].ni[453].y" -10357.142578125;
	setAttr ".tgi[0].ni[453].nvs" 18304;
	setAttr ".tgi[0].ni[454].x" 1257.142822265625;
	setAttr ".tgi[0].ni[454].y" 5377.14306640625;
	setAttr ".tgi[0].ni[454].nvs" 18304;
	setAttr ".tgi[0].ni[455].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[455].y" 34240;
	setAttr ".tgi[0].ni[455].nvs" 18304;
	setAttr ".tgi[0].ni[456].x" 1257.142822265625;
	setAttr ".tgi[0].ni[456].y" -27797.142578125;
	setAttr ".tgi[0].ni[456].nvs" 18304;
	setAttr ".tgi[0].ni[457].x" 1257.142822265625;
	setAttr ".tgi[0].ni[457].y" -31772.857421875;
	setAttr ".tgi[0].ni[457].nvs" 18304;
	setAttr ".tgi[0].ni[458].x" 1257.142822265625;
	setAttr ".tgi[0].ni[458].y" -30908.572265625;
	setAttr ".tgi[0].ni[458].nvs" 18304;
	setAttr ".tgi[0].ni[459].x" -264.28570556640625;
	setAttr ".tgi[0].ni[459].y" 22727.142578125;
	setAttr ".tgi[0].ni[459].nvs" 18304;
	setAttr ".tgi[0].ni[460].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[460].y" 23450;
	setAttr ".tgi[0].ni[460].nvs" 18304;
	setAttr ".tgi[0].ni[461].x" 798.5714111328125;
	setAttr ".tgi[0].ni[461].y" 3787.142822265625;
	setAttr ".tgi[0].ni[461].nvs" 18304;
	setAttr ".tgi[0].ni[462].x" 1258.5714111328125;
	setAttr ".tgi[0].ni[462].y" -12174.2861328125;
	setAttr ".tgi[0].ni[462].nvs" 18304;
	setAttr ".tgi[0].ni[463].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[463].y" 21222.857421875;
	setAttr ".tgi[0].ni[463].nvs" 18304;
	setAttr ".tgi[0].ni[464].x" 771.4285888671875;
	setAttr ".tgi[0].ni[464].y" 18172.857421875;
	setAttr ".tgi[0].ni[464].nvs" 18304;
	setAttr ".tgi[0].ni[465].x" 1215.7142333984375;
	setAttr ".tgi[0].ni[465].y" 848.5714111328125;
	setAttr ".tgi[0].ni[465].nvs" 18304;
	setAttr ".tgi[0].ni[466].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[466].y" 14780;
	setAttr ".tgi[0].ni[466].nvs" 18304;
	setAttr ".tgi[0].ni[467].x" 1190;
	setAttr ".tgi[0].ni[467].y" -6560;
	setAttr ".tgi[0].ni[467].nvs" 18304;
	setAttr ".tgi[0].ni[468].x" 911.4285888671875;
	setAttr ".tgi[0].ni[468].y" -258.57144165039062;
	setAttr ".tgi[0].ni[468].nvs" 18304;
	setAttr ".tgi[0].ni[469].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[469].y" -4591.4287109375;
	setAttr ".tgi[0].ni[469].nvs" 18304;
	setAttr ".tgi[0].ni[470].x" 358.57144165039062;
	setAttr ".tgi[0].ni[470].y" 26685.71484375;
	setAttr ".tgi[0].ni[470].nvs" 18304;
	setAttr ".tgi[0].ni[471].x" -620;
	setAttr ".tgi[0].ni[471].y" 12341.4287109375;
	setAttr ".tgi[0].ni[471].nvs" 18304;
	setAttr ".tgi[0].ni[472].x" 771.4285888671875;
	setAttr ".tgi[0].ni[472].y" 26547.142578125;
	setAttr ".tgi[0].ni[472].nvs" 18304;
	setAttr ".tgi[0].ni[473].x" 950;
	setAttr ".tgi[0].ni[473].y" 7964.28564453125;
	setAttr ".tgi[0].ni[473].nvs" 18304;
	setAttr ".tgi[0].ni[474].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[474].y" -12617.142578125;
	setAttr ".tgi[0].ni[474].nvs" 18304;
	setAttr ".tgi[0].ni[475].x" 358.57144165039062;
	setAttr ".tgi[0].ni[475].y" 18125.71484375;
	setAttr ".tgi[0].ni[475].nvs" 18304;
	setAttr ".tgi[0].ni[476].x" 358.57144165039062;
	setAttr ".tgi[0].ni[476].y" 30040;
	setAttr ".tgi[0].ni[476].nvs" 18304;
	setAttr ".tgi[0].ni[477].x" 358.57144165039062;
	setAttr ".tgi[0].ni[477].y" 22190;
	setAttr ".tgi[0].ni[477].nvs" 18304;
	setAttr ".tgi[0].ni[478].x" 1277.142822265625;
	setAttr ".tgi[0].ni[478].y" -25810;
	setAttr ".tgi[0].ni[478].nvs" 18304;
	setAttr ".tgi[0].ni[479].x" 28.571428298950195;
	setAttr ".tgi[0].ni[479].y" 10931.4287109375;
	setAttr ".tgi[0].ni[479].nvs" 18304;
	setAttr ".tgi[0].ni[480].x" 642.85711669921875;
	setAttr ".tgi[0].ni[480].y" 9058.5712890625;
	setAttr ".tgi[0].ni[480].nvs" 18304;
	setAttr ".tgi[0].ni[481].x" 911.4285888671875;
	setAttr ".tgi[0].ni[481].y" -664.28570556640625;
	setAttr ".tgi[0].ni[481].nvs" 18304;
	setAttr ".tgi[0].ni[482].x" 877.14288330078125;
	setAttr ".tgi[0].ni[482].y" 2220;
	setAttr ".tgi[0].ni[482].nvs" 18304;
	setAttr ".tgi[0].ni[483].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[483].y" -14737.142578125;
	setAttr ".tgi[0].ni[483].nvs" 18304;
	setAttr ".tgi[0].ni[484].x" -264.28570556640625;
	setAttr ".tgi[0].ni[484].y" 27301.427734375;
	setAttr ".tgi[0].ni[484].nvs" 18304;
	setAttr ".tgi[0].ni[485].x" 358.57144165039062;
	setAttr ".tgi[0].ni[485].y" 15618.5712890625;
	setAttr ".tgi[0].ni[485].nvs" 18304;
	setAttr ".tgi[0].ni[486].x" 358.57144165039062;
	setAttr ".tgi[0].ni[486].y" 15200;
	setAttr ".tgi[0].ni[486].nvs" 18304;
	setAttr ".tgi[0].ni[487].x" 771.4285888671875;
	setAttr ".tgi[0].ni[487].y" 24937.142578125;
	setAttr ".tgi[0].ni[487].nvs" 18304;
	setAttr ".tgi[0].ni[488].x" 358.57144165039062;
	setAttr ".tgi[0].ni[488].y" 29938.572265625;
	setAttr ".tgi[0].ni[488].nvs" 18304;
	setAttr ".tgi[0].ni[489].x" 950;
	setAttr ".tgi[0].ni[489].y" 9664.2861328125;
	setAttr ".tgi[0].ni[489].nvs" 18304;
	setAttr ".tgi[0].ni[490].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[490].y" 11902.857421875;
	setAttr ".tgi[0].ni[490].nvs" 18304;
	setAttr ".tgi[0].ni[491].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[491].y" 30222.857421875;
	setAttr ".tgi[0].ni[491].nvs" 18304;
	setAttr ".tgi[0].ni[492].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[492].y" 36015.71484375;
	setAttr ".tgi[0].ni[492].nvs" 18304;
	setAttr ".tgi[0].ni[493].x" 358.57144165039062;
	setAttr ".tgi[0].ni[493].y" 21828.572265625;
	setAttr ".tgi[0].ni[493].nvs" 18304;
	setAttr ".tgi[0].ni[494].x" 335.71429443359375;
	setAttr ".tgi[0].ni[494].y" 7344.28564453125;
	setAttr ".tgi[0].ni[494].nvs" 18304;
	setAttr ".tgi[0].ni[495].x" 1214.2857666015625;
	setAttr ".tgi[0].ni[495].y" 2211.428466796875;
	setAttr ".tgi[0].ni[495].nvs" 18304;
	setAttr ".tgi[0].ni[496].x" 911.4285888671875;
	setAttr ".tgi[0].ni[496].y" -461.42855834960938;
	setAttr ".tgi[0].ni[496].nvs" 18304;
	setAttr ".tgi[0].ni[497].x" 1257.142822265625;
	setAttr ".tgi[0].ni[497].y" 6278.5712890625;
	setAttr ".tgi[0].ni[497].nvs" 18304;
	setAttr ".tgi[0].ni[498].x" 51.428569793701172;
	setAttr ".tgi[0].ni[498].y" 23192.857421875;
	setAttr ".tgi[0].ni[498].nvs" 18304;
	setAttr ".tgi[0].ni[499].x" 358.57144165039062;
	setAttr ".tgi[0].ni[499].y" 30344.28515625;
	setAttr ".tgi[0].ni[499].nvs" 18304;
	setAttr ".tgi[0].ni[500].x" 335.71429443359375;
	setAttr ".tgi[0].ni[500].y" 7200;
	setAttr ".tgi[0].ni[500].nvs" 18304;
	setAttr ".tgi[0].ni[501].x" 771.4285888671875;
	setAttr ".tgi[0].ni[501].y" 25771.427734375;
	setAttr ".tgi[0].ni[501].nvs" 18304;
	setAttr ".tgi[0].ni[502].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[502].y" 33994.28515625;
	setAttr ".tgi[0].ni[502].nvs" 18304;
	setAttr ".tgi[0].ni[503].x" 358.57144165039062;
	setAttr ".tgi[0].ni[503].y" 27351.427734375;
	setAttr ".tgi[0].ni[503].nvs" 18304;
	setAttr ".tgi[0].ni[504].x" 1257.142822265625;
	setAttr ".tgi[0].ni[504].y" 9664.2861328125;
	setAttr ".tgi[0].ni[504].nvs" 18304;
	setAttr ".tgi[0].ni[505].x" 1210;
	setAttr ".tgi[0].ni[505].y" -18522.857421875;
	setAttr ".tgi[0].ni[505].nvs" 18304;
	setAttr ".tgi[0].ni[506].x" -264.28570556640625;
	setAttr ".tgi[0].ni[506].y" 23988.572265625;
	setAttr ".tgi[0].ni[506].nvs" 18304;
	setAttr ".tgi[0].ni[507].x" 1277.142822265625;
	setAttr ".tgi[0].ni[507].y" -13537.142578125;
	setAttr ".tgi[0].ni[507].nvs" 18304;
	setAttr ".tgi[0].ni[508].x" 1257.142822265625;
	setAttr ".tgi[0].ni[508].y" -26414.28515625;
	setAttr ".tgi[0].ni[508].nvs" 18304;
	setAttr ".tgi[0].ni[509].x" 465.71429443359375;
	setAttr ".tgi[0].ni[509].y" 11930;
	setAttr ".tgi[0].ni[509].nvs" 18304;
	setAttr ".tgi[0].ni[510].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[510].y" 15025.7138671875;
	setAttr ".tgi[0].ni[510].nvs" 18304;
	setAttr ".tgi[0].ni[511].x" 1200;
	setAttr ".tgi[0].ni[511].y" -15494.2861328125;
	setAttr ".tgi[0].ni[511].nvs" 18304;
	setAttr ".tgi[0].ni[512].x" 642.85711669921875;
	setAttr ".tgi[0].ni[512].y" 8712.857421875;
	setAttr ".tgi[0].ni[512].nvs" 18304;
	setAttr ".tgi[0].ni[513].x" 1224.2857666015625;
	setAttr ".tgi[0].ni[513].y" -4602.85693359375;
	setAttr ".tgi[0].ni[513].nvs" 18304;
	setAttr ".tgi[0].ni[514].x" 358.57144165039062;
	setAttr ".tgi[0].ni[514].y" 16487.142578125;
	setAttr ".tgi[0].ni[514].nvs" 18304;
	setAttr ".tgi[0].ni[515].x" 358.57144165039062;
	setAttr ".tgi[0].ni[515].y" 35175.71484375;
	setAttr ".tgi[0].ni[515].nvs" 18304;
	setAttr ".tgi[0].ni[516].x" 152.85714721679688;
	setAttr ".tgi[0].ni[516].y" 12215.7138671875;
	setAttr ".tgi[0].ni[516].nvs" 18304;
	setAttr ".tgi[0].ni[517].x" 642.85711669921875;
	setAttr ".tgi[0].ni[517].y" 9245.7138671875;
	setAttr ".tgi[0].ni[517].nvs" 18304;
	setAttr ".tgi[0].ni[518].x" 1257.142822265625;
	setAttr ".tgi[0].ni[518].y" -32291.427734375;
	setAttr ".tgi[0].ni[518].nvs" 18304;
	setAttr ".tgi[0].ni[519].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[519].y" 27174.28515625;
	setAttr ".tgi[0].ni[519].nvs" 18304;
	setAttr ".tgi[0].ni[520].x" 911.4285888671875;
	setAttr ".tgi[0].ni[520].y" 74.285713195800781;
	setAttr ".tgi[0].ni[520].nvs" 18304;
	setAttr ".tgi[0].ni[521].x" 358.57144165039062;
	setAttr ".tgi[0].ni[521].y" 31358.572265625;
	setAttr ".tgi[0].ni[521].nvs" 18304;
	setAttr ".tgi[0].ni[522].x" 358.57144165039062;
	setAttr ".tgi[0].ni[522].y" 17257.142578125;
	setAttr ".tgi[0].ni[522].nvs" 18304;
	setAttr ".tgi[0].ni[523].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[523].y" 17705.71484375;
	setAttr ".tgi[0].ni[523].nvs" 18304;
	setAttr ".tgi[0].ni[524].x" 1277.142822265625;
	setAttr ".tgi[0].ni[524].y" -13710;
	setAttr ".tgi[0].ni[524].nvs" 18304;
	setAttr ".tgi[0].ni[525].x" 877.14288330078125;
	setAttr ".tgi[0].ni[525].y" 3411.428466796875;
	setAttr ".tgi[0].ni[525].nvs" 18304;
	setAttr ".tgi[0].ni[526].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[526].y" 1884.2857666015625;
	setAttr ".tgi[0].ni[526].nvs" 18304;
	setAttr ".tgi[0].ni[527].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[527].y" -8680;
	setAttr ".tgi[0].ni[527].nvs" 18304;
	setAttr ".tgi[0].ni[528].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[528].y" -10345.7138671875;
	setAttr ".tgi[0].ni[528].nvs" 18304;
	setAttr ".tgi[0].ni[529].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[529].y" 17951.427734375;
	setAttr ".tgi[0].ni[529].nvs" 18304;
	setAttr ".tgi[0].ni[530].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[530].y" 22712.857421875;
	setAttr ".tgi[0].ni[530].nvs" 18304;
	setAttr ".tgi[0].ni[531].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[531].y" -8982.857421875;
	setAttr ".tgi[0].ni[531].nvs" 18304;
	setAttr ".tgi[0].ni[532].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[532].y" -8528.5712890625;
	setAttr ".tgi[0].ni[532].nvs" 18304;
	setAttr ".tgi[0].ni[533].x" 335.71429443359375;
	setAttr ".tgi[0].ni[533].y" 6522.85693359375;
	setAttr ".tgi[0].ni[533].nvs" 18304;
	setAttr ".tgi[0].ni[534].x" 358.57144165039062;
	setAttr ".tgi[0].ni[534].y" 22652.857421875;
	setAttr ".tgi[0].ni[534].nvs" 18304;
	setAttr ".tgi[0].ni[535].x" 358.57144165039062;
	setAttr ".tgi[0].ni[535].y" 17662.857421875;
	setAttr ".tgi[0].ni[535].nvs" 18304;
	setAttr ".tgi[0].ni[536].x" 1257.142822265625;
	setAttr ".tgi[0].ni[536].y" -31254.28515625;
	setAttr ".tgi[0].ni[536].nvs" 18304;
	setAttr ".tgi[0].ni[537].x" 358.57144165039062;
	setAttr ".tgi[0].ni[537].y" 14794.2861328125;
	setAttr ".tgi[0].ni[537].nvs" 18304;
	setAttr ".tgi[0].ni[538].x" 877.14288330078125;
	setAttr ".tgi[0].ni[538].y" 1671.4285888671875;
	setAttr ".tgi[0].ni[538].nvs" 18304;
	setAttr ".tgi[0].ni[539].x" 358.57144165039062;
	setAttr ".tgi[0].ni[539].y" 20960;
	setAttr ".tgi[0].ni[539].nvs" 18304;
	setAttr ".tgi[0].ni[540].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[540].y" -9891.4287109375;
	setAttr ".tgi[0].ni[540].nvs" 18304;
	setAttr ".tgi[0].ni[541].x" -620;
	setAttr ".tgi[0].ni[541].y" 12138.5712890625;
	setAttr ".tgi[0].ni[541].nvs" 18304;
	setAttr ".tgi[0].ni[542].x" 1214.2857666015625;
	setAttr ".tgi[0].ni[542].y" 3877.142822265625;
	setAttr ".tgi[0].ni[542].nvs" 18304;
	setAttr ".tgi[0].ni[543].x" 877.14288330078125;
	setAttr ".tgi[0].ni[543].y" 2068.571533203125;
	setAttr ".tgi[0].ni[543].nvs" 18304;
	setAttr ".tgi[0].ni[544].x" 358.57144165039062;
	setAttr ".tgi[0].ni[544].y" 27452.857421875;
	setAttr ".tgi[0].ni[544].nvs" 18304;
	setAttr ".tgi[0].ni[545].x" -264.28570556640625;
	setAttr ".tgi[0].ni[545].y" -31.428571701049805;
	setAttr ".tgi[0].ni[545].nvs" 18304;
	setAttr ".tgi[0].ni[546].x" 1257.142822265625;
	setAttr ".tgi[0].ni[546].y" -36141.4296875;
	setAttr ".tgi[0].ni[546].nvs" 18304;
	setAttr ".tgi[0].ni[547].x" 1214.2857666015625;
	setAttr ".tgi[0].ni[547].y" 3120;
	setAttr ".tgi[0].ni[547].nvs" 18304;
	setAttr ".tgi[0].ni[548].x" 358.57144165039062;
	setAttr ".tgi[0].ni[548].y" 23160;
	setAttr ".tgi[0].ni[548].nvs" 18304;
	setAttr ".tgi[0].ni[549].x" 358.57144165039062;
	setAttr ".tgi[0].ni[549].y" 19425.71484375;
	setAttr ".tgi[0].ni[549].nvs" 18304;
	setAttr ".tgi[0].ni[550].x" 358.57144165039062;
	setAttr ".tgi[0].ni[550].y" 16588.572265625;
	setAttr ".tgi[0].ni[550].nvs" 18304;
	setAttr ".tgi[0].ni[551].x" 358.57144165039062;
	setAttr ".tgi[0].ni[551].y" 31257.142578125;
	setAttr ".tgi[0].ni[551].nvs" 18304;
	setAttr ".tgi[0].ni[552].x" 1257.142822265625;
	setAttr ".tgi[0].ni[552].y" 10672.857421875;
	setAttr ".tgi[0].ni[552].nvs" 18304;
	setAttr ".tgi[0].ni[553].x" 877.14288330078125;
	setAttr ".tgi[0].ni[553].y" 877.14288330078125;
	setAttr ".tgi[0].ni[553].nvs" 18304;
	setAttr ".tgi[0].ni[554].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[554].y" 30748.572265625;
	setAttr ".tgi[0].ni[554].nvs" 18304;
	setAttr ".tgi[0].ni[555].x" 358.57144165039062;
	setAttr ".tgi[0].ni[555].y" 33292.85546875;
	setAttr ".tgi[0].ni[555].nvs" 18304;
	setAttr ".tgi[0].ni[556].x" 1257.142822265625;
	setAttr ".tgi[0].ni[556].y" -29352.857421875;
	setAttr ".tgi[0].ni[556].nvs" 18304;
	setAttr ".tgi[0].ni[557].x" 1187.142822265625;
	setAttr ".tgi[0].ni[557].y" -5954.28564453125;
	setAttr ".tgi[0].ni[557].nvs" 18304;
	setAttr ".tgi[0].ni[558].x" 358.57144165039062;
	setAttr ".tgi[0].ni[558].y" 17821.427734375;
	setAttr ".tgi[0].ni[558].nvs" 18304;
	setAttr ".tgi[0].ni[559].x" -264.28570556640625;
	setAttr ".tgi[0].ni[559].y" 26207.142578125;
	setAttr ".tgi[0].ni[559].nvs" 18304;
	setAttr ".tgi[0].ni[560].x" 1191.4285888671875;
	setAttr ".tgi[0].ni[560].y" -7014.28564453125;
	setAttr ".tgi[0].ni[560].nvs" 18304;
	setAttr ".tgi[0].ni[561].x" 358.57144165039062;
	setAttr ".tgi[0].ni[561].y" 27047.142578125;
	setAttr ".tgi[0].ni[561].nvs" 18304;
	setAttr ".tgi[0].ni[562].x" 358.57144165039062;
	setAttr ".tgi[0].ni[562].y" 33698.5703125;
	setAttr ".tgi[0].ni[562].nvs" 18304;
	setAttr ".tgi[0].ni[563].x" 771.4285888671875;
	setAttr ".tgi[0].ni[563].y" 15738.5712890625;
	setAttr ".tgi[0].ni[563].nvs" 18304;
	setAttr ".tgi[0].ni[564].x" 358.57144165039062;
	setAttr ".tgi[0].ni[564].y" 32398.572265625;
	setAttr ".tgi[0].ni[564].nvs" 18304;
	setAttr ".tgi[0].ni[565].x" 358.57144165039062;
	setAttr ".tgi[0].ni[565].y" 20858.572265625;
	setAttr ".tgi[0].ni[565].nvs" 18304;
	setAttr ".tgi[0].ni[566].x" 771.4285888671875;
	setAttr ".tgi[0].ni[566].y" 30408.572265625;
	setAttr ".tgi[0].ni[566].nvs" 18304;
	setAttr ".tgi[0].ni[567].x" 358.57144165039062;
	setAttr ".tgi[0].ni[567].y" 26787.142578125;
	setAttr ".tgi[0].ni[567].nvs" 18304;
	setAttr ".tgi[0].ni[568].x" 1277.142822265625;
	setAttr ".tgi[0].ni[568].y" -15784.2861328125;
	setAttr ".tgi[0].ni[568].nvs" 18304;
	setAttr ".tgi[0].ni[569].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[569].y" -4440;
	setAttr ".tgi[0].ni[569].nvs" 18304;
	setAttr ".tgi[0].ni[570].x" 911.4285888671875;
	setAttr ".tgi[0].ni[570].y" 175.71427917480469;
	setAttr ".tgi[0].ni[570].nvs" 18304;
	setAttr ".tgi[0].ni[571].x" 358.57144165039062;
	setAttr ".tgi[0].ni[571].y" 25760;
	setAttr ".tgi[0].ni[571].nvs" 18304;
	setAttr ".tgi[0].ni[572].x" 358.57144165039062;
	setAttr ".tgi[0].ni[572].y" 34972.85546875;
	setAttr ".tgi[0].ni[572].nvs" 18304;
	setAttr ".tgi[0].ni[573].x" 28.571428298950195;
	setAttr ".tgi[0].ni[573].y" 8222.857421875;
	setAttr ".tgi[0].ni[573].nvs" 18304;
	setAttr ".tgi[0].ni[574].x" 1257.142822265625;
	setAttr ".tgi[0].ni[574].y" -26760;
	setAttr ".tgi[0].ni[574].nvs" 18304;
	setAttr ".tgi[0].ni[575].x" 1214.2857666015625;
	setAttr ".tgi[0].ni[575].y" 3422.857177734375;
	setAttr ".tgi[0].ni[575].nvs" 18304;
	setAttr ".tgi[0].ni[576].x" -731.4285888671875;
	setAttr ".tgi[0].ni[576].y" 25437.142578125;
	setAttr ".tgi[0].ni[576].nvs" 18304;
	setAttr ".tgi[0].ni[577].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[577].y" 19370;
	setAttr ".tgi[0].ni[577].nvs" 18304;
	setAttr ".tgi[0].ni[578].x" 358.57144165039062;
	setAttr ".tgi[0].ni[578].y" 15821.4287109375;
	setAttr ".tgi[0].ni[578].nvs" 18304;
	setAttr ".tgi[0].ni[579].x" -264.28570556640625;
	setAttr ".tgi[0].ni[579].y" 27178.572265625;
	setAttr ".tgi[0].ni[579].nvs" 18304;
	setAttr ".tgi[0].ni[580].x" 950;
	setAttr ".tgi[0].ni[580].y" 10341.4287109375;
	setAttr ".tgi[0].ni[580].nvs" 18304;
	setAttr ".tgi[0].ni[581].x" 335.71429443359375;
	setAttr ".tgi[0].ni[581].y" 7877.14306640625;
	setAttr ".tgi[0].ni[581].nvs" 18304;
	setAttr ".tgi[0].ni[582].x" 358.57144165039062;
	setAttr ".tgi[0].ni[582].y" 32037.142578125;
	setAttr ".tgi[0].ni[582].nvs" 18304;
	setAttr ".tgi[0].ni[583].x" 1207.142822265625;
	setAttr ".tgi[0].ni[583].y" 7662.85693359375;
	setAttr ".tgi[0].ni[583].nvs" 18304;
	setAttr ".tgi[0].ni[584].x" 1187.142822265625;
	setAttr ".tgi[0].ni[584].y" -6105.71435546875;
	setAttr ".tgi[0].ni[584].nvs" 18304;
	setAttr ".tgi[0].ni[585].x" 358.57144165039062;
	setAttr ".tgi[0].ni[585].y" 25861.427734375;
	setAttr ".tgi[0].ni[585].nvs" 18304;
	setAttr ".tgi[0].ni[586].x" 358.57144165039062;
	setAttr ".tgi[0].ni[586].y" 20655.71484375;
	setAttr ".tgi[0].ni[586].nvs" 18304;
	setAttr ".tgi[0].ni[587].x" 950;
	setAttr ".tgi[0].ni[587].y" 8310;
	setAttr ".tgi[0].ni[587].nvs" 18304;
	setAttr ".tgi[0].ni[588].x" -1444.2857666015625;
	setAttr ".tgi[0].ni[588].y" 26907.142578125;
	setAttr ".tgi[0].ni[588].nvs" 18304;
	setAttr ".tgi[0].ni[589].x" 465.71429443359375;
	setAttr ".tgi[0].ni[589].y" 12154.2861328125;
	setAttr ".tgi[0].ni[589].nvs" 18304;
	setAttr ".tgi[0].ni[590].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[590].y" 29882.857421875;
	setAttr ".tgi[0].ni[590].nvs" 18304;
	setAttr ".tgi[0].ni[591].x" 358.57144165039062;
	setAttr ".tgi[0].ni[591].y" 17155.71484375;
	setAttr ".tgi[0].ni[591].nvs" 18304;
	setAttr ".tgi[0].ni[592].x" 335.71429443359375;
	setAttr ".tgi[0].ni[592].y" 9908.5712890625;
	setAttr ".tgi[0].ni[592].nvs" 18304;
	setAttr ".tgi[0].ni[593].x" 465.71429443359375;
	setAttr ".tgi[0].ni[593].y" 12031.4287109375;
	setAttr ".tgi[0].ni[593].nvs" 18304;
	setAttr ".tgi[0].ni[594].x" 1244.2857666015625;
	setAttr ".tgi[0].ni[594].y" -21854.28515625;
	setAttr ".tgi[0].ni[594].nvs" 18304;
	setAttr ".tgi[0].ni[595].x" 1277.142822265625;
	setAttr ".tgi[0].ni[595].y" -23908.572265625;
	setAttr ".tgi[0].ni[595].nvs" 18304;
	setAttr ".tgi[0].ni[596].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[596].y" 15525.7138671875;
	setAttr ".tgi[0].ni[596].nvs" 18304;
	setAttr ".tgi[0].ni[597].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[597].y" -11102.857421875;
	setAttr ".tgi[0].ni[597].nvs" 18304;
	setAttr ".tgi[0].ni[598].x" 358.57144165039062;
	setAttr ".tgi[0].ni[598].y" 28144.28515625;
	setAttr ".tgi[0].ni[598].nvs" 18304;
	setAttr ".tgi[0].ni[599].x" 358.57144165039062;
	setAttr ".tgi[0].ni[599].y" 34002.85546875;
	setAttr ".tgi[0].ni[599].nvs" 18304;
	setAttr ".tgi[0].ni[600].x" 358.57144165039062;
	setAttr ".tgi[0].ni[600].y" 35074.28515625;
	setAttr ".tgi[0].ni[600].nvs" 18304;
	setAttr ".tgi[0].ni[601].x" 771.4285888671875;
	setAttr ".tgi[0].ni[601].y" 22392.857421875;
	setAttr ".tgi[0].ni[601].nvs" 18304;
	setAttr ".tgi[0].ni[602].x" 771.4285888671875;
	setAttr ".tgi[0].ni[602].y" 16721.427734375;
	setAttr ".tgi[0].ni[602].nvs" 18304;
	setAttr ".tgi[0].ni[603].x" 1257.142822265625;
	setAttr ".tgi[0].ni[603].y" -32637.142578125;
	setAttr ".tgi[0].ni[603].nvs" 18304;
	setAttr ".tgi[0].ni[604].x" 950;
	setAttr ".tgi[0].ni[604].y" 4915.71435546875;
	setAttr ".tgi[0].ni[604].nvs" 18304;
	setAttr ".tgi[0].ni[605].x" 358.57144165039062;
	setAttr ".tgi[0].ni[605].y" 27250;
	setAttr ".tgi[0].ni[605].nvs" 18304;
	setAttr ".tgi[0].ni[606].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[606].y" 17584.28515625;
	setAttr ".tgi[0].ni[606].nvs" 18304;
	setAttr ".tgi[0].ni[607].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[607].y" -16857.142578125;
	setAttr ".tgi[0].ni[607].nvs" 18304;
	setAttr ".tgi[0].ni[608].x" 335.71429443359375;
	setAttr ".tgi[0].ni[608].y" 6868.5712890625;
	setAttr ".tgi[0].ni[608].nvs" 18304;
	setAttr ".tgi[0].ni[609].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[609].y" 26805.71484375;
	setAttr ".tgi[0].ni[609].nvs" 18304;
	setAttr ".tgi[0].ni[610].x" 358.57144165039062;
	setAttr ".tgi[0].ni[610].y" 28810;
	setAttr ".tgi[0].ni[610].nvs" 18304;
	setAttr ".tgi[0].ni[611].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[611].y" -5197.14306640625;
	setAttr ".tgi[0].ni[611].nvs" 18304;
	setAttr ".tgi[0].ni[612].x" 1254.2857666015625;
	setAttr ".tgi[0].ni[612].y" -9600;
	setAttr ".tgi[0].ni[612].nvs" 18304;
	setAttr ".tgi[0].ni[613].x" -264.28570556640625;
	setAttr ".tgi[0].ni[613].y" 27684.28515625;
	setAttr ".tgi[0].ni[613].nvs" 18304;
	setAttr ".tgi[0].ni[614].x" 358.57144165039062;
	setAttr ".tgi[0].ni[614].y" 26888.572265625;
	setAttr ".tgi[0].ni[614].nvs" 18304;
	setAttr ".tgi[0].ni[615].x" 642.85711669921875;
	setAttr ".tgi[0].ni[615].y" 10600;
	setAttr ".tgi[0].ni[615].nvs" 18304;
	setAttr ".tgi[0].ni[616].x" 358.57144165039062;
	setAttr ".tgi[0].ni[616].y" 27941.427734375;
	setAttr ".tgi[0].ni[616].nvs" 18304;
	setAttr ".tgi[0].ni[617].x" 358.57144165039062;
	setAttr ".tgi[0].ni[617].y" 14895.7138671875;
	setAttr ".tgi[0].ni[617].nvs" 18304;
	setAttr ".tgi[0].ni[618].x" 358.57144165039062;
	setAttr ".tgi[0].ni[618].y" 30750;
	setAttr ".tgi[0].ni[618].nvs" 18304;
	setAttr ".tgi[0].ni[619].x" 798.5714111328125;
	setAttr ".tgi[0].ni[619].y" 3888.571533203125;
	setAttr ".tgi[0].ni[619].nvs" 18304;
	setAttr ".tgi[0].ni[620].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[620].y" 18755.71484375;
	setAttr ".tgi[0].ni[620].nvs" 18304;
	setAttr ".tgi[0].ni[621].x" 358.57144165039062;
	setAttr ".tgi[0].ni[621].y" 25138.572265625;
	setAttr ".tgi[0].ni[621].nvs" 18304;
	setAttr ".tgi[0].ni[622].x" 911.4285888671875;
	setAttr ".tgi[0].ni[622].y" 378.57144165039062;
	setAttr ".tgi[0].ni[622].nvs" 18304;
	setAttr ".tgi[0].ni[623].x" 771.4285888671875;
	setAttr ".tgi[0].ni[623].y" 23138.572265625;
	setAttr ".tgi[0].ni[623].nvs" 18304;
	setAttr ".tgi[0].ni[624].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[624].y" 815.71429443359375;
	setAttr ".tgi[0].ni[624].nvs" 18304;
	setAttr ".tgi[0].ni[625].x" 358.57144165039062;
	setAttr ".tgi[0].ni[625].y" 25658.572265625;
	setAttr ".tgi[0].ni[625].nvs" 18304;
	setAttr ".tgi[0].ni[626].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[626].y" 26928.572265625;
	setAttr ".tgi[0].ni[626].nvs" 18304;
	setAttr ".tgi[0].ni[627].x" 358.57144165039062;
	setAttr ".tgi[0].ni[627].y" 16385.71484375;
	setAttr ".tgi[0].ni[627].nvs" 18304;
	setAttr ".tgi[0].ni[628].x" 1234.2857666015625;
	setAttr ".tgi[0].ni[628].y" 4192.85693359375;
	setAttr ".tgi[0].ni[628].nvs" 18304;
	setAttr ".tgi[0].ni[629].x" 335.71429443359375;
	setAttr ".tgi[0].ni[629].y" 10254.2861328125;
	setAttr ".tgi[0].ni[629].nvs" 18304;
	setAttr ".tgi[0].ni[630].x" 1257.142822265625;
	setAttr ".tgi[0].ni[630].y" -33112.85546875;
	setAttr ".tgi[0].ni[630].nvs" 18304;
	setAttr ".tgi[0].ni[631].x" 642.85711669921875;
	setAttr ".tgi[0].ni[631].y" 8237.142578125;
	setAttr ".tgi[0].ni[631].nvs" 18304;
	setAttr ".tgi[0].ni[632].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[632].y" -17311.427734375;
	setAttr ".tgi[0].ni[632].nvs" 18304;
	setAttr ".tgi[0].ni[633].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[633].y" -12162.857421875;
	setAttr ".tgi[0].ni[633].nvs" 18304;
	setAttr ".tgi[0].ni[634].x" 771.4285888671875;
	setAttr ".tgi[0].ni[634].y" 18712.857421875;
	setAttr ".tgi[0].ni[634].nvs" 18304;
	setAttr ".tgi[0].ni[635].x" 1277.142822265625;
	setAttr ".tgi[0].ni[635].y" -31454.28515625;
	setAttr ".tgi[0].ni[635].nvs" 18304;
	setAttr ".tgi[0].ni[636].x" 1257.142822265625;
	setAttr ".tgi[0].ni[636].y" -27105.71484375;
	setAttr ".tgi[0].ni[636].nvs" 18304;
	setAttr ".tgi[0].ni[637].x" 1257.142822265625;
	setAttr ".tgi[0].ni[637].y" -25895.71484375;
	setAttr ".tgi[0].ni[637].nvs" 18304;
	setAttr ".tgi[0].ni[638].x" 642.85711669921875;
	setAttr ".tgi[0].ni[638].y" 10945.7138671875;
	setAttr ".tgi[0].ni[638].nvs" 18304;
	setAttr ".tgi[0].ni[639].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[639].y" -17008.572265625;
	setAttr ".tgi[0].ni[639].nvs" 18304;
	setAttr ".tgi[0].ni[640].x" 358.57144165039062;
	setAttr ".tgi[0].ni[640].y" 14005.7138671875;
	setAttr ".tgi[0].ni[640].nvs" 18304;
	setAttr ".tgi[0].ni[641].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[641].y" -9588.5712890625;
	setAttr ".tgi[0].ni[641].nvs" 18304;
	setAttr ".tgi[0].ni[642].x" 28.571428298950195;
	setAttr ".tgi[0].ni[642].y" 7545.71435546875;
	setAttr ".tgi[0].ni[642].nvs" 18304;
	setAttr ".tgi[0].ni[643].x" 1257.142822265625;
	setAttr ".tgi[0].ni[643].y" -1200;
	setAttr ".tgi[0].ni[643].nvs" 18304;
	setAttr ".tgi[0].ni[644].x" 950;
	setAttr ".tgi[0].ni[644].y" 6955.71435546875;
	setAttr ".tgi[0].ni[644].nvs" 18304;
	setAttr ".tgi[0].ni[645].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[645].y" 32398.572265625;
	setAttr ".tgi[0].ni[645].nvs" 18304;
	setAttr ".tgi[0].ni[646].x" 877.14288330078125;
	setAttr ".tgi[0].ni[646].y" 1425.7142333984375;
	setAttr ".tgi[0].ni[646].nvs" 18304;
	setAttr ".tgi[0].ni[647].x" 358.57144165039062;
	setAttr ".tgi[0].ni[647].y" 34567.14453125;
	setAttr ".tgi[0].ni[647].nvs" 18304;
	setAttr ".tgi[0].ni[648].x" 28.571428298950195;
	setAttr ".tgi[0].ni[648].y" 8900;
	setAttr ".tgi[0].ni[648].nvs" 18304;
	setAttr ".tgi[0].ni[649].x" 1257.142822265625;
	setAttr ".tgi[0].ni[649].y" -34172.85546875;
	setAttr ".tgi[0].ni[649].nvs" 18304;
	setAttr ".tgi[0].ni[650].x" 1257.142822265625;
	setAttr ".tgi[0].ni[650].y" -33264.28515625;
	setAttr ".tgi[0].ni[650].nvs" 18304;
	setAttr ".tgi[0].ni[651].x" 28.571428298950195;
	setAttr ".tgi[0].ni[651].y" 6191.4287109375;
	setAttr ".tgi[0].ni[651].nvs" 18304;
	setAttr ".tgi[0].ni[652].x" 950;
	setAttr ".tgi[0].ni[652].y" 7632.85693359375;
	setAttr ".tgi[0].ni[652].nvs" 18304;
	setAttr ".tgi[0].ni[653].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[653].y" -14131.4287109375;
	setAttr ".tgi[0].ni[653].nvs" 18304;
	setAttr ".tgi[0].ni[654].x" 358.57144165039062;
	setAttr ".tgi[0].ni[654].y" 24935.71484375;
	setAttr ".tgi[0].ni[654].nvs" 18304;
	setAttr ".tgi[0].ni[655].x" 1215.7142333984375;
	setAttr ".tgi[0].ni[655].y" -60;
	setAttr ".tgi[0].ni[655].nvs" 18304;
	setAttr ".tgi[0].ni[656].x" 358.57144165039062;
	setAttr ".tgi[0].ni[656].y" 14534.2861328125;
	setAttr ".tgi[0].ni[656].nvs" 18304;
	setAttr ".tgi[0].ni[657].x" 1257.142822265625;
	setAttr ".tgi[0].ni[657].y" -33870;
	setAttr ".tgi[0].ni[657].nvs" 18304;
	setAttr ".tgi[0].ni[658].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[658].y" -12011.4287109375;
	setAttr ".tgi[0].ni[658].nvs" 18304;
	setAttr ".tgi[0].ni[659].x" 771.4285888671875;
	setAttr ".tgi[0].ni[659].y" 15861.4287109375;
	setAttr ".tgi[0].ni[659].nvs" 18304;
	setAttr ".tgi[0].ni[660].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[660].y" -11405.7138671875;
	setAttr ".tgi[0].ni[660].nvs" 18304;
	setAttr ".tgi[0].ni[661].x" 1257.142822265625;
	setAttr ".tgi[0].ni[661].y" -24167.142578125;
	setAttr ".tgi[0].ni[661].nvs" 18304;
	setAttr ".tgi[0].ni[662].x" 1257.142822265625;
	setAttr ".tgi[0].ni[662].y" 8310;
	setAttr ".tgi[0].ni[662].nvs" 18304;
	setAttr ".tgi[0].ni[663].x" 950;
	setAttr ".tgi[0].ni[663].y" -1605.7142333984375;
	setAttr ".tgi[0].ni[663].nvs" 18304;
	setAttr ".tgi[0].ni[664].x" 950;
	setAttr ".tgi[0].ni[664].y" 8641.4287109375;
	setAttr ".tgi[0].ni[664].nvs" 18304;
	setAttr ".tgi[0].ni[665].x" 1257.142822265625;
	setAttr ".tgi[0].ni[665].y" -29525.71484375;
	setAttr ".tgi[0].ni[665].nvs" 18304;
	setAttr ".tgi[0].ni[666].x" 1168.5714111328125;
	setAttr ".tgi[0].ni[666].y" -2320;
	setAttr ".tgi[0].ni[666].nvs" 18304;
	setAttr ".tgi[0].ni[667].x" -620;
	setAttr ".tgi[0].ni[667].y" 12544.2861328125;
	setAttr ".tgi[0].ni[667].nvs" 18304;
	setAttr ".tgi[0].ni[668].x" 358.57144165039062;
	setAttr ".tgi[0].ni[668].y" 15415.7138671875;
	setAttr ".tgi[0].ni[668].nvs" 18304;
	setAttr ".tgi[0].ni[669].x" 950;
	setAttr ".tgi[0].ni[669].y" 6278.5712890625;
	setAttr ".tgi[0].ni[669].nvs" 18304;
	setAttr ".tgi[0].ni[670].x" 358.57144165039062;
	setAttr ".tgi[0].ni[670].y" 21321.427734375;
	setAttr ".tgi[0].ni[670].nvs" 18304;
	setAttr ".tgi[0].ni[671].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[671].y" 2801.428466796875;
	setAttr ".tgi[0].ni[671].nvs" 18304;
	setAttr ".tgi[0].ni[672].x" 950;
	setAttr ".tgi[0].ni[672].y" 9318.5712890625;
	setAttr ".tgi[0].ni[672].nvs" 18304;
	setAttr ".tgi[0].ni[673].x" 1257.142822265625;
	setAttr ".tgi[0].ni[673].y" -23475.71484375;
	setAttr ".tgi[0].ni[673].nvs" 18304;
	setAttr ".tgi[0].ni[674].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[674].y" -21097.142578125;
	setAttr ".tgi[0].ni[674].nvs" 18304;
	setAttr ".tgi[0].ni[675].x" 335.71429443359375;
	setAttr ".tgi[0].ni[675].y" 9375.7138671875;
	setAttr ".tgi[0].ni[675].nvs" 18304;
	setAttr ".tgi[0].ni[676].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[676].y" 23204.28515625;
	setAttr ".tgi[0].ni[676].nvs" 18304;
	setAttr ".tgi[0].ni[677].x" 1257.142822265625;
	setAttr ".tgi[0].ni[677].y" -34324.28515625;
	setAttr ".tgi[0].ni[677].nvs" 18304;
	setAttr ".tgi[0].ni[678].x" 1255.7142333984375;
	setAttr ".tgi[0].ni[678].y" -11417.142578125;
	setAttr ".tgi[0].ni[678].nvs" 18304;
	setAttr ".tgi[0].ni[679].x" 1257.142822265625;
	setAttr ".tgi[0].ni[679].y" -33567.14453125;
	setAttr ".tgi[0].ni[679].nvs" 18304;
	setAttr ".tgi[0].ni[680].x" 1257.142822265625;
	setAttr ".tgi[0].ni[680].y" -35687.14453125;
	setAttr ".tgi[0].ni[680].nvs" 18304;
	setAttr ".tgi[0].ni[681].x" 358.57144165039062;
	setAttr ".tgi[0].ni[681].y" 15517.142578125;
	setAttr ".tgi[0].ni[681].nvs" 18304;
	setAttr ".tgi[0].ni[682].x" 335.71429443359375;
	setAttr ".tgi[0].ni[682].y" 9577.142578125;
	setAttr ".tgi[0].ni[682].nvs" 18304;
	setAttr ".tgi[0].ni[683].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[683].y" -18220;
	setAttr ".tgi[0].ni[683].nvs" 18304;
	setAttr ".tgi[0].ni[684].x" -264.28570556640625;
	setAttr ".tgi[0].ni[684].y" 25961.427734375;
	setAttr ".tgi[0].ni[684].nvs" 18304;
	setAttr ".tgi[0].ni[685].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[685].y" 25548.572265625;
	setAttr ".tgi[0].ni[685].nvs" 18304;
	setAttr ".tgi[0].ni[686].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[686].y" -10951.4287109375;
	setAttr ".tgi[0].ni[686].nvs" 18304;
	setAttr ".tgi[0].ni[687].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[687].y" -20491.427734375;
	setAttr ".tgi[0].ni[687].nvs" 18304;
	setAttr ".tgi[0].ni[688].x" 1257.142822265625;
	setAttr ".tgi[0].ni[688].y" 9318.5712890625;
	setAttr ".tgi[0].ni[688].nvs" 18304;
	setAttr ".tgi[0].ni[689].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[689].y" 18197.142578125;
	setAttr ".tgi[0].ni[689].nvs" 18304;
	setAttr ".tgi[0].ni[690].x" 358.57144165039062;
	setAttr ".tgi[0].ni[690].y" 19527.142578125;
	setAttr ".tgi[0].ni[690].nvs" 18304;
	setAttr ".tgi[0].ni[691].x" 358.57144165039062;
	setAttr ".tgi[0].ni[691].y" 31834.28515625;
	setAttr ".tgi[0].ni[691].nvs" 18304;
	setAttr ".tgi[0].ni[692].x" 1257.142822265625;
	setAttr ".tgi[0].ni[692].y" -28834.28515625;
	setAttr ".tgi[0].ni[692].nvs" 18304;
	setAttr ".tgi[0].ni[693].x" 1220;
	setAttr ".tgi[0].ni[693].y" -3542.857177734375;
	setAttr ".tgi[0].ni[693].nvs" 18304;
	setAttr ".tgi[0].ni[694].x" 1277.142822265625;
	setAttr ".tgi[0].ni[694].y" -32665.71484375;
	setAttr ".tgi[0].ni[694].nvs" 18304;
	setAttr ".tgi[0].ni[695].x" 1195.7142333984375;
	setAttr ".tgi[0].ni[695].y" -12314.2861328125;
	setAttr ".tgi[0].ni[695].nvs" 18304;
	setAttr ".tgi[0].ni[696].x" 358.57144165039062;
	setAttr ".tgi[0].ni[696].y" 36228.5703125;
	setAttr ".tgi[0].ni[696].nvs" 18304;
	setAttr ".tgi[0].ni[697].x" 358.57144165039062;
	setAttr ".tgi[0].ni[697].y" 31732.857421875;
	setAttr ".tgi[0].ni[697].nvs" 18304;
	setAttr ".tgi[0].ni[698].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[698].y" -17614.28515625;
	setAttr ".tgi[0].ni[698].nvs" 18304;
	setAttr ".tgi[0].ni[699].x" -620;
	setAttr ".tgi[0].ni[699].y" 12240;
	setAttr ".tgi[0].ni[699].nvs" 18304;
	setAttr ".tgi[0].ni[700].x" 358.57144165039062;
	setAttr ".tgi[0].ni[700].y" 25442.857421875;
	setAttr ".tgi[0].ni[700].nvs" 18304;
	setAttr ".tgi[0].ni[701].x" -1444.2857666015625;
	setAttr ".tgi[0].ni[701].y" 26602.857421875;
	setAttr ".tgi[0].ni[701].nvs" 18304;
	setAttr ".tgi[0].ni[702].x" 358.57144165039062;
	setAttr ".tgi[0].ni[702].y" 28448.572265625;
	setAttr ".tgi[0].ni[702].nvs" 18304;
	setAttr ".tgi[0].ni[703].x" -1444.2857666015625;
	setAttr ".tgi[0].ni[703].y" 26400;
	setAttr ".tgi[0].ni[703].nvs" 18304;
	setAttr ".tgi[0].ni[704].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[704].y" -17160;
	setAttr ".tgi[0].ni[704].nvs" 18304;
	setAttr ".tgi[0].ni[705].x" 1240;
	setAttr ".tgi[0].ni[705].y" -21551.427734375;
	setAttr ".tgi[0].ni[705].nvs" 18304;
	setAttr ".tgi[0].ni[706].x" 771.4285888671875;
	setAttr ".tgi[0].ni[706].y" 34032.85546875;
	setAttr ".tgi[0].ni[706].nvs" 18304;
	setAttr ".tgi[0].ni[707].x" 358.57144165039062;
	setAttr ".tgi[0].ni[707].y" 17561.427734375;
	setAttr ".tgi[0].ni[707].nvs" 18304;
	setAttr ".tgi[0].ni[708].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[708].y" 8874.2861328125;
	setAttr ".tgi[0].ni[708].nvs" 18304;
	setAttr ".tgi[0].ni[709].x" 1174.2857666015625;
	setAttr ".tgi[0].ni[709].y" 5672.85693359375;
	setAttr ".tgi[0].ni[709].nvs" 18304;
	setAttr ".tgi[0].ni[710].x" 335.71429443359375;
	setAttr ".tgi[0].ni[710].y" 5990;
	setAttr ".tgi[0].ni[710].nvs" 18304;
	setAttr ".tgi[0].ni[711].x" 771.4285888671875;
	setAttr ".tgi[0].ni[711].y" 14160;
	setAttr ".tgi[0].ni[711].nvs" 18304;
	setAttr ".tgi[0].ni[712].x" 358.57144165039062;
	setAttr ".tgi[0].ni[712].y" 22855.71484375;
	setAttr ".tgi[0].ni[712].nvs" 18304;
	setAttr ".tgi[0].ni[713].x" 1277.142822265625;
	setAttr ".tgi[0].ni[713].y" -30545.71484375;
	setAttr ".tgi[0].ni[713].nvs" 18304;
	setAttr ".tgi[0].ni[714].x" 877.14288330078125;
	setAttr ".tgi[0].ni[714].y" 1548.5714111328125;
	setAttr ".tgi[0].ni[714].nvs" 18304;
	setAttr ".tgi[0].ni[715].x" 1257.142822265625;
	setAttr ".tgi[0].ni[715].y" -24512.857421875;
	setAttr ".tgi[0].ni[715].nvs" 18304;
	setAttr ".tgi[0].ni[716].x" 465.71429443359375;
	setAttr ".tgi[0].ni[716].y" 11727.142578125;
	setAttr ".tgi[0].ni[716].nvs" 18304;
	setAttr ".tgi[0].ni[717].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[717].y" 692.85711669921875;
	setAttr ".tgi[0].ni[717].nvs" 18304;
	setAttr ".tgi[0].ni[718].x" 798.5714111328125;
	setAttr ".tgi[0].ni[718].y" 4192.85693359375;
	setAttr ".tgi[0].ni[718].nvs" 18304;
	setAttr ".tgi[0].ni[719].x" 1257.142822265625;
	setAttr ".tgi[0].ni[719].y" -27451.427734375;
	setAttr ".tgi[0].ni[719].nvs" 18304;
	setAttr ".tgi[0].ni[720].x" 358.57144165039062;
	setAttr ".tgi[0].ni[720].y" 28347.142578125;
	setAttr ".tgi[0].ni[720].nvs" 18304;
	setAttr ".tgi[0].ni[721].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[721].y" -20188.572265625;
	setAttr ".tgi[0].ni[721].nvs" 18304;
	setAttr ".tgi[0].ni[722].x" 358.57144165039062;
	setAttr ".tgi[0].ni[722].y" 24472.857421875;
	setAttr ".tgi[0].ni[722].nvs" 18304;
	setAttr ".tgi[0].ni[723].x" -264.28570556640625;
	setAttr ".tgi[0].ni[723].y" 26674.28515625;
	setAttr ".tgi[0].ni[723].nvs" 18304;
	setAttr ".tgi[0].ni[724].x" 1257.142822265625;
	setAttr ".tgi[0].ni[724].y" -29180;
	setAttr ".tgi[0].ni[724].nvs" 18304;
	setAttr ".tgi[0].ni[725].x" 1175.7142333984375;
	setAttr ".tgi[0].ni[725].y" -3077.142822265625;
	setAttr ".tgi[0].ni[725].nvs" 18304;
	setAttr ".tgi[0].ni[726].x" 771.4285888671875;
	setAttr ".tgi[0].ni[726].y" 21750;
	setAttr ".tgi[0].ni[726].nvs" 18304;
	setAttr ".tgi[0].ni[727].x" 28.571428298950195;
	setAttr ".tgi[0].ni[727].y" 10254.2861328125;
	setAttr ".tgi[0].ni[727].nvs" 18304;
	setAttr ".tgi[0].ni[728].x" 1257.142822265625;
	setAttr ".tgi[0].ni[728].y" -26241.427734375;
	setAttr ".tgi[0].ni[728].nvs" 18304;
	setAttr ".tgi[0].ni[729].x" 950;
	setAttr ".tgi[0].ni[729].y" 7287.14306640625;
	setAttr ".tgi[0].ni[729].nvs" 18304;
	setAttr ".tgi[0].ni[730].x" 1257.142822265625;
	setAttr ".tgi[0].ni[730].y" -30735.71484375;
	setAttr ".tgi[0].ni[730].nvs" 18304;
	setAttr ".tgi[0].ni[731].x" 1257.142822265625;
	setAttr ".tgi[0].ni[731].y" 227.14285278320312;
	setAttr ".tgi[0].ni[731].nvs" 18304;
	setAttr ".tgi[0].ni[732].x" -264.28570556640625;
	setAttr ".tgi[0].ni[732].y" 25275.71484375;
	setAttr ".tgi[0].ni[732].nvs" 18304;
	setAttr ".tgi[0].ni[733].x" 771.4285888671875;
	setAttr ".tgi[0].ni[733].y" 21130;
	setAttr ".tgi[0].ni[733].nvs" 18304;
	setAttr ".tgi[0].ni[734].x" 358.57144165039062;
	setAttr ".tgi[0].ni[734].y" 29520;
	setAttr ".tgi[0].ni[734].nvs" 18304;
	setAttr ".tgi[0].ni[735].x" 1277.142822265625;
	setAttr ".tgi[0].ni[735].y" -32060;
	setAttr ".tgi[0].ni[735].nvs" 18304;
	setAttr ".tgi[0].ni[736].x" 358.57144165039062;
	setAttr ".tgi[0].ni[736].y" 25962.857421875;
	setAttr ".tgi[0].ni[736].nvs" 18304;
	setAttr ".tgi[0].ni[737].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[737].y" 23081.427734375;
	setAttr ".tgi[0].ni[737].nvs" 18304;
	setAttr ".tgi[0].ni[738].x" 358.57144165039062;
	setAttr ".tgi[0].ni[738].y" 15922.857421875;
	setAttr ".tgi[0].ni[738].nvs" 18304;
	setAttr ".tgi[0].ni[739].x" 358.57144165039062;
	setAttr ".tgi[0].ni[739].y" 15098.5712890625;
	setAttr ".tgi[0].ni[739].nvs" 18304;
	setAttr ".tgi[0].ni[740].x" -264.28570556640625;
	setAttr ".tgi[0].ni[740].y" 24252.857421875;
	setAttr ".tgi[0].ni[740].nvs" 18304;
	setAttr ".tgi[0].ni[741].x" 358.57144165039062;
	setAttr ".tgi[0].ni[741].y" 32297.142578125;
	setAttr ".tgi[0].ni[741].nvs" 18304;
	setAttr ".tgi[0].ni[742].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[742].y" 21345.71484375;
	setAttr ".tgi[0].ni[742].nvs" 18304;
	setAttr ".tgi[0].ni[743].x" -1444.2857666015625;
	setAttr ".tgi[0].ni[743].y" 26501.427734375;
	setAttr ".tgi[0].ni[743].nvs" 18304;
	setAttr ".tgi[0].ni[744].x" -264.28570556640625;
	setAttr ".tgi[0].ni[744].y" 24538.572265625;
	setAttr ".tgi[0].ni[744].nvs" 18304;
	setAttr ".tgi[0].ni[745].x" -620;
	setAttr ".tgi[0].ni[745].y" 12037.142578125;
	setAttr ".tgi[0].ni[745].nvs" 18304;
	setAttr ".tgi[0].ni[746].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[746].y" 20854.28515625;
	setAttr ".tgi[0].ni[746].nvs" 18304;
	setAttr ".tgi[0].ni[747].x" 358.57144165039062;
	setAttr ".tgi[0].ni[747].y" 18227.142578125;
	setAttr ".tgi[0].ni[747].nvs" 18304;
	setAttr ".tgi[0].ni[748].x" 358.57144165039062;
	setAttr ".tgi[0].ni[748].y" 34307.14453125;
	setAttr ".tgi[0].ni[748].nvs" 18304;
	setAttr ".tgi[0].ni[749].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[749].y" -4742.85693359375;
	setAttr ".tgi[0].ni[749].nvs" 18304;
	setAttr ".tgi[0].ni[750].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[750].y" 33748.5703125;
	setAttr ".tgi[0].ni[750].nvs" 18304;
	setAttr ".tgi[0].ni[751].x" 771.4285888671875;
	setAttr ".tgi[0].ni[751].y" 20748.572265625;
	setAttr ".tgi[0].ni[751].nvs" 18304;
	setAttr ".tgi[0].ni[752].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[752].y" -18068.572265625;
	setAttr ".tgi[0].ni[752].nvs" 18304;
	setAttr ".tgi[0].ni[753].x" 1257.142822265625;
	setAttr ".tgi[0].ni[753].y" -29007.142578125;
	setAttr ".tgi[0].ni[753].nvs" 18304;
	setAttr ".tgi[0].ni[754].x" 1204.2857666015625;
	setAttr ".tgi[0].ni[754].y" -16402.857421875;
	setAttr ".tgi[0].ni[754].nvs" 18304;
	setAttr ".tgi[0].ni[755].x" 1215.7142333984375;
	setAttr ".tgi[0].ni[755].y" 697.14288330078125;
	setAttr ".tgi[0].ni[755].nvs" 18304;
	setAttr ".tgi[0].ni[756].x" 1277.142822265625;
	setAttr ".tgi[0].ni[756].y" -18377.142578125;
	setAttr ".tgi[0].ni[756].nvs" 18304;
	setAttr ".tgi[0].ni[757].x" 465.71429443359375;
	setAttr ".tgi[0].ni[757].y" 11524.2861328125;
	setAttr ".tgi[0].ni[757].nvs" 18304;
	setAttr ".tgi[0].ni[758].x" 950;
	setAttr ".tgi[0].ni[758].y" 5377.14306640625;
	setAttr ".tgi[0].ni[758].nvs" 18304;
	setAttr ".tgi[0].ni[759].x" 1257.142822265625;
	setAttr ".tgi[0].ni[759].y" -23302.857421875;
	setAttr ".tgi[0].ni[759].nvs" 18304;
	setAttr ".tgi[0].ni[760].x" 358.57144165039062;
	setAttr ".tgi[0].ni[760].y" 21524.28515625;
	setAttr ".tgi[0].ni[760].nvs" 18304;
	setAttr ".tgi[0].ni[761].x" 1257.142822265625;
	setAttr ".tgi[0].ni[761].y" -1735.7142333984375;
	setAttr ".tgi[0].ni[761].nvs" 18304;
	setAttr ".tgi[0].ni[762].x" 771.4285888671875;
	setAttr ".tgi[0].ni[762].y" 26040;
	setAttr ".tgi[0].ni[762].nvs" 18304;
	setAttr ".tgi[0].ni[763].x" 1185.7142333984375;
	setAttr ".tgi[0].ni[763].y" -3985.71435546875;
	setAttr ".tgi[0].ni[763].nvs" 18304;
	setAttr ".tgi[0].ni[764].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[764].y" 11890;
	setAttr ".tgi[0].ni[764].nvs" 18304;
	setAttr ".tgi[0].ni[765].x" 1277.142822265625;
	setAttr ".tgi[0].ni[765].y" -26501.427734375;
	setAttr ".tgi[0].ni[765].nvs" 18304;
	setAttr ".tgi[0].ni[766].x" 1244.2857666015625;
	setAttr ".tgi[0].ni[766].y" -21702.857421875;
	setAttr ".tgi[0].ni[766].nvs" 18304;
	setAttr ".tgi[0].ni[767].x" 642.85711669921875;
	setAttr ".tgi[0].ni[767].y" 7891.4287109375;
	setAttr ".tgi[0].ni[767].nvs" 18304;
	setAttr ".tgi[0].ni[768].x" -620;
	setAttr ".tgi[0].ni[768].y" 11428.5712890625;
	setAttr ".tgi[0].ni[768].nvs" 18304;
	setAttr ".tgi[0].ni[769].x" 358.57144165039062;
	setAttr ".tgi[0].ni[769].y" 16081.4287109375;
	setAttr ".tgi[0].ni[769].nvs" 18304;
	setAttr ".tgi[0].ni[770].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[770].y" -21248.572265625;
	setAttr ".tgi[0].ni[770].nvs" 18304;
	setAttr ".tgi[0].ni[771].x" 358.57144165039062;
	setAttr ".tgi[0].ni[771].y" 30242.857421875;
	setAttr ".tgi[0].ni[771].nvs" 18304;
	setAttr ".tgi[0].ni[772].x" 1257.142822265625;
	setAttr ".tgi[0].ni[772].y" 7287.14306640625;
	setAttr ".tgi[0].ni[772].nvs" 18304;
	setAttr ".tgi[0].ni[773].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[773].y" -21400;
	setAttr ".tgi[0].ni[773].nvs" 18304;
	setAttr ".tgi[0].ni[774].x" 358.57144165039062;
	setAttr ".tgi[0].ni[774].y" 34770;
	setAttr ".tgi[0].ni[774].nvs" 18304;
	setAttr ".tgi[0].ni[775].x" 771.4285888671875;
	setAttr ".tgi[0].ni[775].y" 17268.572265625;
	setAttr ".tgi[0].ni[775].nvs" 18304;
	setAttr ".tgi[0].ni[776].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[776].y" -13677.142578125;
	setAttr ".tgi[0].ni[776].nvs" 18304;
	setAttr ".tgi[0].ni[777].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[777].y" 1090;
	setAttr ".tgi[0].ni[777].nvs" 18304;
	setAttr ".tgi[0].ni[778].x" -620;
	setAttr ".tgi[0].ni[778].y" 12442.857421875;
	setAttr ".tgi[0].ni[778].nvs" 18304;
	setAttr ".tgi[0].ni[779].x" 358.57144165039062;
	setAttr ".tgi[0].ni[779].y" 23058.572265625;
	setAttr ".tgi[0].ni[779].nvs" 18304;
	setAttr ".tgi[0].ni[780].x" 358.57144165039062;
	setAttr ".tgi[0].ni[780].y" 23940;
	setAttr ".tgi[0].ni[780].nvs" 18304;
	setAttr ".tgi[0].ni[781].x" 1257.142822265625;
	setAttr ".tgi[0].ni[781].y" -26587.142578125;
	setAttr ".tgi[0].ni[781].nvs" 18304;
	setAttr ".tgi[0].ni[782].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[782].y" 33871.4296875;
	setAttr ".tgi[0].ni[782].nvs" 18304;
	setAttr ".tgi[0].ni[783].x" -264.28570556640625;
	setAttr ".tgi[0].ni[783].y" 23497.142578125;
	setAttr ".tgi[0].ni[783].nvs" 18304;
	setAttr ".tgi[0].ni[784].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[784].y" -8225.7138671875;
	setAttr ".tgi[0].ni[784].nvs" 18304;
	setAttr ".tgi[0].ni[785].x" 335.71429443359375;
	setAttr ".tgi[0].ni[785].y" 8554.2861328125;
	setAttr ".tgi[0].ni[785].nvs" 18304;
	setAttr ".tgi[0].ni[786].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[786].y" 34731.4296875;
	setAttr ".tgi[0].ni[786].nvs" 18304;
	setAttr ".tgi[0].ni[787].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[787].y" 1212.857177734375;
	setAttr ".tgi[0].ni[787].nvs" 18304;
	setAttr ".tgi[0].ni[788].x" 1257.142822265625;
	setAttr ".tgi[0].ni[788].y" -35990;
	setAttr ".tgi[0].ni[788].nvs" 18304;
	setAttr ".tgi[0].ni[789].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[789].y" -20945.71484375;
	setAttr ".tgi[0].ni[789].nvs" 18304;
	setAttr ".tgi[0].ni[790].x" 798.5714111328125;
	setAttr ".tgi[0].ni[790].y" 4091.428466796875;
	setAttr ".tgi[0].ni[790].nvs" 18304;
	setAttr ".tgi[0].ni[791].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[791].y" 23327.142578125;
	setAttr ".tgi[0].ni[791].nvs" 18304;
	setAttr ".tgi[0].ni[792].x" 358.57144165039062;
	setAttr ".tgi[0].ni[792].y" 22957.142578125;
	setAttr ".tgi[0].ni[792].nvs" 18304;
	setAttr ".tgi[0].ni[793].x" -264.28570556640625;
	setAttr ".tgi[0].ni[793].y" 26797.142578125;
	setAttr ".tgi[0].ni[793].nvs" 18304;
	setAttr ".tgi[0].ni[794].x" 358.57144165039062;
	setAttr ".tgi[0].ni[794].y" 13384.2861328125;
	setAttr ".tgi[0].ni[794].nvs" 18304;
	setAttr ".tgi[0].ni[795].x" 1257.142822265625;
	setAttr ".tgi[0].ni[795].y" -32464.28515625;
	setAttr ".tgi[0].ni[795].nvs" 18304;
	setAttr ".tgi[0].ni[796].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[796].y" -14585.7138671875;
	setAttr ".tgi[0].ni[796].nvs" 18304;
	setAttr ".tgi[0].ni[797].x" 950;
	setAttr ".tgi[0].ni[797].y" -997.14288330078125;
	setAttr ".tgi[0].ni[797].nvs" 18304;
	setAttr ".tgi[0].ni[798].x" 465.71429443359375;
	setAttr ".tgi[0].ni[798].y" 11422.857421875;
	setAttr ".tgi[0].ni[798].nvs" 18304;
	setAttr ".tgi[0].ni[799].x" 950;
	setAttr ".tgi[0].ni[799].y" 5932.85693359375;
	setAttr ".tgi[0].ni[799].nvs" 18304;
	setAttr ".tgi[0].ni[800].x" 642.85711669921875;
	setAttr ".tgi[0].ni[800].y" 4915.71435546875;
	setAttr ".tgi[0].ni[800].nvs" 18304;
	setAttr ".tgi[0].ni[801].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[801].y" 19492.857421875;
	setAttr ".tgi[0].ni[801].nvs" 18304;
	setAttr ".tgi[0].ni[802].x" 877.14288330078125;
	setAttr ".tgi[0].ni[802].y" 3137.142822265625;
	setAttr ".tgi[0].ni[802].nvs" 18304;
	setAttr ".tgi[0].ni[803].x" 358.57144165039062;
	setAttr ".tgi[0].ni[803].y" 33597.14453125;
	setAttr ".tgi[0].ni[803].nvs" 18304;
	setAttr ".tgi[0].ni[804].x" 358.57144165039062;
	setAttr ".tgi[0].ni[804].y" 34871.4296875;
	setAttr ".tgi[0].ni[804].nvs" 18304;
	setAttr ".tgi[0].ni[805].x" 335.71429443359375;
	setAttr ".tgi[0].ni[805].y" 10398.5712890625;
	setAttr ".tgi[0].ni[805].nvs" 18304;
	setAttr ".tgi[0].ni[806].x" 1210;
	setAttr ".tgi[0].ni[806].y" -18371.427734375;
	setAttr ".tgi[0].ni[806].nvs" 18304;
	setAttr ".tgi[0].ni[807].x" 1257.142822265625;
	setAttr ".tgi[0].ni[807].y" 4915.71435546875;
	setAttr ".tgi[0].ni[807].nvs" 18304;
	setAttr ".tgi[0].ni[808].x" 335.71429443359375;
	setAttr ".tgi[0].ni[808].y" 8021.4287109375;
	setAttr ".tgi[0].ni[808].nvs" 18304;
	setAttr ".tgi[0].ni[809].x" -264.28570556640625;
	setAttr ".tgi[0].ni[809].y" 26525.71484375;
	setAttr ".tgi[0].ni[809].nvs" 18304;
	setAttr ".tgi[0].ni[810].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[810].y" 18632.857421875;
	setAttr ".tgi[0].ni[810].nvs" 18304;
	setAttr ".tgi[0].ni[811].x" 358.57144165039062;
	setAttr ".tgi[0].ni[811].y" 26381.427734375;
	setAttr ".tgi[0].ni[811].nvs" 18304;
	setAttr ".tgi[0].ni[812].x" 1277.142822265625;
	setAttr ".tgi[0].ni[812].y" -19760;
	setAttr ".tgi[0].ni[812].nvs" 18304;
	setAttr ".tgi[0].ni[813].x" 1172.857177734375;
	setAttr ".tgi[0].ni[813].y" -2471.428466796875;
	setAttr ".tgi[0].ni[813].nvs" 18304;
	setAttr ".tgi[0].ni[814].x" 1204.2857666015625;
	setAttr ".tgi[0].ni[814].y" -15797.142578125;
	setAttr ".tgi[0].ni[814].nvs" 18304;
	setAttr ".tgi[0].ni[815].x" 1257.142822265625;
	setAttr ".tgi[0].ni[815].y" -31427.142578125;
	setAttr ".tgi[0].ni[815].nvs" 18304;
	setAttr ".tgi[0].ni[816].x" 358.57144165039062;
	setAttr ".tgi[0].ni[816].y" 28607.142578125;
	setAttr ".tgi[0].ni[816].nvs" 18304;
	setAttr ".tgi[0].ni[817].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[817].y" 17828.572265625;
	setAttr ".tgi[0].ni[817].nvs" 18304;
	setAttr ".tgi[0].ni[818].x" 358.57144165039062;
	setAttr ".tgi[0].ni[818].y" 26482.857421875;
	setAttr ".tgi[0].ni[818].nvs" 18304;
	setAttr ".tgi[0].ni[819].x" 771.4285888671875;
	setAttr ".tgi[0].ni[819].y" 23731.427734375;
	setAttr ".tgi[0].ni[819].nvs" 18304;
	setAttr ".tgi[0].ni[820].x" 1257.142822265625;
	setAttr ".tgi[0].ni[820].y" -32961.4296875;
	setAttr ".tgi[0].ni[820].nvs" 18304;
	setAttr ".tgi[0].ni[821].x" 358.57144165039062;
	setAttr ".tgi[0].ni[821].y" 17922.857421875;
	setAttr ".tgi[0].ni[821].nvs" 18304;
	setAttr ".tgi[0].ni[822].x" 358.57144165039062;
	setAttr ".tgi[0].ni[822].y" 30445.71484375;
	setAttr ".tgi[0].ni[822].nvs" 18304;
	setAttr ".tgi[0].ni[823].x" -264.28570556640625;
	setAttr ".tgi[0].ni[823].y" 23742.857421875;
	setAttr ".tgi[0].ni[823].nvs" 18304;
	setAttr ".tgi[0].ni[824].x" 798.5714111328125;
	setAttr ".tgi[0].ni[824].y" 4294.28564453125;
	setAttr ".tgi[0].ni[824].nvs" 18304;
	setAttr ".tgi[0].ni[825].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[825].y" -17917.142578125;
	setAttr ".tgi[0].ni[825].nvs" 18304;
	setAttr ".tgi[0].ni[826].x" 1257.142822265625;
	setAttr ".tgi[0].ni[826].y" -25031.427734375;
	setAttr ".tgi[0].ni[826].nvs" 18304;
	setAttr ".tgi[0].ni[827].x" 1205.7142333984375;
	setAttr ".tgi[0].ni[827].y" 2678.571533203125;
	setAttr ".tgi[0].ni[827].nvs" 18304;
	setAttr ".tgi[0].ni[828].x" 642.85711669921875;
	setAttr ".tgi[0].ni[828].y" 7560;
	setAttr ".tgi[0].ni[828].nvs" 18304;
	setAttr ".tgi[0].ni[829].x" 358.57144165039062;
	setAttr ".tgi[0].ni[829].y" 33495.71484375;
	setAttr ".tgi[0].ni[829].nvs" 18304;
	setAttr ".tgi[0].ni[830].x" -620;
	setAttr ".tgi[0].ni[830].y" 11732.857421875;
	setAttr ".tgi[0].ni[830].nvs" 18304;
	setAttr ".tgi[0].ni[831].x" 1257.142822265625;
	setAttr ".tgi[0].ni[831].y" -31945.71484375;
	setAttr ".tgi[0].ni[831].nvs" 18304;
	setAttr ".tgi[0].ni[832].x" 911.4285888671875;
	setAttr ".tgi[0].ni[832].y" 277.14285278320312;
	setAttr ".tgi[0].ni[832].nvs" 18304;
	setAttr ".tgi[0].ni[833].x" 1257.142822265625;
	setAttr ".tgi[0].ni[833].y" -25722.857421875;
	setAttr ".tgi[0].ni[833].nvs" 18304;
	setAttr ".tgi[0].ni[834].x" 1257.142822265625;
	setAttr ".tgi[0].ni[834].y" 6610;
	setAttr ".tgi[0].ni[834].nvs" 18304;
	setAttr ".tgi[0].ni[835].x" 358.57144165039062;
	setAttr ".tgi[0].ni[835].y" 28708.572265625;
	setAttr ".tgi[0].ni[835].nvs" 18304;
	setAttr ".tgi[0].ni[836].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[836].y" 34485.71484375;
	setAttr ".tgi[0].ni[836].nvs" 18304;
	setAttr ".tgi[0].ni[837].x" 1247.142822265625;
	setAttr ".tgi[0].ni[837].y" -22005.71484375;
	setAttr ".tgi[0].ni[837].nvs" 18304;
	setAttr ".tgi[0].ni[838].x" 1257.142822265625;
	setAttr ".tgi[0].ni[838].y" -27624.28515625;
	setAttr ".tgi[0].ni[838].nvs" 18304;
	setAttr ".tgi[0].ni[839].x" -620;
	setAttr ".tgi[0].ni[839].y" 11834.2861328125;
	setAttr ".tgi[0].ni[839].nvs" 18304;
	setAttr ".tgi[0].ni[840].x" 1257.142822265625;
	setAttr ".tgi[0].ni[840].y" 7964.28564453125;
	setAttr ".tgi[0].ni[840].nvs" 18304;
	setAttr ".tgi[0].ni[841].x" -264.28570556640625;
	setAttr ".tgi[0].ni[841].y" 24391.427734375;
	setAttr ".tgi[0].ni[841].nvs" 18304;
	setAttr ".tgi[0].ni[842].x" 1214.2857666015625;
	setAttr ".tgi[0].ni[842].y" 6148.5712890625;
	setAttr ".tgi[0].ni[842].nvs" 18304;
	setAttr ".tgi[0].ni[843].x" 877.14288330078125;
	setAttr ".tgi[0].ni[843].y" 2617.142822265625;
	setAttr ".tgi[0].ni[843].nvs" 18304;
	setAttr ".tgi[0].ni[844].x" 1257.142822265625;
	setAttr ".tgi[0].ni[844].y" -33718.5703125;
	setAttr ".tgi[0].ni[844].nvs" 18304;
	setAttr ".tgi[0].ni[845].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[845].y" 29760;
	setAttr ".tgi[0].ni[845].nvs" 18304;
	setAttr ".tgi[0].ni[846].x" -620;
	setAttr ".tgi[0].ni[846].y" 11327.142578125;
	setAttr ".tgi[0].ni[846].nvs" 18304;
	setAttr ".tgi[0].ni[847].x" 1257.142822265625;
	setAttr ".tgi[0].ni[847].y" -35535.71484375;
	setAttr ".tgi[0].ni[847].nvs" 18304;
	setAttr ".tgi[0].ni[848].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[848].y" 25302.857421875;
	setAttr ".tgi[0].ni[848].nvs" 18304;
	setAttr ".tgi[0].ni[849].x" 1204.2857666015625;
	setAttr ".tgi[0].ni[849].y" -15948.5712890625;
	setAttr ".tgi[0].ni[849].nvs" 18304;
	setAttr ".tgi[0].ni[850].x" 1257.142822265625;
	setAttr ".tgi[0].ni[850].y" 8641.4287109375;
	setAttr ".tgi[0].ni[850].nvs" 18304;
	setAttr ".tgi[0].ni[851].x" 358.57144165039062;
	setAttr ".tgi[0].ni[851].y" 28042.857421875;
	setAttr ".tgi[0].ni[851].nvs" 18304;
	setAttr ".tgi[0].ni[852].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[852].y" 18878.572265625;
	setAttr ".tgi[0].ni[852].nvs" 18304;
	setAttr ".tgi[0].ni[853].x" 798.5714111328125;
	setAttr ".tgi[0].ni[853].y" 4395.71435546875;
	setAttr ".tgi[0].ni[853].nvs" 18304;
	setAttr ".tgi[0].ni[854].x" 642.85711669921875;
	setAttr ".tgi[0].ni[854].y" 10744.2861328125;
	setAttr ".tgi[0].ni[854].nvs" 18304;
	setAttr ".tgi[0].ni[855].x" 1215.7142333984375;
	setAttr ".tgi[0].ni[855].y" -1120;
	setAttr ".tgi[0].ni[855].nvs" 18304;
	setAttr ".tgi[0].ni[856].x" 1187.142822265625;
	setAttr ".tgi[0].ni[856].y" -5500;
	setAttr ".tgi[0].ni[856].nvs" 18304;
	setAttr ".tgi[0].ni[857].x" 1234.2857666015625;
	setAttr ".tgi[0].ni[857].y" -19431.427734375;
	setAttr ".tgi[0].ni[857].nvs" 18304;
	setAttr ".tgi[0].ni[858].x" 911.4285888671875;
	setAttr ".tgi[0].ni[858].y" -27.142856597900391;
	setAttr ".tgi[0].ni[858].nvs" 18304;
	setAttr ".tgi[0].ni[859].x" 358.57144165039062;
	setAttr ".tgi[0].ni[859].y" 33191.4296875;
	setAttr ".tgi[0].ni[859].nvs" 18304;
	setAttr ".tgi[0].ni[860].x" 642.85711669921875;
	setAttr ".tgi[0].ni[860].y" 10067.142578125;
	setAttr ".tgi[0].ni[860].nvs" 18304;
	setAttr ".tgi[0].ni[861].x" 1207.142822265625;
	setAttr ".tgi[0].ni[861].y" 8722.857421875;
	setAttr ".tgi[0].ni[861].nvs" 18304;
	setAttr ".tgi[0].ni[862].x" -620;
	setAttr ".tgi[0].ni[862].y" 13051.4287109375;
	setAttr ".tgi[0].ni[862].nvs" 18304;
	setAttr ".tgi[0].ni[863].x" 1257.142822265625;
	setAttr ".tgi[0].ni[863].y" -34930;
	setAttr ".tgi[0].ni[863].nvs" 18304;
	setAttr ".tgi[0].ni[864].x" 1257.142822265625;
	setAttr ".tgi[0].ni[864].y" 9995.7138671875;
	setAttr ".tgi[0].ni[864].nvs" 18304;
	setAttr ".tgi[0].ni[865].x" 1257.142822265625;
	setAttr ".tgi[0].ni[865].y" -34627.14453125;
	setAttr ".tgi[0].ni[865].nvs" 18304;
	setAttr ".tgi[0].ni[866].x" 1235.7142333984375;
	setAttr ".tgi[0].ni[866].y" -19734.28515625;
	setAttr ".tgi[0].ni[866].nvs" 18304;
	setAttr ".tgi[0].ni[867].x" 1198.5714111328125;
	setAttr ".tgi[0].ni[867].y" -13525.7138671875;
	setAttr ".tgi[0].ni[867].nvs" 18304;
	setAttr ".tgi[0].ni[868].x" 358.57144165039062;
	setAttr ".tgi[0].ni[868].y" 18024.28515625;
	setAttr ".tgi[0].ni[868].nvs" 18304;
	setAttr ".tgi[0].ni[869].x" 358.57144165039062;
	setAttr ".tgi[0].ni[869].y" 26584.28515625;
	setAttr ".tgi[0].ni[869].nvs" 18304;
	setAttr ".tgi[0].ni[870].x" 950;
	setAttr ".tgi[0].ni[870].y" 8987.142578125;
	setAttr ".tgi[0].ni[870].nvs" 18304;
	setAttr ".tgi[0].ni[871].x" 358.57144165039062;
	setAttr ".tgi[0].ni[871].y" 16182.857421875;
	setAttr ".tgi[0].ni[871].nvs" 18304;
	setAttr ".tgi[0].ni[872].x" 358.57144165039062;
	setAttr ".tgi[0].ni[872].y" 26165.71484375;
	setAttr ".tgi[0].ni[872].nvs" 18304;
	setAttr ".tgi[0].ni[873].x" 877.14288330078125;
	setAttr ".tgi[0].ni[873].y" 2862.857177734375;
	setAttr ".tgi[0].ni[873].nvs" 18304;
createNode displayLayer -n "layer1";
	rename -uid "53898944-40FB-7BE3-B7CD-C395E046D7EC";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F01BC388-4FE6-0212-B82F-F5AD731421C6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -82.738091950378873 -679.16663967900922 ;
	setAttr ".tgi[0].vh" -type "double2" 1132.7380502271292 63.690473659644141 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DD390AE1-4A71-A63B-7738-1781B5A5072A";
	setAttr ".version" -type "string" "5.1.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "E27E91EB-4D29-3F07-FC3B-6ABC4B61033C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2EBBEA65-4AB2-9A2C-F4E4-0A8A97EAD9B5";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "24C92F96-4A38-4F45-55D8-59BFD61A2BDF";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTA -n "Rig_C_Root_001_rotate_Merged_Layer_inputBX";
	rename -uid "021CDECD-4303-4FBE-9AF8-16940065F55D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_Root_001_rotate_Merged_Layer_inputBY";
	rename -uid "AB288B59-4556-E425-A336-DEA2B8F6E52F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_Root_001_rotate_Merged_Layer_inputBZ";
	rename -uid "6CCC4DCD-4300-431D-92F2-2B8B3D1F3191";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_Root_001_translateX_Merged_Layer_inputB";
	rename -uid "DADBC876-43EE-17F8-148C-F28C17D505F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_Root_001_translateY_Merged_Layer_inputB";
	rename -uid "C5E775FA-4875-0DEB-F240-E8B921B7C3BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_Root_001_translateZ_Merged_Layer_inputB";
	rename -uid "C9E80364-479F-AE2E-28E5-9EA8CB611227";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -11.424114907063611 2 -17.136172360595417
		 3 -44.625448855717231 4 -51.879092439969774 5 -58.457552983035328 6 -64.479980433358662
		 7 -70.065524739384514 8 -75.33333584955767 9 -80.402563712322888 10 -85.392358276124924
		 11 -90.421869489408522 12 -95.610247300618468 13 -101.07664165819952 14 -101.07664165819952
		 15 -101.07664165819952 16 -101.07664165819952 17 -101.07664165819952 18 -101.07664165819952
		 19 -101.07664165819952 20 -101.07664165819952 21 -101.07664165819952 22 -101.07664165819952
		 23 -101.07664165819952 24 -101.07664165819952 25 -101.07664165819952 26 -101.07664165819952
		 27 -101.07664165819952 28 -101.07664165819952 29 -101.07664165819952 30 -101.07664165819952
		 31 -101.07664165819952 32 -101.07664165819952 33 -101.07664165819952 34 -101.07664165819952
		 35 -101.07664165819952 36 -101.07664165819952 37 -101.07664165819952 38 -101.07664165819952
		 39 -101.07664165819952 40 -101.07664165819952 41 -101.07664165819952;
createNode animCurveTA -n "Rig_C_Root_002_rotate_Merged_Layer_inputBX";
	rename -uid "939D3DF9-4EFE-46EF-5BA6-D7B849141E26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_Root_002_rotate_Merged_Layer_inputBY";
	rename -uid "853E00E0-48D7-313F-A5AA-D6AD288303A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_Root_002_rotate_Merged_Layer_inputBZ";
	rename -uid "F6900FC2-4C95-8C9A-24A6-75BFB94DB75B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_Root_002_translateX_Merged_Layer_inputB";
	rename -uid "2854D48E-4369-B433-AC4E-D4B5856E1853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_Root_002_translateY_Merged_Layer_inputB";
	rename -uid "FA505B2F-4EF7-4C33-03B0-9A8B3E025F3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_Root_002_translateZ_Merged_Layer_inputB";
	rename -uid "69031232-4EA0-0329-46D7-FD96E00081BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_rotate_Merged_Layer_inputBX";
	rename -uid "D0D2B63C-42A2-6D35-6318-4B8AD0BE032F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0.16860118412949163 3 -26.42683339023738
		 4 -64.919169098008481 5 -105.85339742994461 6 -147.52273229616159 7 -188.22038760677557
		 8 -226.23957727190239 9 -261.2895964722419 10 -294.02747611289692 11 -324.16803369058755
		 12 -351.42608670203407 13 -360 14 -360 15 -360 16 -360 17 -360 18 -360 19 -360 20 -360
		 21 -360 22 -360 23 -360 24 -360 25 -360 26 -360 27 -360 28 -360 29 -360 30 -360 31 -360
		 32 -360 33 -360 34 -360 35 -360 36 -360 37 -360 38 -360 39 -360 40 -360 41 -360;
createNode animCurveTA -n "Rig_C_body_rotate_Merged_Layer_inputBY";
	rename -uid "73273553-48FF-6F28-36BF-35897182CC4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_rotate_Merged_Layer_inputBZ";
	rename -uid "C6718A72-4DB2-9402-0DCB-4F9F10BF3E7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "Rig_C_body_scaleX_Merged_Layer_inputB";
	rename -uid "DF7C4D02-4563-7EA2-7E22-9D9AF28D2C03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1.0282111083838634 11 1.0806031668110379 12 1.1088142751949013 13 1 14 1 15 1
		 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1
		 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_scaleY_Merged_Layer_inputB";
	rename -uid "E1F2B863-40B9-6F14-A8C7-9DAE4131568E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1.1307562483823503 3 1.5158602675906423
		 4 1.4622107997612155 5 1.3342774533987363 6 1.181582814191906 7 1.0536494678294268
		 8 1 9 1 10 1.0282111083838634 11 1.0806031668110379 12 1.1088142751949013 13 1 14 1
		 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1
		 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_scaleZ_Merged_Layer_inputB";
	rename -uid "FC9C810E-4D2D-05AC-DE6C-6B96DF903426";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1.0282111083838634 11 1.0806031668110379 12 1.1088142751949013 13 1 14 1 15 1
		 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1
		 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTL -n "Rig_C_body_translateX_Merged_Layer_inputB";
	rename -uid "94C849F4-4676-872A-3927-82A204842BE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_translateY_Merged_Layer_inputB";
	rename -uid "75F807AE-4455-9BAA-9FB0-869696712CEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 14.628169461002921 3 68.81096185843441
		 4 80.326153087978071 5 84.568591962020506 6 85.174654658312292 7 84.735161170124599
		 8 81.658706752811099 9 73.308330477246159 10 56.047673578152846 11 32.932682265846431
		 12 11.364853074589433 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_translateZ_Merged_Layer_inputB";
	rename -uid "DCAAF647-4098-4AB4-6961-FBBA35DFC986";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotate_Merged_Layer_inputBX";
	rename -uid "80C64985-4B60-AFD3-E738-68B1FDED9933";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotate_Merged_Layer_inputBY";
	rename -uid "1A3565DB-4DDD-E792-2FEF-05A88A325A53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotate_Merged_Layer_inputBZ";
	rename -uid "EA44F698-4D99-3298-B991-6F9A09A27E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateX_Merged_Layer_inputB";
	rename -uid "A45A6FE1-478A-D753-C7E0-D48D24C8D90F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateY_Merged_Layer_inputB";
	rename -uid "0B2E717E-48BC-F325-9343-768D3E1F95F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateZ_Merged_Layer_inputB";
	rename -uid "AD4A7A06-4817-B12F-2C1C-7991DF774709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotate_Merged_Layer_inputBX";
	rename -uid "06E2095E-4138-38A1-8E56-2190AE369381";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotate_Merged_Layer_inputBY";
	rename -uid "5FDE81A7-4611-152C-79C6-EEAC4D6F2F79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotate_Merged_Layer_inputBZ";
	rename -uid "B49D9F5F-4BE3-9424-5DAA-C9BBB7DF53D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateX_Merged_Layer_inputB";
	rename -uid "3722C22B-4A35-2EA9-598F-69ABE4506CA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0.2795435222803358
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateY_Merged_Layer_inputB";
	rename -uid "7FAD5D8B-4E85-6568-7A8D-73B55F5CABDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 2.4832905201360949
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateZ_Merged_Layer_inputB";
	rename -uid "CF2A2098-44F5-AF19-B4B5-11BAE2983CDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 -13.872372262907964
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotate_Merged_Layer_inputBX";
	rename -uid "933B9890-457F-AE3E-E0F0-A0AD5754159D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 17.827493868639799 2 17.835782197742873
		 3 10.1138033326599 4 12.585034139992512 5 14.469342102906188 6 15.803933593568704
		 7 16.626014984147851 8 16.972792646811406 9 12.972798692601087 10 13.554830035898469
		 11 14.028875011156138 12 12.486860036422383 13 0.92667370735691523 14 0.92667370735691523
		 15 0.92667370735691523 16 0.90837988766874955 17 0.87440565110501312 18 0.85611183141684755
		 19 0.85872523422944258 20 0.87701905391760826 21 0.92667370735691523 22 1.5852512161308818
		 23 2.5798723435453885 24 3.7260182343008306 25 4.498095926624881 26 5.5184993257707982
		 27 10.654422088921823 28 15.557752535333982 29 17.97136578328664 30 19.463349542157392
		 31 20.929495229933089 32 17.424652094846667 33 9.4230086596783806 34 3.5091304041558371
		 35 0.98349449780772125 36 -0.36563877970226299 37 -0.27060711889966582 38 -0.095031660802596271
		 39 0 40 -0.00015958459385687602 41 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotate_Merged_Layer_inputBY";
	rename -uid "E10A46A7-41F4-3FDE-2E2B-FE8F31E2A2EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 4.1903247219303443 2 -2.8404322187636524
		 3 -0.21083351202670056 4 1.7144767528763072 5 4.3470438497845016 6 7.2153632240277572
		 7 9.8479303209359497 8 11.773240585838957 9 12.519789464066653 10 10.641821044456654
		 11 6.468557889767772 12 2.1909631562116578 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0
		 21 0 22 0 23 1.8226944289224434 24 5.3322581683772254 25 11.644884414930647 26 13.573020792232926
		 27 19.126441582109258 28 14.089748303184074 29 13.335359758587805 30 13.897182108750911
		 31 1.5493242445969664 32 3.8152759390154212 33 -7.8609400009457104 34 2.0368889817334992
		 35 -2.0113099854982521 36 9.100366401655533 37 0.43132729771992878 38 8.669039103935603
		 39 0 40 4.259037274866813 41 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotate_Merged_Layer_inputBZ";
	rename -uid "7228D1D9-4D6E-9772-3972-80AB59A949E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -7.1359391674083605 2 -17.225183527921388
		 3 -16.601659371264336 4 -19.036687378541608 5 -21.038006410976038 6 -22.601592524326406
		 7 -23.723421774351515 8 -24.399470216810137 9 -24.625713907461055 10 -20.931856821341892
		 11 -12.723285518854883 12 -4.3094999338056725 13 0 14 0 15 0 16 0 17 0 18 0 19 0
		 20 0 21 0 22 0 23 0.40421753471910926 24 1.3688613144438075 25 2.5183312798774327
		 26 3.4843742549478707 27 3.8852909646746876 28 3.4688127885180235 29 2.6112353718101216
		 30 1.5162723501712132 31 -0.54339431990111797 32 -2.4083124033034782 33 -3.4555731935753586
		 34 -2.7026827526629784 35 -0.80719541802250205 36 0.24843187019719384 37 0.1896062108957671
		 38 0.058825659301426157 39 0 40 -0.003768257256045997 41 0;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleX_Merged_Layer_inputB";
	rename -uid "787DEAB3-4E8A-FC50-4DAD-BAA592C68EA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1.0234660722660787 3 1.092578476885351
		 4 1.0829503152892745 5 1.0599908530217075 6 1.0325876238636436 7 1.0096281615960765
		 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1
		 25 0.94291375178126147 26 0.83689643366074717 27 0.7798101854420092 28 0.79814634747981938
		 29 0.83385097124499485 30 0.87751941565211777 31 0.95166145477281594 32 1 33 1.0144499565803682
		 34 1.0165142360918493 35 1.0082571180459248 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleY_Merged_Layer_inputB";
	rename -uid "673FA867-4ABE-2202-34BE-A297FDD1DB27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1.0234660722660787 3 1.092578476885351
		 4 1.0829503152892745 5 1.0599908530217075 6 1.0325876238636436 7 1.0096281615960765
		 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1
		 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleZ_Merged_Layer_inputB";
	rename -uid "E34476A3-4570-8769-1917-FFA73B5A258F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1.0234660722660787 3 1.092578476885351
		 4 1.0829503152892745 5 1.0599908530217075 6 1.0325876238636436 7 1.0096281615960765
		 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1
		 25 0.94291375178126147 26 0.83689643366074717 27 0.7798101854420092 28 0.79810308072857883
		 29 0.83407879405577046 30 0.87818847855352344 31 0.9531126394707935 32 1.001129552555418
		 33 1.0148510126696479 34 1.0165142360918493 35 1.0082571180459248 36 1 37 1 38 1
		 39 1 40 1 41 1;
createNode animCurveTL -n "Rig_C_body_middle_option_translateX_Merged_Layer_inputB";
	rename -uid "F9D6FD40-4572-2826-4D31-06B2CB8C5833";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -4.7064167752409869 2 -3.6391873996790287
		 3 -4.4962033010819935 4 -4.2213444754932876 5 -3.8079057785411958 6 -3.2935240586223462
		 7 -2.7158361641333637 8 -2.1124789434708764 9 -1.5208552254094685 10 -0.97748764551843492
		 11 -0.51869276238646633 12 -0.18078713460225482 13 0 14 0 15 0 16 0 17 0 18 0 19 0
		 20 0 21 0 22 0 23 0.8748929993309964 24 2.8695540049299746 25 4.8166398568417614
		 26 5.6599654807932556 27 4.8733729889637214 28 3.0187922935675076 29 0.068065996555762176
		 30 -3.3870432597450351 31 -7.9402188934351159 32 -8.0228486394652787 33 -5.84517086425386
		 34 -3.0007842478996811 35 -0.71813234016682204 36 0.41995528106906188 37 0.42347116150008379
		 38 0.27993723805830406 39 0.13338970281850687 40 0.041684282130783332 41 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateY_Merged_Layer_inputB";
	rename -uid "ADC9032C-4E8C-624D-45E2-BD998A8D4E6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -9.0740519925403689 2 -8.0986443752489397
		 3 -4.0399063467270899 4 -5.3250838757900176 5 -5.9863561804179515 6 -6.5121553128849561
		 7 -6.9479752922088522 8 -7.339310137407459 9 -7.4621853321087377 10 -9.1702283212198541
		 11 -8.3886414962494911 12 -7.6879576857483407 13 -15.706876225105802 14 -15.706876225105802
		 15 -15.706876225105802 16 -15.755102409844117 17 -15.844665324358131 18 -15.892891509096446
		 19 -15.886002054133829 20 -15.837775869395514 21 -15.706876225105802 22 -13.970733574526468
		 23 -9.9186606028247581 24 -5.706843034966866 25 -2.0061308993774514 26 1.5178350697403549
		 27 7.404934893016236 28 9.199401411962878 29 7.7891292701455548 30 2.4842045106288801
		 31 -4.6133557043706546 32 -5.7915121628132535 33 -4.9224680558458598 34 -3.1447864135022772
		 35 -1.1306111327260417 36 -0.0027762484681798827 37 -0.0031224514338112422 38 -0.0023421526878752313
		 39 -0.0012651085428266328 40 -0.00039534641963332519 41 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateZ_Merged_Layer_inputB";
	rename -uid "3155498F-49C7-7F5C-32D5-048014D68BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -15.481470251540809 2 -27.256025871262938
		 3 13.430015095664542 4 10.526895160821342 5 7.6304080143062922 6 4.5513931269914032
		 7 1.9529276056734168 8 0.49808855714908329 9 0.27064515763012992 10 -1.9336337893473619
		 11 -2.6111820414717086 12 -2.7817789134516988 13 0 14 0 15 0 16 0 17 0 18 0 19 0
		 20 0 21 0 22 0 23 6.3225662280510404 24 15.472648261800185 25 20.343198521975623
		 26 22.462322128854666 27 17.094554981713976 28 10.000893044530439 29 3.0749492158731027
		 30 -3.7344628517204326 31 -10.910265092106872 32 -8.4674171405035885 33 -3.4757296055927109
		 34 -0.54638821197470677 35 -0.20070012267034609 36 -0.001998777785524708 37 -0.0045206562562144295
		 38 -0.0051451367739477546 39 -0.0036080071739470537 40 -0.0011275022418584519 41 0;
createNode animCurveTA -n "Rig_C_body_under_rotate_Merged_Layer_inputBX";
	rename -uid "DE194F23-46A0-822A-9A74-1BBC36D9A862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 2.7211224995382617 3 35.363235667870576
		 4 48.211293241248683 5 54.377022686257845 6 54.202183197712912 7 52.978306777898339
		 8 49.656356495544514 9 23.648011700093946 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0
		 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_rotate_Merged_Layer_inputBY";
	rename -uid "AC15E520-49D3-38C7-7A71-71B26A2FFF5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_rotate_Merged_Layer_inputBZ";
	rename -uid "44F25690-43F7-76F7-B483-9A863FBB66F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_translateX_Merged_Layer_inputB";
	rename -uid "8AF7480D-4B8D-E1B2-8C71-20A121BB66EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0.01247494890369941
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_translateY_Merged_Layer_inputB";
	rename -uid "5A3F0BDC-4EDE-7F0D-79FD-3B9F75E98D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 -0.93692631650048686 3 -11.487299542507692
		 4 -12.973768711345613 5 -14.776972789127008 6 -36.908992147628368 7 -21.476062293897652
		 8 -9.6646460884768004 9 -7.2559775759139375 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0
		 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_translateZ_Merged_Layer_inputB";
	rename -uid "535E74E6-44F5-F86F-B648-0597D97D8D66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 -0.60884212035814211 3 -15.475114709110263
		 4 -22.994139879274062 5 -30.998004473781638 6 -46.360635691306932 7 -47.588602386533587
		 8 -24.751392819682767 9 -20.563758954403777 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0
		 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotate_Merged_Layer_inputBX";
	rename -uid "DF651DD2-4685-BDED-7214-FAA2280D97D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotate_Merged_Layer_inputBY";
	rename -uid "6EB41ABE-428B-BF2C-92C7-368141264EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotate_Merged_Layer_inputBZ";
	rename -uid "280118C5-4E71-8BF0-311F-E996AD963194";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateX_Merged_Layer_inputB";
	rename -uid "E1A05F41-440C-5DD8-6C38-5480E04030C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 -0.44057238897887541 3 0 4 0 5 0
		 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 5.1117380954329494 14 5.1117380954329494 15 5.1117380954329494
		 16 5.1117380954329494 17 5.1117380954329494 18 5.1117380954329494 19 5.1117380954329494
		 20 5.1117380954329494 21 5.1117380954329494 22 5.1117380954329494 23 5.1117380954329494
		 24 4.3130290180215551 25 2.5558690477164747 26 0.79870907741139519 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateY_Merged_Layer_inputB";
	rename -uid "453F893E-40A6-58E1-69E7-6D8D45137BD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 -0.9852107127239782 3 -54.026548392736807
		 4 -55.190033892128888 5 -46.566591096483748 6 -27.595016946064455 7 -8.6234427956451398
		 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateZ_Merged_Layer_inputB";
	rename -uid "B5A5BD81-4E92-E0AF-778E-C386DA5D8B6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -1.0647386778613874 2 -14.706459432972659
		 3 -9.4880898973325891 4 -48.540495506762895 5 -40.95604308383119 6 -24.270247753381454
		 7 -7.5844524229317045 8 0 9 0 10 0 11 0 12 0 13 -10.096903492321909 14 -10.096903492321909
		 15 -10.096903492321909 16 -10.096903492321909 17 -10.096903492321909 18 -10.096903492321909
		 19 -10.096903492321909 20 -10.096903492321909 21 -10.096903492321909 22 -10.096903492321909
		 23 -10.096903492321909 24 -8.5192623216466181 25 -5.0484517461609535 26 -1.5776411706752889
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotate_Merged_Layer_inputBX";
	rename -uid "56762372-470E-8704-6178-F48F0588C45E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotate_Merged_Layer_inputBY";
	rename -uid "0FDD5F79-4797-85B6-15A8-20AE3EC40D47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotate_Merged_Layer_inputBZ";
	rename -uid "EC9438D7-4999-FA5B-5C6B-8FB50DC4D541";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateX_Merged_Layer_inputB";
	rename -uid "D410A2DC-4A85-F22D-B814-EBAA9F40828B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -2.3632062154298477 14 -2.3632062154298477 15 -2.3632062154298477
		 16 -2.3632062154298477 17 -2.3632062154298477 18 -2.3632062154298477 19 -2.3632062154298477
		 20 -2.3632062154298477 21 -2.3632062154298477 22 -2.3632062154298477 23 -2.3632062154298477
		 24 -1.9939552442689357 25 -1.1816031077149238 26 -0.36925097116091221 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateY_Merged_Layer_inputB";
	rename -uid "CDAA5057-43A5-010E-7285-C6B5E3220058";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 -5.6899346915929021
		 8 0.48367938026251933 9 1.9275683847994383 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0
		 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateZ_Merged_Layer_inputB";
	rename -uid "055D4044-4E53-7322-6E94-49A5F31CD780";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 -12.845333310840312
		 8 -30.766825641346145 9 -8.5165234053715526 10 0 11 0 12 0 13 8.7025403272441668
		 14 8.7025403272441668 15 8.7025403272441668 16 8.7025403272441668 17 8.7025403272441668
		 18 8.7025403272441668 19 8.7025403272441668 20 8.7025403272441668 21 8.7025403272441668
		 22 8.7025403272441668 23 8.7025403272441668 24 7.3427684011122718 25 4.3512701636220834
		 26 1.3597719261318941 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0
		 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotate_Merged_Layer_inputBX";
	rename -uid "E9CF9EF1-4467-0636-B657-CEA65504B867";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 1.4166147528118784 3 7.6986584995546323
		 4 10.605942348032896 5 13.819542649557441 6 16.792347758955515 7 18.977246031054374
		 8 19.827125820681271 9 16.729137411199829 10 9.9135629103406391 11 3.097988409481454
		 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0
		 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotate_Merged_Layer_inputBY";
	rename -uid "F12F24F6-4BDB-B439-A198-43B6CD0274BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotate_Merged_Layer_inputBZ";
	rename -uid "920DEEAC-49AE-F0A5-2913-3CB52A485B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleX_Merged_Layer_inputB";
	rename -uid "F601B72A-4079-5CBD-4677-999C3457DBC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1.7959940758938293 2 1.388499680894502
		 3 0.97539406403660356 4 0.96460108777509179 5 0.95160182726073894 6 0.93904154914026372
		 7 0.92956552006038495 8 0.92581900666782113 9 0.92685754057447167 10 0.93412727792102512
		 11 0.95385942214738473 12 0.9922851766934534 13 4.0855093593052656 14 3.9401416607898279
		 15 3.6411779034656249 16 3.3943270946658246 17 3.2690731657562964 18 3.19593218537117
		 19 3.1721613667460042 20 3.1886180873326575 21 3.2215315285059645 22 3.2709016902659247
		 23 3.0347279144782675 24 2.4715442952923201 25 1.8997504821068765 26 1.4332334942518927
		 27 1.2152048725974745 28 1.1945026000903363 29 1.170711443197989 30 1.1494044617898227
		 31 1.1632218396688294 32 1.2256894573198629 33 1.2518855550444896 34 1.1865818926255476
		 35 1.0653036624189414 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_under_option_scaleY_Merged_Layer_inputB";
	rename -uid "3D4F115F-4B9C-D625-BA99-15B1027F8052";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 0.9922851766934534 5 0.97388829034707303
		 6 0.9519307163207481 7 0.93353382997436773 8 0.92581900666782113 9 0.9334225584843695
		 10 0.95163399234741941 11 0.97355447587707822 12 0.9922851766934534 13 1 14 1 15 1
		 16 1 17 1 18 1 19 1 20 1 21 1 22 0.86956721457456321 23 0.62733489878446558 24 0.49690211335902873
		 25 0.58524422138456778 26 0.76527949776980497 27 0.90952137097767416 28 0.96031949481814372
		 29 0.98113253743653339 30 0.99517583272165522 31 1 32 1 33 1 34 1 35 1 36 1 37 1
		 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_under_option_scaleZ_Merged_Layer_inputB";
	rename -uid "46797463-4581-C0C9-26A5-449F5C8741EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1.7959940758938293 2 1.388499680894502
		 3 0.97539406403660356 4 0.96460108777509179 5 0.95160182726073894 6 0.93904154914026372
		 7 0.92956552006038495 8 0.92581900666782113 9 0.92685754057447167 10 0.93412727792102512
		 11 0.95385942214738473 12 0.9922851766934534 13 4.0855093593052656 14 3.9401416607898279
		 15 3.6411779034656249 16 3.3943270946658246 17 3.2690731657562964 18 3.19593218537117
		 19 3.1721613667460042 20 3.1886180873326575 21 3.2215315285059645 22 3.2709016902659247
		 23 3.0347279144782675 24 2.4715442952923201 25 1.8997504821068765 26 1.4332334942518927
		 27 1.2152048725974745 28 1.1945026000903363 29 1.170711443197989 30 1.1494044617898227
		 31 1.1632218396688294 32 1.2256894573198629 33 1.2518855550444896 34 1.1865818926255476
		 35 1.0653036624189414 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTL -n "Rig_C_body_under_option_translateX_Merged_Layer_inputB";
	rename -uid "DFDB8568-4863-D3DD-A5C2-21A8CC6B95D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateY_Merged_Layer_inputB";
	rename -uid "7200375F-451D-9206-D62A-FAB661B18E0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -6.6280100174992658 2 -19.349601363044755
		 3 -16.339593057114335 4 -15.314151567262211 5 -10.864829135580319 6 -9.2574719158727845
		 7 -8.3322342399963141 8 -8.0356933952944782 9 -8.6429981679759464 10 -9.6404301887950332
		 11 -10.593634408664029 12 -11.156711380395411 13 -6.4818349169861538 14 -6.4818349169861538
		 15 -6.4818349169861538 16 -6.4818349169861538 17 -6.4818349169861538 18 -6.4818349169861538
		 19 -6.4818349169861538 20 -6.4818349169861538 21 -6.4818349169861538 22 -6.4841371725690005
		 23 -6.4892021348512623 24 -6.4942670971335241 25 -6.4965693527163708 26 -6.5357626775265736
		 27 -6.5928792389119302 28 -6.5866214331915236 29 -6.5331241174220427 30 -6.3981015931365981
		 31 -5.9648171468401543 32 -5.1881552333948155 33 -4.1344104835074846 34 -2.9461527412012418
		 35 -1.7659518504991842 36 -0.73637765542440992 37 0 38 0.34704390672524466 39 0.39042439506589982
		 40 0.2602829300439331 41 0.086760976681310623;
createNode animCurveTL -n "Rig_C_body_under_option_translateZ_Merged_Layer_inputB";
	rename -uid "1111AA12-4C37-D1E8-BF87-38945B851D8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 4.3545614952870073 3 6.8655530526943442
		 4 6.595822979683164 5 1.3954252917017129 6 -1.3776925851950699 7 -3.4441691596755932
		 8 -4.2549964567274188 9 -3.6564432031019156 10 -2.6785893627112092 11 -1.7599402692759032
		 12 -1.220591762605798 13 -1.3921789491094927 14 -1.3921789491094927 15 -1.3921789491094927
		 16 -1.3921789491094927 17 -1.3921789491094927 18 -1.3921789491094927 19 -1.3921789491094927
		 20 -1.3921789491094927 21 -1.3921789491094927 22 -1.2890545825087896 23 -1.0312436660070312
		 24 -0.69608947455474701 25 -0.36093528310246104 26 -0.1031243666007029 27 0 28 0
		 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_rotate_Merged_Layer_inputBX";
	rename -uid "B2EC4BE7-4137-A007-F3F9-EEA53092F49F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_rotate_Merged_Layer_inputBY";
	rename -uid "B2AB720F-4889-2135-922D-E7ABAF1C0D02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_rotate_Merged_Layer_inputBZ";
	rename -uid "25DC158D-48EB-7F14-6B38-F1AA7B15021A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_translateX_Merged_Layer_inputB";
	rename -uid "6B2FE963-471C-66B5-0124-78A94AB928DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_translateY_Merged_Layer_inputB";
	rename -uid "AF4F20E5-43D8-B739-3061-D4B298D3980A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 -0.19745906439975258
		 10 -0.66832298719916261 11 -1.2303218627984576 12 -1.7011857855978669 13 -1.898644849997619
		 14 -1.898644849997619 15 -1.898644849997619 16 -1.898644849997619 17 -1.898644849997619
		 18 -1.898644849997619 19 -1.898644849997619 20 -1.898644849997619 21 -1.898644849997619
		 22 -1.4064035925908296 23 -0.5449813921289457 24 0 25 0 26 0 27 0 28 0 29 0 30 0
		 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_translateZ_Merged_Layer_inputB";
	rename -uid "5E861D6E-40D9-5594-2F86-09A10B266F22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0.020861409123240308
		 10 0.07060784626327489 11 0.12998262607557412 12 0.17972906321560869 13 0.20059047233884889
		 14 0.20059047233884889 15 0.20059047233884889 16 0.20059047233884889 17 0.20059047233884889
		 18 0.20059047233884889 19 0.20059047233884889 20 0.20059047233884889 21 0.20059047233884889
		 22 0.14858553506581398 23 0.052004937273034596 24 0 25 0 26 0 27 0 28 0 29 0 30 0
		 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotate_Merged_Layer_inputBX";
	rename -uid "B9166D41-400E-2CB3-007C-D5989433AB16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotate_Merged_Layer_inputBY";
	rename -uid "585F7072-4EDE-DEE4-73CA-6A976AE9DBDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotate_Merged_Layer_inputBZ";
	rename -uid "14FB11F3-4FC2-4844-C96C-0FA196BE6577";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateX_Merged_Layer_inputB";
	rename -uid "330C1F51-45A5-966C-0E93-2DBFEB25CBB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateY_Merged_Layer_inputB";
	rename -uid "DDBC7898-446E-80C4-155C-DE874249BB13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateZ_Merged_Layer_inputB";
	rename -uid "3676DB0F-4537-90EE-39E0-57BA0C7BA139";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotate_Merged_Layer_inputBX";
	rename -uid "387245C6-438F-E870-6E90-18A420DDF29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotate_Merged_Layer_inputBY";
	rename -uid "B1C49D95-41E2-7C34-1783-0CA7D66B2EE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotate_Merged_Layer_inputBZ";
	rename -uid "2D0E3C2E-4B26-0A96-C3C4-44B6E5812CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateX_Merged_Layer_inputB";
	rename -uid "BBB63BF9-4894-F5D5-9A6F-99BAF5A2DAC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 -0.010821349594713389
		 24 -0.021642699189426736 25 -0.010821349594713326 26 0 27 0 28 0 29 0 30 0 31 0 32 0
		 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateY_Merged_Layer_inputB";
	rename -uid "E53FA5E7-4062-2FB1-6F4F-EEB130850CBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 3.7032168646208596 11 8.0245401928455884 12 8.4366111685815071 13 -0.71479278690562709
		 14 -0.71479278690562709 15 -0.71479278690562709 16 -0.71479278690562709 17 -0.71479278690562709
		 18 -0.71479278690562709 19 -0.71479278690562709 20 -0.71479278690562709 21 -0.71479278690562709
		 22 -0.5093722077476408 23 -0.09480223767596474 24 0.14369295026029219 25 0.090514410781048354
		 26 0.020103930700971752 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0
		 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateZ_Merged_Layer_inputB";
	rename -uid "52033226-4C73-6A0D-2121-C3A53DAA025A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 -3.9327702850624728 11 -7.8655405701249368 12 -4.7100313837665171 13 1.646959647466292
		 14 1.646959647466292 15 1.646959647466292 16 1.646959647466292 17 1.646959647466292
		 18 1.646959647466292 19 1.646959647466292 20 1.646959647466292 21 1.646959647466292
		 22 1.90194218273587 23 3.7184768098775969 24 5.3164549782168198 25 3.2914872716455834
		 26 0.68197207350157552 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0
		 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotate_Merged_Layer_inputBX";
	rename -uid "8D9DD0CA-4322-80B5-510F-0684FEA2B747";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 28.413968978869928 2 20.170831748543527
		 3 0.84543951406381246 4 12.973632423643025 5 1.3597900679440518 6 -11.887907569653537
		 7 -23.50174992535251 8 -30.214026435355578 9 -28.622773156460557 10 -18.367907572109559
		 11 -3.5998010674367831 12 9.7983884111580348 13 15.545271223647767 14 12.824893461813081
		 15 9.0425360444285445 16 7.2720098893199099 17 6.0025540802156652 18 4.9254746681491532
		 19 3.8252825578151843 20 2.9174668445189411 21 2.5398008652093291 22 5.7425581563795705
		 23 6.6662825026235266 24 -0.43952160143714591 25 -17.634439768361691 26 -37.378970597987504
		 27 -30.817593122925405 28 -19.133572403311941 29 -6.7137099026133047 30 5.9568464243107151
		 31 18.392948622600141 32 29.96820262216859 33 25.153831702864249 34 11.995793886954413
		 35 2.9963487649407776 36 -1.7709015963627177 37 -2.0294046444217835 38 -1.5524072687929082
		 39 -0.85219309028328383 40 -0.26659782400879778 41 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotate_Merged_Layer_inputBY";
	rename -uid "2EFBAC3B-43D3-C3A7-11B0-4FA9A6002B5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 9.658078099238864 2 11.364728673440283
		 3 -2.6173249396929466 4 2.644420916494346 5 2.608754594608059 6 2.5392991256716058
		 7 2.4247914606682643 8 2.2539685505813121 9 2.015567346394028 10 -0.74977109970300482
		 11 -6.4747875699338691 12 -12.130817864937324 13 -14.689197785352082 14 -11.548426948733173
		 15 -7.2255891883965635 16 -5.3216846678846963 17 -4.0256336811694222 18 -2.8685285481749974
		 19 -1.5102673299880123 20 -0.29095196552187153 21 0.23801940855894557 22 0 23 2.3364324259187308
		 24 7.0434517697391996 25 14.902761333080688 26 20.98221217922698 27 24.201918560282717
		 28 18.434029554349852 29 5.7446737412976239 30 -6.944682071754678 31 -12.712571077687537
		 32 -5.3416664281269641 33 -20.280090617658704 34 -7.2178400431370875 35 -2.7530600992975893
		 36 13.370513585869359 37 3.3874729970487478 38 9.4611718575686972 39 -0.24558528529501197
		 40 4.1822904872605422 41 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotate_Merged_Layer_inputBZ";
	rename -uid "ED9E05E1-4F37-0E57-1E4E-5693A0A3836A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -18.451146105017884 2 -36.563942908608553
		 3 -19.569431280607869 4 -19.224271608838897 5 -18.361856105911311 6 -17.298316364179438
		 7 -16.116638131162546 8 -14.899807154379916 9 -13.730809181350825 10 -12.461488776335708
		 11 -10.962654541491002 12 -9.3457382811799565 13 -7.7221717997658574 14 -5.0268805586799932
		 15 -2.7462035563230698 16 -1.7567271413345509 17 -1.2638585889654199 18 -0.86908964562701618
		 19 -0.39863836095413618 20 -0.026286685311980952 21 0.12512778379250233 22 0 23 0.18030164933052004
		 24 0.62816546300130616 25 2.0670369283206296 26 4.1454390526538765 27 5.4244589321320182
		 28 2.8229292529373002 29 -2.9004360412910448 30 -8.6238013355194223 31 -11.22533101471414
		 32 -7.1000433549189097 33 -7.8717126950336427 34 -5.6984667922096746 35 -1.6229269564869064
		 36 0.6008254838863516 37 0.47464482705568223 38 0.18386003515681323 39 0.027143236859362447
		 40 0.0039474611629031374 41 0;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleX_Merged_Layer_inputB";
	rename -uid "C7001D1D-4A2B-6311-0709-FE9A1B0C67A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 0.9589136660158265
		 26 0.88261047433093309 27 0.84152414034676004 28 0.85386713864950725 29 0.87821967290422531
		 30 0.91846098580080637 31 0.96140911671581075 32 1 33 1.0144499565803682 34 1.0165142360918493
		 35 1.0082571180459248 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleY_Merged_Layer_inputB";
	rename -uid "9A97D7A0-43B5-16A3-33D7-CF9141782198";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1.0205177035812838
		 26 1.0586220102322395 27 1.079139713813523 28 1.0714543003027133 29 1.0568967967943141
		 30 1.0342064087028942 31 1.0107813380409676 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1
		 40 1 41 1;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleZ_Merged_Layer_inputB";
	rename -uid "AB8BF522-4A06-7E37-B3CB-C09C1AB75257";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 0.9589136660158265
		 26 0.88261047433093309 27 0.84152414034676004 28 0.85386713864950725 29 0.87821967290422531
		 30 0.91846098580080637 31 0.96140911671581075 32 1 33 1.0144499565803682 34 1.0165142360918493
		 35 1.0082571180459248 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTL -n "Rig_C_body_upper_option_translateX_Merged_Layer_inputB";
	rename -uid "5FA5D6AC-44D0-BA1A-1BEC-AABC93A42319";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -3.7341873179906795 2 -1.8670936589953395
		 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0
		 21 0 22 0 23 0.50928593330652605 24 1.7237370050374683 25 3.1732431229098865 26 4.387694194640825
		 27 4.8969801279473515 28 3.7669821132244863 29 1.7457458866007867 30 -0.51650933164848079
		 31 -3.3847422310920914 32 -4.2183779832624824 33 -3.6843225714461205 34 -2.0226297626011003
		 35 -0.33593257663829845 36 0.41362960021106532 37 0.48997982849320831 38 0.38665349263335302
		 39 0.21788410396023375 40 0.06808878248757308 41 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateY_Merged_Layer_inputB";
	rename -uid "B6AE98D7-498F-A21C-8C48-D6A94A4B69C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -8.8258224498654343 2 -3.763737941859898
		 3 1.5201017053029264 4 1.6249059542412911 5 1.8748237786327762 6 2.173112794841968
		 7 2.4230306192334528 8 2.5278348681718175 9 0.90420227779620199 10 -3.2638221416516737
		 11 -8.9219283626533272 12 -15.015806357690323 13 -27.273801162903304 14 -27.273801162903304
		 15 -27.273801162903304 16 -27.369897497637638 17 -27.548362119287116 18 -27.64445845402145
		 19 -27.630730406202257 20 -27.534634071467924 21 -27.273801162903304 22 -23.814333112467267
		 23 -15.238010630617886 24 -5.3700408814730718 25 5.1360991816864354 26 15.367709458912827
		 27 23.158531007496343 28 22.756513050343571 29 20.065590539312062 30 16.147080917686267
		 31 9.4123736492519559 32 3.4897236840375272 33 -0.35738575140596973 34 -1.2956223935659783
		 35 -0.19419590601883885 36 0.29826821719233593 37 0.38432141789301166 38 0.32599260681304992
		 39 0.19390390941822411 40 0.060594971693195256 41 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateZ_Merged_Layer_inputB";
	rename -uid "E6D9C2C1-4E2A-D586-E8A6-5EA28B5B22B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -8.5764526666709706 2 -15.957016037728772
		 3 1.8075394476246627 4 0.87654348143981187 5 -1.3435238225394499 6 -3.9932815724501776
		 7 -6.2133488764294391 8 -7.1443448426142933 9 -5.8294683878398956 10 -2.9367401873362144
		 11 -0.044011986832535932 12 1.2708644679418672 13 0.63887622416691414 14 0.63887622416691414
		 15 0.63887622416691414 16 0.63991618729358735 17 0.64184754738598027 18 0.64288751051265347
		 19 0.6427389443517002 20 0.641698981225027 21 0.63887622416691414 22 0.60143755160668022
		 23 5.3917016454794648 24 12.598534212097288 25 17.128064243129476 26 19.301579849721726
		 27 16.96062598151978 28 12.936612398421467 29 7.5711472856523443 30 1.7347913186109882
		 31 -4.6024941764550071 32 -3.9341433687161782 33 -2.2026670408423494 34 -0.71697933560320148
		 35 -0.042784118789858022 36 0.2043285847489362 37 0.25867979964015281 38 0.21632081379115578
		 39 0.12737507232111647 40 0.039804710100349014 41 0;
createNode animCurveTA -n "Rig_C_eye_rotate_Merged_Layer_inputBX";
	rename -uid "5F0146AD-4462-989D-C99D-B3B34204FC35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 24.649080069908869 2 14.393762057039163
		 3 0 4 -4.5384143871427316 5 -9.8635534993986074 6 -14.944097041003548 7 -18.748724716193507
		 8 -20.246116229204389 9 -18.170889315710948 10 -13.200467781441271 11 -7.2177404357113844
		 12 -2.1055960878372635 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_rotate_Merged_Layer_inputBY";
	rename -uid "083B8FB2-404D-4BD7-8B73-0392512D59A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_rotate_Merged_Layer_inputBZ";
	rename -uid "072EEE42-43ED-1526-431E-E693CBC6343B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "Rig_C_eye_scaleX_Merged_Layer_inputB";
	rename -uid "9CDD7BFD-450B-1217-07C2-5489793030C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 41 1;
createNode animCurveTU -n "Rig_C_eye_scaleY_Merged_Layer_inputB";
	rename -uid "AB28C87D-463E-F516-CE09-A7ABA25856B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 41 1;
createNode animCurveTU -n "Rig_C_eye_scaleZ_Merged_Layer_inputB";
	rename -uid "6025720A-4C43-FB27-F6C7-DF85FE358659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 41 1;
createNode animCurveTL -n "Rig_C_eye_translateX_Merged_Layer_inputB";
	rename -uid "0675E7AB-43B2-A317-E9BA-7CA59C519091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_translateY_Merged_Layer_inputB";
	rename -uid "B1619E78-454F-82CE-D113-0BB346ABB83E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -1.6822057854604633 2 -1.2501644501438198
		 3 0 4 0.87325987570816066 5 1.8889364083016986 6 2.8537357894794608 7 3.5743642109402964
		 8 3.8575278643830542 9 3.4621312582837915 10 2.5151081675777514 11 1.3752086836525601
		 12 0.40118289789583894 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_translateZ_Merged_Layer_inputB";
	rename -uid "3BB805D4-430C-47EC-10F2-D3A04BE5DB40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -0.79990257068061332 2 -0.49227337370636087
		 3 0 4 -0.013870739191247129 5 -0.046947117262682615 6 -0.086425374960847512 7 -0.119501753032283
		 8 -0.13337249222353018 9 -0.11970181177061837 10 -0.086958864929741725 11 -0.047547293477688629
		 12 -0.013870739191247219 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_root_rotate_Merged_Layer_inputBX";
	rename -uid "0129437F-480B-75D1-70FF-069BDF6050C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 18.379162669190805 2 3.1093955812063006
		 4 -0.48593186647995557 9 20.230857181033723 11 7.4528777034073244 13 -19.499940966565639
		 14 -19.499940966565639 15 -19.499940966565639 16 -19.499940966565639 17 -19.499940966565639
		 18 -19.499940966565639 19 -19.499940966565639 20 -19.499940966565639 21 -19.499940966565639
		 22 -18.357228376590765 23 -7.5782410919891445 26 31.319551542735212 33 0 34 0 35 0
		 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_root_rotate_Merged_Layer_inputBY";
	rename -uid "EE80D371-421C-56F6-D582-719E15095425";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 -4.0591047153310864 4 0 5 0 6 0
		 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0
		 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0
		 41 0;
createNode animCurveTA -n "Rig_C_eye_root_rotate_Merged_Layer_inputBZ";
	rename -uid "8890EB5D-48FE-F45D-4F3D-AAB8151516E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 43.160403564921012 4 0 5 0 6 0
		 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0
		 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0
		 41 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleX_Merged_Layer_inputB";
	rename -uid "F89A889C-40A3-F4D3-3E2D-E29936FE2672";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 0.96510941334922751
		 26 0.90031260956922166 27 0.8654220229184495 28 0.87662891547813293 29 0.89845125112258972
		 30 0.92514100024838763 31 0.97045592846881579 32 1 33 1.0088316797459769 34 1.0100933482811163
		 35 1.0050466741405581 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_eye_root_scaleY_Merged_Layer_inputB";
	rename -uid "5A447933-43E3-E312-EA26-498FDD07443B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "Rig_C_eye_root_scaleZ_Merged_Layer_inputB";
	rename -uid "A428AB99-42DD-AC57-2572-0FA15851237F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTL -n "Rig_C_eye_root_translateX_Merged_Layer_inputB";
	rename -uid "3D707F6B-4213-EAF9-361A-DFB87BEC9D9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_root_translateY_Merged_Layer_inputB";
	rename -uid "80DF14E0-4899-BF68-1A9D-E89B030A54AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0.17308568191092799 2 0.10651981340935028
		 3 0 4 0.19501568618941359 5 0.66005309171801563 6 1.2150977370263465 7 1.6801351425549484
		 8 1.875150828744363 9 1.7006891511939364 10 1.2828321576463284 11 0.77987190675704898
		 12 0.35010045718160598 13 0.17308568191092799 14 0.17308568191092799 15 0.17308568191092799
		 16 0.17308568191092799 17 0.17308568191092799 18 0.17308568191092799 19 0.17308568191092799
		 20 0.17308568191092799 21 0.17308568191092799 22 0.14287902512706532 23 0.081286164690020923
		 24 0.031847765471610889 25 0.010769775763346697 26 0.0018462472737165794 27 0 28 0
		 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_root_translateZ_Merged_Layer_inputB";
	rename -uid "434A8557-4561-A448-9D04-C5A7CCA64451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 -0.18899785873140093 2 -0.180776451876585
		 3 0 4 0.49959100939139162 5 1.1183180576327907 6 1.7239637169518867 7 2.1843105595763719
		 8 2.3671411577339363 9 2.1051369085462399 10 1.4776047800039995 11 0.72226570063849316
		 12 0.076840598980995267 13 -0.18899785873140093 14 -0.18899785873140093 15 -0.18899785873140093
		 16 -0.18899785873140093 17 -0.18899785873140093 18 -0.18899785873140093 19 -0.18899785873140093
		 20 -0.18899785873140093 21 -0.18899785873140093 22 -0.17792242865594765 23 -0.15135384077831532
		 24 -0.11927864862159536 25 -0.074354713147003801 26 -0.023924173393324547 27 0 28 0
		 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotate_Merged_Layer_inputBX";
	rename -uid "7526E3A5-4307-587E-01FC-029B24AFE349";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotate_Merged_Layer_inputBY";
	rename -uid "2F9C2F23-4858-5A09-FBEA-4BA237FDF242";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotate_Merged_Layer_inputBZ";
	rename -uid "363A24D5-4F82-CF50-CDB4-4794EEC1C42A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateX_Merged_Layer_inputB";
	rename -uid "AF316537-436F-162F-EB31-CBA4B5A4C1CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateY_Merged_Layer_inputB";
	rename -uid "B0394A6D-4A7B-F22F-94D7-639B4159BF41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateZ_Merged_Layer_inputB";
	rename -uid "3AD3B6AE-45CF-E8DB-DF73-9A9F3F9814FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotate_Merged_Layer_inputBX";
	rename -uid "D306273A-41E6-C3A6-51C7-4DB4B2A441DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotate_Merged_Layer_inputBY";
	rename -uid "5E899B55-416F-F651-9FC3-5F88F90E49E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotate_Merged_Layer_inputBZ";
	rename -uid "1B765BFF-47AA-F044-3433-1BB9A71F4B5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateX_Merged_Layer_inputB";
	rename -uid "4DD3381A-48FD-798F-C2E9-E28BC8D99050";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateY_Merged_Layer_inputB";
	rename -uid "F5F66E04-4659-9341-370E-26846A582EF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateZ_Merged_Layer_inputB";
	rename -uid "61E5F882-4A69-E12F-67CB-58B918C33B95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotate_Merged_Layer_inputBX";
	rename -uid "71D6EF56-46F5-732E-85DB-EBB97FA1CEFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotate_Merged_Layer_inputBY";
	rename -uid "3AAA55E9-4FDF-B83C-76DD-6DA1CD5DCF63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotate_Merged_Layer_inputBZ";
	rename -uid "5F4A9B9E-4747-ADE3-E030-2ABA3713230A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateX_Merged_Layer_inputB";
	rename -uid "DE92026B-4B3A-5747-ADA9-6AB5516F7F67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateY_Merged_Layer_inputB";
	rename -uid "10301DF7-43EE-583D-95C9-4C816725BBE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateZ_Merged_Layer_inputB";
	rename -uid "A1B04072-4DFC-8E13-4914-278CF57D8333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotate_Merged_Layer_inputBX";
	rename -uid "9828FA46-498C-3213-F78E-FB8A495DDB0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotate_Merged_Layer_inputBY";
	rename -uid "5F7291D0-4C94-4BFA-3A89-C9A2BD1ECA47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotate_Merged_Layer_inputBZ";
	rename -uid "CC517B8E-4514-2152-20A6-479C01E6E5CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateX_Merged_Layer_inputB";
	rename -uid "BD979785-45A1-29A1-A3BF-EDB67C754BAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateY_Merged_Layer_inputB";
	rename -uid "FE60C57D-4DB2-5952-D8A7-E7A3AD782176";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateZ_Merged_Layer_inputB";
	rename -uid "654BA62C-4CCA-98E0-0F6F-E8AE34C9588C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotate_Merged_Layer_inputBX";
	rename -uid "D9B14CE7-4F66-717B-467B-15A5492D81CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotate_Merged_Layer_inputBY";
	rename -uid "D742FFC9-4CF0-F86E-B32D-0AB11FB778C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotate_Merged_Layer_inputBZ";
	rename -uid "89F129E7-41A4-9479-ED53-E581A73DB2A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateX_Merged_Layer_inputB";
	rename -uid "4608716E-4D7D-BE53-52E6-9F8866D428B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateY_Merged_Layer_inputB";
	rename -uid "7EBAB915-4DE7-2679-2CAB-CFADEDF76296";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateZ_Merged_Layer_inputB";
	rename -uid "F28A8A6C-4BBE-7FD1-B480-F28050D024F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotate_Merged_Layer_inputBX";
	rename -uid "6B7CCB2B-4EA0-E977-4805-04A493722B1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotate_Merged_Layer_inputBY";
	rename -uid "9EF6097A-4F79-7C4A-5E7E-788038AC95D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotate_Merged_Layer_inputBZ";
	rename -uid "9F00842B-4452-7058-FD71-FFA2C9141B59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateX_Merged_Layer_inputB";
	rename -uid "01846A77-4D34-75FB-C3F0-248161B0CB11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 6.5634113025587988 14 6.5634113025587988 15 6.5634113025587988
		 16 6.5634113025587988 17 6.5634113025587988 18 6.5634113025587988 19 6.5634113025587988
		 20 6.5634113025587988 21 6.5634113025587988 22 6.5634113025587988 23 6.5634113025587988
		 24 5.5378782865339913 25 3.2817056512793994 26 1.0255330160248066 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateY_Merged_Layer_inputB";
	rename -uid "13170436-4986-693E-F268-BC9978169990";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateZ_Merged_Layer_inputB";
	rename -uid "6EBFF40F-49CC-DE28-2E1B-A2975DBC1579";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0.85544481322101473 14 0.85544481322101473 15 0.85544481322101473
		 16 0.85544481322101473 17 0.85544481322101473 18 0.85544481322101473 19 0.85544481322101473
		 20 0.85544481322101473 21 0.85544481322101473 22 0.85544481322101473 23 0.85544481322101473
		 24 0.72178156115523184 25 0.42772240661050748 26 0.13366325206578311 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotate_Merged_Layer_inputBX";
	rename -uid "3EF66772-4633-20F6-47CA-0581A1AF4B65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotate_Merged_Layer_inputBY";
	rename -uid "E857285D-41F7-F259-494D-A196489FE305";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotate_Merged_Layer_inputBZ";
	rename -uid "443D07FC-4660-611A-C0BE-579A46D5E925";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateX_Merged_Layer_inputB";
	rename -uid "86355472-415E-5A6C-D827-37B87CAFD1BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -13.058701206290712 14 -13.058701206290712 15 -13.058701206290712
		 16 -13.058701206290712 17 -13.058701206290712 18 -13.058701206290712 19 -13.058701206290712
		 20 -13.058701206290712 21 -13.058701206290712 22 -13.058701206290712 23 -13.058701206290712
		 24 -11.018279142807797 25 -6.529350603145355 26 -2.0404220634829127 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateY_Merged_Layer_inputB";
	rename -uid "4394BD11-48BF-C71B-D221-E0AA14ADD1C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateZ_Merged_Layer_inputB";
	rename -uid "C5957A9B-489A-4D9F-D177-0C97CF50C8D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 4.84403946261454 14 4.84403946261454 15 4.84403946261454 16 4.84403946261454
		 17 4.84403946261454 18 4.84403946261454 19 4.84403946261454 20 4.84403946261454 21 4.84403946261454
		 22 4.84403946261454 23 4.84403946261454 24 4.0871582965810216 25 2.4220197313072696
		 26 0.75688116603351663 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0
		 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotate_Merged_Layer_inputBX";
	rename -uid "D4F797D4-4367-61A8-8B67-CEA31CBA93FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotate_Merged_Layer_inputBY";
	rename -uid "6B019EA1-4F2C-F79A-1693-639BC48F2C60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotate_Merged_Layer_inputBZ";
	rename -uid "551101BB-41D2-EF82-C9B0-EC8422539F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateX_Merged_Layer_inputB";
	rename -uid "AD11DE96-405C-289A-159F-84A47E16E8FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateY_Merged_Layer_inputB";
	rename -uid "A0B617BA-4A5E-2680-92A6-C6976AC49D70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateZ_Merged_Layer_inputB";
	rename -uid "22D4A612-49A9-B21B-2C63-CF91E29ABD32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotate_Merged_Layer_inputBX";
	rename -uid "7772B9C8-4EB2-EE62-6254-98A677C71E7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotate_Merged_Layer_inputBY";
	rename -uid "60FBE514-4672-59A9-73E3-27BAAB7AEC52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotate_Merged_Layer_inputBZ";
	rename -uid "6475976B-4D11-4DAC-25B0-B1AC9F823B3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateX_Merged_Layer_inputB";
	rename -uid "06A6A376-4C93-DB88-07E0-6A9E1BA1063F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateY_Merged_Layer_inputB";
	rename -uid "3F2882EB-4B6D-A550-ADB9-29B3809B9A58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateZ_Merged_Layer_inputB";
	rename -uid "E563761C-4FB4-5A5A-DB1F-26AA775D7973";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotate_Merged_Layer_inputBX";
	rename -uid "3A3245E4-464B-F405-DB4A-34AF2D5ADCAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotate_Merged_Layer_inputBY";
	rename -uid "FE6755FE-49E2-9B39-5995-D1869D9B0DDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotate_Merged_Layer_inputBZ";
	rename -uid "CB000888-45E9-DC9E-C517-86B12BFA2702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateX_Merged_Layer_inputB";
	rename -uid "F25641D1-4E01-7FD6-A340-87886F26A642";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateY_Merged_Layer_inputB";
	rename -uid "2A4C872C-49B1-D4C1-ECCC-D282994BC168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateZ_Merged_Layer_inputB";
	rename -uid "25396C75-4190-9D43-ED1C-BCA56CDDDED2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotate_Merged_Layer_inputBX";
	rename -uid "1A67F71E-4D61-492E-52B7-AD99A5A3D413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotate_Merged_Layer_inputBY";
	rename -uid "33AF7A35-4B4D-7589-05E4-2BBEAB0BCD80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotate_Merged_Layer_inputBZ";
	rename -uid "95B468FB-4A70-734F-A032-F6AA0DDF0279";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateX_Merged_Layer_inputB";
	rename -uid "C28B4242-4B66-CF62-46AD-648C051A5920";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateY_Merged_Layer_inputB";
	rename -uid "77BCA3D2-4727-4093-0B11-189E0EE073D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0.5703591154493729 11 1.1407182308987445 12 0.57035911544937345 13 0 14 0 15 0
		 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0
		 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateZ_Merged_Layer_inputB";
	rename -uid "D7590078-47E7-1033-40D5-AF8FE416313D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 -1.6852891641240508 11 -3.3705783282480977 12 -1.6852891641240524 13 0 14 0 15 0
		 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0
		 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotate_Merged_Layer_inputBX";
	rename -uid "066E99FC-4E62-E901-6F52-F2A0C9C3B38A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotate_Merged_Layer_inputBY";
	rename -uid "848EE6B4-4EAC-1321-F8FD-EC918ADBACE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotate_Merged_Layer_inputBZ";
	rename -uid "11C2BF00-47FF-1A3C-B0C3-549AAECD21A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateX_Merged_Layer_inputB";
	rename -uid "58443A8F-49D9-A6A0-79A7-18ADF2846333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateY_Merged_Layer_inputB";
	rename -uid "E707C377-48D8-A81E-60C8-0590585D7E86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateZ_Merged_Layer_inputB";
	rename -uid "9CEF740C-4EA3-300E-C6F3-F3A39BAFB198";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotate_Merged_Layer_inputBX";
	rename -uid "9FFBB3AE-49DB-A144-CD00-E5A123012340";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotate_Merged_Layer_inputBY";
	rename -uid "47DBD18A-4523-725E-1FBE-0196B0B6CFD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotate_Merged_Layer_inputBZ";
	rename -uid "9D2CB6D4-4F09-758E-59C2-46B827E4E725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateX_Merged_Layer_inputB";
	rename -uid "2C03BE82-4FDA-3A58-30EA-ABB3A30FC472";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateY_Merged_Layer_inputB";
	rename -uid "B4F5EB36-4679-4436-572A-33B3757F1308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateZ_Merged_Layer_inputB";
	rename -uid "77C455C5-449A-BE2F-DB28-CC8C66C2C98E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotate_Merged_Layer_inputBX";
	rename -uid "780A60E3-4535-03D2-3F29-D38E3CF1A275";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotate_Merged_Layer_inputBY";
	rename -uid "41E86112-4930-6C8F-F7D9-01800A61CC34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotate_Merged_Layer_inputBZ";
	rename -uid "D929A118-41F4-F2EC-0DB3-EE95F6A35C71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateX_Merged_Layer_inputB";
	rename -uid "923C13FC-4057-8909-7943-519B3F04BE33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateY_Merged_Layer_inputB";
	rename -uid "4A3F947F-427A-8F7C-02C3-55ABB41C44A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateZ_Merged_Layer_inputB";
	rename -uid "AACD1CCD-4EEA-45D8-E74A-56A738749FB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotate_Merged_Layer_inputBX";
	rename -uid "FADD75D7-4293-7DD3-1A61-C8851858D1DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotate_Merged_Layer_inputBY";
	rename -uid "FA6AA2CF-46EE-3B2D-1E4D-ACA6C9DFE1BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotate_Merged_Layer_inputBZ";
	rename -uid "55A07E34-4D1D-1060-F5CA-B78EC846390B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateX_Merged_Layer_inputB";
	rename -uid "D4902209-4AEB-68F4-C2E4-E2829F30ACF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateY_Merged_Layer_inputB";
	rename -uid "E186DE72-447F-71EC-D6F2-5C80D3494654";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateZ_Merged_Layer_inputB";
	rename -uid "CA45719E-415F-5D6F-B0FF-E8940773C849";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotate_Merged_Layer_inputBX";
	rename -uid "275C271D-49E5-8F4F-5302-E3A5D9162A4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotate_Merged_Layer_inputBY";
	rename -uid "771FF11B-498A-2779-0004-EBA28F8FBA86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotate_Merged_Layer_inputBZ";
	rename -uid "2B2EDAB7-4817-4D3A-5265-81BDC4909725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateX_Merged_Layer_inputB";
	rename -uid "218DA60C-43AB-3DA9-2233-0C89599AAE69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 5.1275065680079353 3 0 4 0 5 0
		 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0
		 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0
		 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateY_Merged_Layer_inputB";
	rename -uid "E7A42458-4080-67DE-81A4-868BE47BD743";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0.33562302373952585 3 0 4 0 5 0
		 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0
		 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0
		 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateZ_Merged_Layer_inputB";
	rename -uid "6B94AA7D-4DC2-0365-5440-D7AFA6FC2619";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 8.8431393563065566 3 0 4 0 5 0
		 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0
		 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0
		 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotate_Merged_Layer_inputBX";
	rename -uid "FE81B7D0-4C90-375D-AD80-B9A7EF6B85A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotate_Merged_Layer_inputBY";
	rename -uid "CB0B22FE-4370-F76B-8B3A-C085120E6EBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotate_Merged_Layer_inputBZ";
	rename -uid "76A4DBB5-4831-DF6C-0247-8684950838E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateX_Merged_Layer_inputB";
	rename -uid "8B553BC4-48C5-19C1-1996-89BDAFDC6EDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -6.0543394928963261 14 -6.0543394928963261 15 -6.0543394928963261
		 16 -6.0543394928963261 17 -6.0543394928963261 18 -6.0543394928963261 19 -6.0543394928963261
		 20 -6.0543394928963261 21 -6.0543394928963261 22 -6.0543394928963261 23 -6.0543394928963261
		 24 -5.1083489471312795 25 -3.0271697464481631 26 -0.94599054576504571 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateY_Merged_Layer_inputB";
	rename -uid "8AAE3B46-47B0-8910-53BE-A3B474C2A858";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateZ_Merged_Layer_inputB";
	rename -uid "019DBF53-49F4-1D23-F86D-16AF6DA9D1F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -2.0089214453341526 14 -2.0089214453341526 15 -2.0089214453341526
		 16 -2.0089214453341526 17 -2.0089214453341526 18 -2.0089214453341526 19 -2.0089214453341526
		 20 -2.0089214453341526 21 -2.0089214453341526 22 -2.0089214453341526 23 -2.0089214453341526
		 24 -1.6950274695006928 25 -1.0044607226670761 26 -0.31389397583345957 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotate_Merged_Layer_inputBX";
	rename -uid "379B94A9-4EDD-654F-CAD6-AB8FADB734A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotate_Merged_Layer_inputBY";
	rename -uid "A6213A4A-4542-B069-FB34-4781C48A8C52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotate_Merged_Layer_inputBZ";
	rename -uid "E90100F4-4EB4-7526-00F7-FEA79FA5982F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateX_Merged_Layer_inputB";
	rename -uid "A4F8B858-4280-96A3-637A-7EAD12831419";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 5.6078892641771096 14 5.6078892641771096 15 5.6078892641771096
		 16 5.6078892641771096 17 5.6078892641771096 18 5.6078892641771096 19 5.6078892641771096
		 20 5.6078892641771096 21 5.6078892641771096 22 5.6078892641771096 23 5.6078892641771096
		 24 4.7316565666494403 25 2.8039446320885544 26 0.87623269752766841 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateY_Merged_Layer_inputB";
	rename -uid "6511992A-419D-B909-B4DE-6384003EC300";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateZ_Merged_Layer_inputB";
	rename -uid "C8712FC2-4A76-3C28-BD07-57B073C6FC34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -6.5092545002054836 14 -6.5092545002054836 15 -6.5092545002054836
		 16 -6.5092545002054836 17 -6.5092545002054836 18 -6.5092545002054836 19 -6.5092545002054836
		 20 -6.5092545002054836 21 -6.5092545002054836 22 -6.5092545002054836 23 -6.5092545002054836
		 24 -5.4921834845483817 25 -3.2546272501027418 26 -1.017071015657101 27 0 28 0 29 0
		 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotate_Merged_Layer_inputBX";
	rename -uid "3B0DDED6-44A0-EF95-565C-958D19E3958A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotate_Merged_Layer_inputBY";
	rename -uid "41812766-42D2-BB23-49AD-8DACF8D25EF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotate_Merged_Layer_inputBZ";
	rename -uid "AB9C5770-42DE-5526-7496-279BE0F8B796";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateX_Merged_Layer_inputB";
	rename -uid "4DC438A4-4025-32E2-E675-898AC04F126D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateY_Merged_Layer_inputB";
	rename -uid "AA705A1F-4FB6-8F2C-AF2E-5E946EDFAB1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateZ_Merged_Layer_inputB";
	rename -uid "6E6F25BE-4F5A-8982-1AE7-8EB0C079EE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotate_Merged_Layer_inputBX";
	rename -uid "3949D7DE-443B-1E2A-A4E8-6599F2DB007F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotate_Merged_Layer_inputBY";
	rename -uid "1A5809CE-4D1B-64CE-3C1D-6CB67C693A26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotate_Merged_Layer_inputBZ";
	rename -uid "A70AE3ED-4FC3-B44B-DABB-0DB1B4461C95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateX_Merged_Layer_inputB";
	rename -uid "63DD31A4-4F29-954B-034F-2F9E1B26FA76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateY_Merged_Layer_inputB";
	rename -uid "8491CB37-4663-F580-D828-85956035AADA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateZ_Merged_Layer_inputB";
	rename -uid "A8D46F6E-4B40-DAD9-901F-318B484FB003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotate_Merged_Layer_inputBX";
	rename -uid "03E98750-4BB8-A033-B207-48981ADF8520";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotate_Merged_Layer_inputBY";
	rename -uid "542D9D2D-48CC-5B98-C10A-31A8DC8FA39C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotate_Merged_Layer_inputBZ";
	rename -uid "B1B05603-4849-304E-5219-65AC777F84C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateX_Merged_Layer_inputB";
	rename -uid "3E397FAA-4259-105B-7E78-D3BB65B7D4BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateY_Merged_Layer_inputB";
	rename -uid "7F95FACD-4F58-6364-18E9-7288BA4BFB33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0.57035911544937234 11 1.1407182308987434 12 0.5703591154493729 13 0 14 0 15 0
		 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0
		 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateZ_Merged_Layer_inputB";
	rename -uid "B047BDCE-49BB-9054-37F4-7496419B4E93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 -1.6852891641240508 11 -3.3705783282480981 12 -1.6852891641240524 13 0 14 0 15 0
		 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0
		 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotate_Merged_Layer_inputBX";
	rename -uid "6724179E-4B5B-68B5-E675-C89590087BC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotate_Merged_Layer_inputBY";
	rename -uid "5C5360AB-4903-12F5-D6DE-90BAE327E76E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotate_Merged_Layer_inputBZ";
	rename -uid "AF87ABB5-4630-63F0-D5C2-859F667310BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateX_Merged_Layer_inputB";
	rename -uid "C52D87D4-490A-5654-E4F7-8893111B8E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateY_Merged_Layer_inputB";
	rename -uid "E421AFD8-4031-CED1-683A-328F0D89BC59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateZ_Merged_Layer_inputB";
	rename -uid "0646F3F2-4A9A-D2F1-FD1A-B5A390D3E13C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0
		 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "Rig_Other_eye_type";
	rename -uid "CA2FBB96-4516-DE62-DD68-0F870401A0E4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 1 23 1 24 0 41 0;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode polyPlane -n "polyPlane1";
	rename -uid "FEFC7F41-4B04-D139-3B99-6884EF2ACB93";
	setAttr ".cuv" 2;
createNode animCurveTU -n "Rig_Other_sine_tre";
	rename -uid "0053906D-470B-A38B-3A43-2486498A1EF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "Rig_Other_sine_strength";
	rename -uid "6121FC42-4FF4-95B0-BBCB-89A67CE725C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "Rig_Other_color";
	rename -uid "1FE122B7-45BA-2B0F-89AF-C89D32AEB1DE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Rig_C_eye_ctrl_a_translateZ";
	rename -uid "F4104D83-4E47-7FC7-E16D-E883238CFC46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.4408920985006262e-15 41 -4.4408920985006262e-15;
createNode animCurveTA -n "Rig_C_eye_ctrl_a_rotateX";
	rename -uid "11DCD1E9-4ED8-D10E-20CA-7DB598CBE998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "Rig_C_eye_ctrl_b_rotateY";
	rename -uid "FDE408FE-4655-90BB-BBFA-95AEE5F7E88F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 26;
	setAttr -av -k on ".unw" 26;
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
	setAttr -s 18 ".st";
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
	setAttr -s 16 ".s";
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
	setAttr -s 276 ".u";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".r";
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
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
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
connectAttr "ab_rig_CRN.phl[3130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "ab_rig_CRN.phl[3131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "ab_rig_CRN.phl[3132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[788].dn"
		;
connectAttr "ab_rig_CRN.phl[3133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "ab_rig_CRN.phl[3134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "ab_rig_CRN.phl[3135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn"
		;
connectAttr "ab_rig_CRN.phl[3136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn"
		;
connectAttr "ab_rig_CRN.phl[3137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "ab_rig_CRN.phl[3138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "ab_rig_CRN.phl[3139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Rig_C_Root_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3140]"
		;
connectAttr "Rig_C_Root_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3141]"
		;
connectAttr "Rig_C_Root_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3142]"
		;
connectAttr "Rig_C_Root_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3143]"
		;
connectAttr "Rig_C_Root_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3144]"
		;
connectAttr "Rig_C_Root_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3145]"
		;
connectAttr "ab_rig_CRN.phl[3146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn"
		;
connectAttr "ab_rig_CRN.phl[3147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn"
		;
connectAttr "Rig_C_Root_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3148]"
		;
connectAttr "Rig_C_Root_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3149]"
		;
connectAttr "Rig_C_Root_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3150]"
		;
connectAttr "Rig_C_Root_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3151]"
		;
connectAttr "Rig_C_Root_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3152]"
		;
connectAttr "Rig_C_Root_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3153]"
		;
connectAttr "ab_rig_CRN.phl[3154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "Rig_C_body_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3155]"
		;
connectAttr "Rig_C_body_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3156]"
		;
connectAttr "Rig_C_body_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3157]"
		;
connectAttr "Rig_C_body_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3158]";
connectAttr "Rig_C_body_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3159]";
connectAttr "Rig_C_body_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3160]";
connectAttr "ab_rig_CRN.phl[3161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn"
		;
connectAttr "ab_rig_CRN.phl[3162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "ab_rig_CRN.phl[3163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "ab_rig_CRN.phl[3164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn"
		;
connectAttr "Rig_C_body_middle_option_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3165]"
		;
connectAttr "Rig_C_body_middle_option_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3166]"
		;
connectAttr "Rig_C_body_middle_option_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3167]"
		;
connectAttr "Rig_C_body_middle_option_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3168]"
		;
connectAttr "Rig_C_body_middle_option_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3169]"
		;
connectAttr "Rig_C_body_middle_option_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3170]"
		;
connectAttr "Rig_C_body_middle_option_scaleX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3171]"
		;
connectAttr "Rig_C_body_middle_option_scaleY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3172]"
		;
connectAttr "Rig_C_body_middle_option_scaleZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3173]"
		;
connectAttr "ab_rig_CRN.phl[3174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "ab_rig_CRN.phl[3175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn"
		;
connectAttr "ab_rig_CRN.phl[3176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "ab_rig_CRN.phl[3177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[847].dn"
		;
connectAttr "ab_rig_CRN.phl[3178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn"
		;
connectAttr "Rig_C_body_middle_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3179]"
		;
connectAttr "Rig_C_body_middle_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3180]"
		;
connectAttr "Rig_C_body_middle_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3181]"
		;
connectAttr "Rig_C_body_middle_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3182]"
		;
connectAttr "Rig_C_body_middle_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3183]"
		;
connectAttr "Rig_C_body_middle_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3184]"
		;
connectAttr "ab_rig_CRN.phl[3185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "ab_rig_CRN.phl[3186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn"
		;
connectAttr "ab_rig_CRN.phl[3187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "ab_rig_CRN.phl[3188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "ab_rig_CRN.phl[3189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn"
		;
connectAttr "ab_rig_CRN.phl[3190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Rig_C_body_middle_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3191]"
		;
connectAttr "Rig_C_body_middle_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3192]"
		;
connectAttr "Rig_C_body_middle_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3193]"
		;
connectAttr "Rig_C_body_middle_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3194]"
		;
connectAttr "Rig_C_body_middle_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3195]"
		;
connectAttr "Rig_C_body_middle_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3196]"
		;
connectAttr "ab_rig_CRN.phl[3197]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn"
		;
connectAttr "ab_rig_CRN.phl[3198]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "ab_rig_CRN.phl[3199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[611].dn"
		;
connectAttr "ab_rig_CRN.phl[3200]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn"
		;
connectAttr "ab_rig_CRN.phl[3201]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "ab_rig_CRN.phl[3202]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "ab_rig_CRN.phl[3203]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn"
		;
connectAttr "Rig_L_body_middle_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3204]"
		;
connectAttr "Rig_L_body_middle_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3205]"
		;
connectAttr "Rig_L_body_middle_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3206]"
		;
connectAttr "Rig_L_body_middle_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3207]"
		;
connectAttr "Rig_L_body_middle_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3208]"
		;
connectAttr "Rig_L_body_middle_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3209]"
		;
connectAttr "ab_rig_CRN.phl[3210]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn"
		;
connectAttr "ab_rig_CRN.phl[3211]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "ab_rig_CRN.phl[3212]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "ab_rig_CRN.phl[3213]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "ab_rig_CRN.phl[3214]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[584].dn"
		;
connectAttr "ab_rig_CRN.phl[3215]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Rig_L_body_middle_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3216]"
		;
connectAttr "Rig_L_body_middle_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3217]"
		;
connectAttr "Rig_L_body_middle_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3218]"
		;
connectAttr "Rig_L_body_middle_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3219]"
		;
connectAttr "Rig_L_body_middle_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3220]"
		;
connectAttr "Rig_L_body_middle_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3221]"
		;
connectAttr "ab_rig_CRN.phl[3222]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "ab_rig_CRN.phl[3223]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "ab_rig_CRN.phl[3224]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "ab_rig_CRN.phl[3225]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "ab_rig_CRN.phl[3226]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[861].dn"
		;
connectAttr "ab_rig_CRN.phl[3227]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Rig_L_body_middle_003_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3228]"
		;
connectAttr "Rig_L_body_middle_003_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3229]"
		;
connectAttr "Rig_L_body_middle_003_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3230]"
		;
connectAttr "Rig_L_body_middle_003_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3231]"
		;
connectAttr "Rig_L_body_middle_003_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3232]"
		;
connectAttr "Rig_L_body_middle_003_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3233]"
		;
connectAttr "ab_rig_CRN.phl[3234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn"
		;
connectAttr "ab_rig_CRN.phl[3235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "ab_rig_CRN.phl[3236]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn"
		;
connectAttr "ab_rig_CRN.phl[3237]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "ab_rig_CRN.phl[3238]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[856].dn"
		;
connectAttr "ab_rig_CRN.phl[3239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[837].dn"
		;
connectAttr "ab_rig_CRN.phl[3240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "Rig_R_body_middle_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3241]"
		;
connectAttr "Rig_R_body_middle_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3242]"
		;
connectAttr "Rig_R_body_middle_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3243]"
		;
connectAttr "Rig_R_body_middle_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3244]"
		;
connectAttr "Rig_R_body_middle_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3245]"
		;
connectAttr "Rig_R_body_middle_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3246]"
		;
connectAttr "ab_rig_CRN.phl[3247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "ab_rig_CRN.phl[3248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "ab_rig_CRN.phl[3249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "ab_rig_CRN.phl[3250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "ab_rig_CRN.phl[3251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn"
		;
connectAttr "ab_rig_CRN.phl[3252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "Rig_R_body_middle_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3253]"
		;
connectAttr "Rig_R_body_middle_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3254]"
		;
connectAttr "Rig_R_body_middle_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3255]"
		;
connectAttr "Rig_R_body_middle_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3256]"
		;
connectAttr "Rig_R_body_middle_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3257]"
		;
connectAttr "Rig_R_body_middle_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3258]"
		;
connectAttr "ab_rig_CRN.phl[3259]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn"
		;
connectAttr "ab_rig_CRN.phl[3260]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn"
		;
connectAttr "ab_rig_CRN.phl[3261]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn"
		;
connectAttr "ab_rig_CRN.phl[3262]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "ab_rig_CRN.phl[3263]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn"
		;
connectAttr "ab_rig_CRN.phl[3264]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Rig_R_body_middle_003_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3265]"
		;
connectAttr "Rig_R_body_middle_003_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3266]"
		;
connectAttr "Rig_R_body_middle_003_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3267]"
		;
connectAttr "Rig_R_body_middle_003_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3268]"
		;
connectAttr "Rig_R_body_middle_003_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3269]"
		;
connectAttr "Rig_R_body_middle_003_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3270]"
		;
connectAttr "ab_rig_CRN.phl[3271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "ab_rig_CRN.phl[3272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "ab_rig_CRN.phl[3273]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "ab_rig_CRN.phl[3274]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn"
		;
connectAttr "ab_rig_CRN.phl[3275]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn"
		;
connectAttr "ab_rig_CRN.phl[3276]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "Rig_C_body_under_option_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3277]"
		;
connectAttr "Rig_C_body_under_option_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3278]"
		;
connectAttr "Rig_C_body_under_option_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3279]"
		;
connectAttr "Rig_C_body_under_option_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3280]"
		;
connectAttr "Rig_C_body_under_option_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3281]"
		;
connectAttr "Rig_C_body_under_option_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3282]"
		;
connectAttr "Rig_C_body_under_option_scaleX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3283]"
		;
connectAttr "Rig_C_body_under_option_scaleY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3284]"
		;
connectAttr "Rig_C_body_under_option_scaleZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3285]"
		;
connectAttr "ab_rig_CRN.phl[3286]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "ab_rig_CRN.phl[3287]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn"
		;
connectAttr "ab_rig_CRN.phl[3288]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "ab_rig_CRN.phl[3289]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "ab_rig_CRN.phl[3290]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn"
		;
connectAttr "Rig_C_body_under_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3291]"
		;
connectAttr "Rig_C_body_under_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3292]"
		;
connectAttr "Rig_C_body_under_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3293]"
		;
connectAttr "Rig_C_body_under_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3294]"
		;
connectAttr "Rig_C_body_under_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3295]"
		;
connectAttr "Rig_C_body_under_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3296]"
		;
connectAttr "ab_rig_CRN.phl[3297]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "ab_rig_CRN.phl[3298]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn"
		;
connectAttr "ab_rig_CRN.phl[3299]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "ab_rig_CRN.phl[3300]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn"
		;
connectAttr "ab_rig_CRN.phl[3301]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "ab_rig_CRN.phl[3302]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[796].dn"
		;
connectAttr "Rig_C_body_under_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3303]"
		;
connectAttr "Rig_C_body_under_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3304]"
		;
connectAttr "Rig_C_body_under_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3305]"
		;
connectAttr "Rig_C_body_under_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3306]"
		;
connectAttr "Rig_C_body_under_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3307]"
		;
connectAttr "Rig_C_body_under_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3308]"
		;
connectAttr "ab_rig_CRN.phl[3309]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn"
		;
connectAttr "ab_rig_CRN.phl[3310]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "ab_rig_CRN.phl[3311]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "ab_rig_CRN.phl[3312]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "ab_rig_CRN.phl[3313]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn"
		;
connectAttr "ab_rig_CRN.phl[3314]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "ab_rig_CRN.phl[3315]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn"
		;
connectAttr "Rig_L_body_under_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3316]"
		;
connectAttr "Rig_L_body_under_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3317]"
		;
connectAttr "Rig_L_body_under_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3318]"
		;
connectAttr "Rig_L_body_under_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3319]"
		;
connectAttr "Rig_L_body_under_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3320]"
		;
connectAttr "Rig_L_body_under_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3321]"
		;
connectAttr "ab_rig_CRN.phl[3322]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn"
		;
connectAttr "ab_rig_CRN.phl[3323]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "ab_rig_CRN.phl[3324]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn"
		;
connectAttr "ab_rig_CRN.phl[3325]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn"
		;
connectAttr "ab_rig_CRN.phl[3326]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn"
		;
connectAttr "ab_rig_CRN.phl[3327]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Rig_L_body_under_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3328]"
		;
connectAttr "Rig_L_body_under_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3329]"
		;
connectAttr "Rig_L_body_under_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3330]"
		;
connectAttr "Rig_L_body_under_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3331]"
		;
connectAttr "Rig_L_body_under_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3332]"
		;
connectAttr "Rig_L_body_under_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3333]"
		;
connectAttr "ab_rig_CRN.phl[3334]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "ab_rig_CRN.phl[3335]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn"
		;
connectAttr "ab_rig_CRN.phl[3336]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "ab_rig_CRN.phl[3337]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "ab_rig_CRN.phl[3338]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn"
		;
connectAttr "ab_rig_CRN.phl[3339]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Rig_L_body_under_003_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3340]"
		;
connectAttr "Rig_L_body_under_003_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3341]"
		;
connectAttr "Rig_L_body_under_003_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3342]"
		;
connectAttr "Rig_L_body_under_003_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3343]"
		;
connectAttr "Rig_L_body_under_003_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3344]"
		;
connectAttr "Rig_L_body_under_003_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3345]"
		;
connectAttr "ab_rig_CRN.phl[3346]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "ab_rig_CRN.phl[3347]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn"
		;
connectAttr "ab_rig_CRN.phl[3348]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn"
		;
connectAttr "ab_rig_CRN.phl[3349]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn"
		;
connectAttr "ab_rig_CRN.phl[3350]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[633].dn"
		;
connectAttr "ab_rig_CRN.phl[3351]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "ab_rig_CRN.phl[3352]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "Rig_R_body_under_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3353]"
		;
connectAttr "Rig_R_body_under_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3354]"
		;
connectAttr "Rig_R_body_under_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3355]"
		;
connectAttr "Rig_R_body_under_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3356]"
		;
connectAttr "Rig_R_body_under_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3357]"
		;
connectAttr "Rig_R_body_under_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3358]"
		;
connectAttr "ab_rig_CRN.phl[3359]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[819].dn"
		;
connectAttr "ab_rig_CRN.phl[3360]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "ab_rig_CRN.phl[3361]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn"
		;
connectAttr "ab_rig_CRN.phl[3362]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn"
		;
connectAttr "ab_rig_CRN.phl[3363]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "ab_rig_CRN.phl[3364]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn"
		;
connectAttr "Rig_R_body_under_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3365]"
		;
connectAttr "Rig_R_body_under_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3366]"
		;
connectAttr "Rig_R_body_under_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3367]"
		;
connectAttr "Rig_R_body_under_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3368]"
		;
connectAttr "Rig_R_body_under_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3369]"
		;
connectAttr "Rig_R_body_under_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3370]"
		;
connectAttr "ab_rig_CRN.phl[3371]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[601].dn"
		;
connectAttr "ab_rig_CRN.phl[3372]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "ab_rig_CRN.phl[3373]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn"
		;
connectAttr "ab_rig_CRN.phl[3374]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "ab_rig_CRN.phl[3375]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "ab_rig_CRN.phl[3376]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Rig_R_body_under_003_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3377]"
		;
connectAttr "Rig_R_body_under_003_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3378]"
		;
connectAttr "Rig_R_body_under_003_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3379]"
		;
connectAttr "Rig_R_body_under_003_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3380]"
		;
connectAttr "Rig_R_body_under_003_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3381]"
		;
connectAttr "Rig_R_body_under_003_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3382]"
		;
connectAttr "ab_rig_CRN.phl[3383]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "ab_rig_CRN.phl[3384]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "ab_rig_CRN.phl[3385]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "ab_rig_CRN.phl[3386]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn"
		;
connectAttr "ab_rig_CRN.phl[3387]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "ab_rig_CRN.phl[3388]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Rig_C_body_under_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3389]"
		;
connectAttr "Rig_C_body_under_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3390]"
		;
connectAttr "Rig_C_body_under_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3391]"
		;
connectAttr "Rig_C_body_under_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3392]"
		;
connectAttr "Rig_C_body_under_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3393]"
		;
connectAttr "Rig_C_body_under_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3394]"
		;
connectAttr "ab_rig_CRN.phl[3395]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn"
		;
connectAttr "ab_rig_CRN.phl[3396]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[594].dn"
		;
connectAttr "ab_rig_CRN.phl[3397]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "ab_rig_CRN.phl[3398]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[857].dn"
		;
connectAttr "ab_rig_CRN.phl[3399]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "ab_rig_CRN.phl[3400]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "Rig_C_body_upper_option_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3401]"
		;
connectAttr "Rig_C_body_upper_option_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3402]"
		;
connectAttr "Rig_C_body_upper_option_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3403]"
		;
connectAttr "Rig_C_body_upper_option_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3404]"
		;
connectAttr "Rig_C_body_upper_option_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3405]"
		;
connectAttr "Rig_C_body_upper_option_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3406]"
		;
connectAttr "Rig_C_body_upper_option_scaleX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3407]"
		;
connectAttr "Rig_C_body_upper_option_scaleY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3408]"
		;
connectAttr "Rig_C_body_upper_option_scaleZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3409]"
		;
connectAttr "ab_rig_CRN.phl[3410]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "ab_rig_CRN.phl[3411]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "ab_rig_CRN.phl[3412]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[813].dn"
		;
connectAttr "ab_rig_CRN.phl[3413]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "ab_rig_CRN.phl[3414]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[776].dn"
		;
connectAttr "Rig_C_body_upper_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3415]"
		;
connectAttr "Rig_C_body_upper_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3416]"
		;
connectAttr "Rig_C_body_upper_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3417]"
		;
connectAttr "Rig_C_body_upper_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3418]"
		;
connectAttr "Rig_C_body_upper_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3419]"
		;
connectAttr "Rig_C_body_upper_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3420]"
		;
connectAttr "ab_rig_CRN.phl[3421]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[634].dn"
		;
connectAttr "ab_rig_CRN.phl[3422]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn"
		;
connectAttr "ab_rig_CRN.phl[3423]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "ab_rig_CRN.phl[3424]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "ab_rig_CRN.phl[3425]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[842].dn"
		;
connectAttr "ab_rig_CRN.phl[3426]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Rig_C_body_upper_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3427]"
		;
connectAttr "Rig_C_body_upper_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3428]"
		;
connectAttr "Rig_C_body_upper_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3429]"
		;
connectAttr "Rig_C_body_upper_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3430]"
		;
connectAttr "Rig_C_body_upper_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3431]"
		;
connectAttr "Rig_C_body_upper_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3432]"
		;
connectAttr "ab_rig_CRN.phl[3433]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "ab_rig_CRN.phl[3434]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[849].dn"
		;
connectAttr "ab_rig_CRN.phl[3435]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "ab_rig_CRN.phl[3436]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "ab_rig_CRN.phl[3437]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn"
		;
connectAttr "ab_rig_CRN.phl[3438]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[863].dn"
		;
connectAttr "ab_rig_CRN.phl[3439]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Rig_L_body_upper_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3440]"
		;
connectAttr "Rig_L_body_upper_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3441]"
		;
connectAttr "Rig_L_body_upper_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3442]"
		;
connectAttr "Rig_L_body_upper_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3443]"
		;
connectAttr "Rig_L_body_upper_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3444]"
		;
connectAttr "Rig_L_body_upper_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3445]"
		;
connectAttr "ab_rig_CRN.phl[3446]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "ab_rig_CRN.phl[3447]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "ab_rig_CRN.phl[3448]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "ab_rig_CRN.phl[3449]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "ab_rig_CRN.phl[3450]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "ab_rig_CRN.phl[3451]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn"
		;
connectAttr "Rig_L_body_upper_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3452]"
		;
connectAttr "Rig_L_body_upper_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3453]"
		;
connectAttr "Rig_L_body_upper_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3454]"
		;
connectAttr "Rig_L_body_upper_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3455]"
		;
connectAttr "Rig_L_body_upper_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3456]"
		;
connectAttr "Rig_L_body_upper_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3457]"
		;
connectAttr "ab_rig_CRN.phl[3458]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn"
		;
connectAttr "ab_rig_CRN.phl[3459]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[825].dn"
		;
connectAttr "ab_rig_CRN.phl[3460]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[855].dn"
		;
connectAttr "ab_rig_CRN.phl[3461]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "ab_rig_CRN.phl[3462]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[597].dn"
		;
connectAttr "ab_rig_CRN.phl[3463]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Rig_L_body_upper_003_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3464]"
		;
connectAttr "Rig_L_body_upper_003_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3465]"
		;
connectAttr "Rig_L_body_upper_003_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3466]"
		;
connectAttr "Rig_L_body_upper_003_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3467]"
		;
connectAttr "Rig_L_body_upper_003_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3468]"
		;
connectAttr "Rig_L_body_upper_003_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3469]"
		;
connectAttr "ab_rig_CRN.phl[3470]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "ab_rig_CRN.phl[3471]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn"
		;
connectAttr "ab_rig_CRN.phl[3472]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn"
		;
connectAttr "ab_rig_CRN.phl[3473]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn"
		;
connectAttr "ab_rig_CRN.phl[3474]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "ab_rig_CRN.phl[3475]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "ab_rig_CRN.phl[3476]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[867].dn"
		;
connectAttr "Rig_R_body_upper_001_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3477]"
		;
connectAttr "Rig_R_body_upper_001_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3478]"
		;
connectAttr "Rig_R_body_upper_001_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3479]"
		;
connectAttr "Rig_R_body_upper_001_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3480]"
		;
connectAttr "Rig_R_body_upper_001_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3481]"
		;
connectAttr "Rig_R_body_upper_001_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3482]"
		;
connectAttr "ab_rig_CRN.phl[3483]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "ab_rig_CRN.phl[3484]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "ab_rig_CRN.phl[3485]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "ab_rig_CRN.phl[3486]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "ab_rig_CRN.phl[3487]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn"
		;
connectAttr "ab_rig_CRN.phl[3488]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Rig_R_body_upper_002_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3489]"
		;
connectAttr "Rig_R_body_upper_002_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3490]"
		;
connectAttr "Rig_R_body_upper_002_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3491]"
		;
connectAttr "Rig_R_body_upper_002_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3492]"
		;
connectAttr "Rig_R_body_upper_002_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3493]"
		;
connectAttr "Rig_R_body_upper_002_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3494]"
		;
connectAttr "ab_rig_CRN.phl[3495]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn"
		;
connectAttr "ab_rig_CRN.phl[3496]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "ab_rig_CRN.phl[3497]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "ab_rig_CRN.phl[3498]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "ab_rig_CRN.phl[3499]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn"
		;
connectAttr "ab_rig_CRN.phl[3500]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Rig_R_body_upper_003_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3501]"
		;
connectAttr "Rig_R_body_upper_003_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3502]"
		;
connectAttr "Rig_R_body_upper_003_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3503]"
		;
connectAttr "Rig_R_body_upper_003_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3504]"
		;
connectAttr "Rig_R_body_upper_003_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3505]"
		;
connectAttr "Rig_R_body_upper_003_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3506]"
		;
connectAttr "ab_rig_CRN.phl[3507]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[775].dn"
		;
connectAttr "ab_rig_CRN.phl[3508]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[814].dn"
		;
connectAttr "ab_rig_CRN.phl[3509]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "ab_rig_CRN.phl[3510]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "ab_rig_CRN.phl[3511]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[784].dn"
		;
connectAttr "ab_rig_CRN.phl[3512]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn"
		;
connectAttr "Rig_C_body_upper_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3513]"
		;
connectAttr "Rig_C_body_upper_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3514]"
		;
connectAttr "Rig_C_body_upper_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3515]"
		;
connectAttr "Rig_C_body_upper_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3516]"
		;
connectAttr "Rig_C_body_upper_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3517]"
		;
connectAttr "Rig_C_body_upper_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3518]"
		;
connectAttr "ab_rig_CRN.phl[3519]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn"
		;
connectAttr "ab_rig_CRN.phl[3520]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn"
		;
connectAttr "ab_rig_CRN.phl[3521]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "ab_rig_CRN.phl[3522]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "ab_rig_CRN.phl[3523]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "ab_rig_CRN.phl[3524]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[865].dn"
		;
connectAttr "Rig_C_eye_ctrl_b_rotateY.o" "ab_rig_CRN.phl[3525]";
connectAttr "Rig_C_eye_ctrl_a_translateZ.o" "ab_rig_CRN.phl[3526]";
connectAttr "Rig_C_eye_ctrl_a_rotateX.o" "ab_rig_CRN.phl[3527]";
connectAttr "ab_rig_CRN.phl[3528]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "ab_rig_CRN.phl[3529]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Rig_C_eye_root_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3530]"
		;
connectAttr "Rig_C_eye_root_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3531]"
		;
connectAttr "Rig_C_eye_root_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3532]"
		;
connectAttr "Rig_C_eye_root_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3533]"
		;
connectAttr "Rig_C_eye_root_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3534]"
		;
connectAttr "Rig_C_eye_root_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3535]"
		;
connectAttr "Rig_C_eye_root_scaleX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3536]"
		;
connectAttr "Rig_C_eye_root_scaleY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3537]"
		;
connectAttr "Rig_C_eye_root_scaleZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3538]"
		;
connectAttr "ab_rig_CRN.phl[3539]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn"
		;
connectAttr "ab_rig_CRN.phl[3540]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn"
		;
connectAttr "ab_rig_CRN.phl[3541]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "ab_rig_CRN.phl[3542]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn"
		;
connectAttr "ab_rig_CRN.phl[3543]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn"
		;
connectAttr "ab_rig_CRN.phl[3544]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn"
		;
connectAttr "Rig_C_eye_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3545]";
connectAttr "Rig_C_eye_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3546]";
connectAttr "Rig_C_eye_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3547]";
connectAttr "Rig_C_eye_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3548]";
connectAttr "Rig_C_eye_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3549]";
connectAttr "Rig_C_eye_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3550]";
connectAttr "Rig_C_eye_scaleX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3551]";
connectAttr "Rig_C_eye_scaleY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3552]";
connectAttr "Rig_C_eye_scaleZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3553]";
connectAttr "ab_rig_CRN.phl[3554]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "ab_rig_CRN.phl[3555]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn"
		;
connectAttr "ab_rig_CRN.phl[3556]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn"
		;
connectAttr "ab_rig_CRN.phl[3557]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "ab_rig_CRN.phl[3558]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn"
		;
connectAttr "ab_rig_CRN.phl[3559]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn"
		;
connectAttr "Rig_C_eye_sub_under_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3560]"
		;
connectAttr "Rig_C_eye_sub_under_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3561]"
		;
connectAttr "Rig_C_eye_sub_under_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3562]"
		;
connectAttr "Rig_C_eye_sub_under_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3563]"
		;
connectAttr "Rig_C_eye_sub_under_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3564]"
		;
connectAttr "Rig_C_eye_sub_under_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3565]"
		;
connectAttr "ab_rig_CRN.phl[3566]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "ab_rig_CRN.phl[3567]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "ab_rig_CRN.phl[3568]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[607].dn"
		;
connectAttr "ab_rig_CRN.phl[3569]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "ab_rig_CRN.phl[3570]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "ab_rig_CRN.phl[3571]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[806].dn"
		;
connectAttr "Rig_C_eye_sub_upper_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3572]"
		;
connectAttr "Rig_C_eye_sub_upper_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3573]"
		;
connectAttr "Rig_C_eye_sub_upper_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3574]"
		;
connectAttr "Rig_C_eye_sub_upper_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3575]"
		;
connectAttr "Rig_C_eye_sub_upper_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3576]"
		;
connectAttr "Rig_C_eye_sub_upper_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3577]"
		;
connectAttr "ab_rig_CRN.phl[3578]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "ab_rig_CRN.phl[3579]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "ab_rig_CRN.phl[3580]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "ab_rig_CRN.phl[3581]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn"
		;
connectAttr "ab_rig_CRN.phl[3582]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[639].dn"
		;
connectAttr "ab_rig_CRN.phl[3583]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[844].dn"
		;
connectAttr "Rig_L_eye_sub_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3584]"
		;
connectAttr "Rig_L_eye_sub_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3585]"
		;
connectAttr "Rig_L_eye_sub_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3586]"
		;
connectAttr "Rig_L_eye_sub_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3587]"
		;
connectAttr "Rig_L_eye_sub_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3588]"
		;
connectAttr "Rig_L_eye_sub_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3589]"
		;
connectAttr "ab_rig_CRN.phl[3590]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn"
		;
connectAttr "ab_rig_CRN.phl[3591]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "ab_rig_CRN.phl[3592]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn"
		;
connectAttr "ab_rig_CRN.phl[3593]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[630].dn"
		;
connectAttr "ab_rig_CRN.phl[3594]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "ab_rig_CRN.phl[3595]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn"
		;
connectAttr "ab_rig_CRN.phl[3596]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Rig_R_eye_sub_translateX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3597]"
		;
connectAttr "Rig_R_eye_sub_translateY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3598]"
		;
connectAttr "Rig_R_eye_sub_translateZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[3599]"
		;
connectAttr "Rig_R_eye_sub_rotate_Merged_Layer_inputBX.o" "ab_rig_CRN.phl[3600]"
		;
connectAttr "Rig_R_eye_sub_rotate_Merged_Layer_inputBY.o" "ab_rig_CRN.phl[3601]"
		;
connectAttr "Rig_R_eye_sub_rotate_Merged_Layer_inputBZ.o" "ab_rig_CRN.phl[3602]"
		;
connectAttr "ab_rig_CRN.phl[3603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "ab_rig_CRN.phl[3604]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "ab_rig_CRN.phl[3605]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "ab_rig_CRN.phl[3606]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[820].dn"
		;
connectAttr "ab_rig_CRN.phl[3607]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "ab_rig_CRN.phl[3608]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "ab_rig_CRN.phl[3609]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "ab_rig_CRN.phl[3610]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn"
		;
connectAttr "ab_rig_CRN.phl[3611]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "ab_rig_CRN.phl[3612]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn"
		;
connectAttr "Rig_Other_sine_tre.o" "ab_rig_CRN.phl[3613]";
connectAttr "Rig_Other_sine_strength.o" "ab_rig_CRN.phl[3614]";
connectAttr "Rig_Other_eye_type.o" "ab_rig_CRN.phl[3615]";
connectAttr "Rig_Other_color.o" "ab_rig_CRN.phl[3616]";
connectAttr "ab_rig_CRN.phl[3617]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[783].dn"
		;
connectAttr "ab_rig_CRN.phl[3618]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "ab_rig_CRN.phl[3619]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn"
		;
connectAttr "ab_rig_CRN.phl[3620]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "ab_rig_CRN.phl[3621]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[576].dn"
		;
connectAttr "ab_rig_CRN.phl[3622]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "ab_rig_CRN.phl[3623]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[793].dn"
		;
connectAttr "ab_rig_CRN.phl[3624]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "ab_rig_CRN.phl[3625]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "ab_rig_CRN.phl[3626]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "ab_rig_CRN.phl[3627]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn"
		;
connectAttr "ab_rig_CRN.phl[3628]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn"
		;
connectAttr "ab_rig_CRN.phl[3629]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "ab_rig_CRN.phl[3630]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "ab_rig_CRN.phl[3631]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ab_rig_CRN.phl[3632]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[590].dn"
		;
connectAttr "ab_rig_CRN.phl[3633]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn"
		;
connectAttr "ab_rig_CRN.phl[3634]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[791].dn"
		;
connectAttr "ab_rig_CRN.phl[3635]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn"
		;
connectAttr "ab_rig_CRN.phl[3636]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "ab_rig_CRN.phl[3637]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "ab_rig_CRN.phl[3638]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[848].dn"
		;
connectAttr "ab_rig_CRN.phl[3639]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[836].dn"
		;
connectAttr "ab_rig_CRN.phl[3640]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[841].dn"
		;
connectAttr "ab_rig_CRN.phl[3641]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "ab_rig_CRN.phl[3642]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn"
		;
connectAttr "ab_rig_CRN.phl[3643]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn"
		;
connectAttr "ab_rig_CRN.phl[3644]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn"
		;
connectAttr "ab_rig_CRN.phl[3645]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "ab_rig_CRN.phl[3646]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "ab_rig_CRN.phl[3647]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[845].dn"
		;
connectAttr "ab_rig_CRN.phl[3648]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn"
		;
connectAttr "ab_rig_CRN.phl[3649]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[613].dn"
		;
connectAttr "ab_rig_CRN.phl[3650]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "ab_rig_CRN.phl[3651]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "ab_rig_CRN.phl[3652]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn"
		;
connectAttr "ab_rig_CRN.phl[3653]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "ab_rig_CRN.phl[3654]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "ab_rig_CRN.phl[3655]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn"
		;
connectAttr "ab_rig_CRN.phl[3656]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "ab_rig_CRN.phl[3657]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn"
		;
connectAttr "ab_rig_CRN.phl[3658]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn"
		;
connectAttr "ab_rig_CRN.phl[3659]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "ab_rig_CRN.phl[3660]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn"
		;
connectAttr "ab_rig_CRN.phl[3661]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "ab_rig_CRN.phl[3662]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn"
		;
connectAttr "ab_rig_CRN.phl[3663]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn"
		;
connectAttr "ab_rig_CRN.phl[3664]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[782].dn"
		;
connectAttr "ab_rig_CRN.phl[3665]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[579].dn"
		;
connectAttr "ab_rig_CRN.phl[3666]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "ab_rig_CRN.phl[3667]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "ab_rig_CRN.phl[3668]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "ab_rig_CRN.phl[3669]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[626].dn"
		;
connectAttr "ab_rig_CRN.phl[3670]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "ab_rig_CRN.phl[3671]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "ab_rig_CRN.phl[3672]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn"
		;
connectAttr "ab_rig_CRN.phl[3673]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn"
		;
connectAttr "ab_rig_CRN.phl[3674]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "ab_rig_CRN.phl[3675]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn"
		;
connectAttr "ab_rig_CRN.phl[3676]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "ab_rig_CRN.phl[3677]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[809].dn"
		;
connectAttr "ab_rig_CRN.phl[3678]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "ab_rig_CRN.phl[3679]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn"
		;
connectAttr "ab_rig_CRN.phl[3680]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "ab_rig_CRN.phl[3681]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "ab_rig_CRN.phl[3682]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "ab_rig_CRN.phl[3683]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn"
		;
connectAttr "ab_rig_CRN.phl[3684]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn"
		;
connectAttr "ab_rig_CRN.phl[3685]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "ab_rig_CRN.phl[3686]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "ab_rig_CRN.phl[3687]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn"
		;
connectAttr "ab_rig_CRN.phl[3688]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[801].dn"
		;
connectAttr "ab_rig_CRN.phl[3689]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "ab_rig_CRN.phl[3690]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[823].dn"
		;
connectAttr "ab_rig_CRN.phl[3691]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "ab_rig_CRN.phl[3692]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "ab_rig_CRN.phl[3693]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "ab_rig_CRN.phl[3694]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "ab_rig_CRN.phl[3695]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "ab_rig_CRN.phl[3696]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn"
		;
connectAttr "ab_rig_CRN.phl[3697]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "ab_rig_CRN.phl[3698]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[810].dn"
		;
connectAttr "ab_rig_CRN.phl[3699]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "ab_rig_CRN.phl[3700]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "ab_rig_CRN.phl[3701]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "ab_rig_CRN.phl[3702]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "ab_rig_CRN.phl[3703]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[817].dn"
		;
connectAttr "ab_rig_CRN.phl[3704]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[620].dn"
		;
connectAttr "ab_rig_CRN.phl[3705]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "ab_rig_CRN.phl[3706]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn"
		;
connectAttr "ab_rig_CRN.phl[3707]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn"
		;
connectAttr "ab_rig_CRN.phl[3708]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "ab_rig_CRN.phl[3709]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn"
		;
connectAttr "ab_rig_CRN.phl[3710]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "ab_rig_CRN.phl[3711]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "ab_rig_CRN.phl[3712]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn"
		;
connectAttr "ab_rig_CRN.phl[3713]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "ab_rig_CRN.phl[3714]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn"
		;
connectAttr "ab_rig_CRN.phl[3715]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn"
		;
connectAttr "ab_rig_CRN.phl[3716]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "ab_rig_CRN.phl[3717]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[852].dn"
		;
connectAttr "ab_rig_CRN.phl[3718]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn"
		;
connectAttr "ab_rig_CRN.phl[3719]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "ab_rig_CRN.phl[3720]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "ab_rig_CRN.phl[3721]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "ab_rig_CRN.phl[3722]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "ab_rig_CRN.phl[3723]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn"
		;
connectAttr "ab_rig_CRN.phl[3724]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "ab_rig_CRN.phl[3725]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "ab_rig_CRN.phl[3726]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "ab_rig_CRN.phl[3727]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "ab_rig_CRN.phl[3728]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "ab_rig_CRN.phl[3729]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[834].dn"
		;
connectAttr "ab_rig_CRN.phl[3730]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "ab_rig_CRN.phl[3731]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "ab_rig_CRN.phl[3732]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "ab_rig_CRN.phl[3733]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "ab_rig_CRN.phl[3734]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn"
		;
connectAttr "ab_rig_CRN.phl[3735]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[831].dn"
		;
connectAttr "ab_rig_CRN.phl[3736]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[815].dn"
		;
connectAttr "ab_rig_CRN.phl[3737]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn"
		;
connectAttr "ab_rig_CRN.phl[3738]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn"
		;
connectAttr "ab_rig_CRN.phl[3739]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "ab_rig_CRN.phl[3740]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn"
		;
connectAttr "ab_rig_CRN.phl[3741]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "ab_rig_CRN.phl[3742]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "ab_rig_CRN.phl[3743]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "ab_rig_CRN.phl[3744]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "ab_rig_CRN.phl[3745]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[799].dn"
		;
connectAttr "ab_rig_CRN.phl[3746]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "ab_rig_CRN.phl[3747]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn"
		;
connectAttr "ab_rig_CRN.phl[3748]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "ab_rig_CRN.phl[3749]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "ab_rig_CRN.phl[3750]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "ab_rig_CRN.phl[3751]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn"
		;
connectAttr "ab_rig_CRN.phl[3752]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn"
		;
connectAttr "ab_rig_CRN.phl[3753]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "ab_rig_CRN.phl[3754]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "ab_rig_CRN.phl[3755]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn"
		;
connectAttr "ab_rig_CRN.phl[3756]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn"
		;
connectAttr "ab_rig_CRN.phl[3757]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "ab_rig_CRN.phl[3758]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "ab_rig_CRN.phl[3759]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "ab_rig_CRN.phl[3760]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "ab_rig_CRN.phl[3761]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn"
		;
connectAttr "ab_rig_CRN.phl[3762]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn"
		;
connectAttr "ab_rig_CRN.phl[3763]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[795].dn"
		;
connectAttr "ab_rig_CRN.phl[3764]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "ab_rig_CRN.phl[3765]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "ab_rig_CRN.phl[3766]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "ab_rig_CRN.phl[3767]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn"
		;
connectAttr "ab_rig_CRN.phl[3768]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "ab_rig_CRN.phl[3769]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn"
		;
connectAttr "ab_rig_CRN.phl[3770]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "ab_rig_CRN.phl[3771]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[595].dn"
		;
connectAttr "ab_rig_CRN.phl[3772]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "ab_rig_CRN.phl[3773]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "ab_rig_CRN.phl[3774]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "ab_rig_CRN.phl[3775]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "ab_rig_CRN.phl[3776]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "ab_rig_CRN.phl[3777]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[800].dn"
		;
connectAttr "ab_rig_CRN.phl[3778]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[807].dn"
		;
connectAttr "ab_rig_CRN.phl[3779]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "ab_rig_CRN.phl[3780]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[772].dn"
		;
connectAttr "ab_rig_CRN.phl[3781]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn"
		;
connectAttr "ab_rig_CRN.phl[3782]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "ab_rig_CRN.phl[3783]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn"
		;
connectAttr "ab_rig_CRN.phl[3784]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn"
		;
connectAttr "ab_rig_CRN.phl[3785]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "ab_rig_CRN.phl[3786]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn"
		;
connectAttr "ab_rig_CRN.phl[3787]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "ab_rig_CRN.phl[3788]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn"
		;
connectAttr "ab_rig_CRN.phl[3789]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "ab_rig_CRN.phl[3790]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn"
		;
connectAttr "ab_rig_CRN.phl[3791]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[828].dn"
		;
connectAttr "ab_rig_CRN.phl[3792]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "ab_rig_CRN.phl[3793]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn"
		;
connectAttr "ab_rig_CRN.phl[3794]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[587].dn"
		;
connectAttr "ab_rig_CRN.phl[3795]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "ab_rig_CRN.phl[3796]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[573].dn"
		;
connectAttr "ab_rig_CRN.phl[3797]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "ab_rig_CRN.phl[3798]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "ab_rig_CRN.phl[3799]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "ab_rig_CRN.phl[3800]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[840].dn"
		;
connectAttr "ab_rig_CRN.phl[3801]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn"
		;
connectAttr "ab_rig_CRN.phl[3802]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "ab_rig_CRN.phl[3803]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[808].dn"
		;
connectAttr "ab_rig_CRN.phl[3804]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[767].dn"
		;
connectAttr "ab_rig_CRN.phl[3805]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[581].dn"
		;
connectAttr "ab_rig_CRN.phl[3806]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ab_rig_CRN.phl[3807]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "ab_rig_CRN.phl[3808]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "ab_rig_CRN.phl[3809]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[812].dn"
		;
connectAttr "ab_rig_CRN.phl[3810]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "ab_rig_CRN.phl[3811]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn"
		;
connectAttr "ab_rig_CRN.phl[3812]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "ab_rig_CRN.phl[3813]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn"
		;
connectAttr "ab_rig_CRN.phl[3814]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "ab_rig_CRN.phl[3815]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn"
		;
connectAttr "ab_rig_CRN.phl[3816]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "ab_rig_CRN.phl[3817]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn"
		;
connectAttr "ab_rig_CRN.phl[3818]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn"
		;
connectAttr "ab_rig_CRN.phl[3819]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "ab_rig_CRN.phl[3820]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[870].dn"
		;
connectAttr "ab_rig_CRN.phl[3821]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn"
		;
connectAttr "ab_rig_CRN.phl[3822]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn"
		;
connectAttr "ab_rig_CRN.phl[3823]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "ab_rig_CRN.phl[3824]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "ab_rig_CRN.phl[3825]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn"
		;
connectAttr "ab_rig_CRN.phl[3826]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[850].dn"
		;
connectAttr "ab_rig_CRN.phl[3827]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn"
		;
connectAttr "ab_rig_CRN.phl[3828]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn"
		;
connectAttr "ab_rig_CRN.phl[3829]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "ab_rig_CRN.phl[3830]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "ab_rig_CRN.phl[3831]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[785].dn"
		;
connectAttr "ab_rig_CRN.phl[3832]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "ab_rig_CRN.phl[3833]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[838].dn"
		;
connectAttr "ab_rig_CRN.phl[3834]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn"
		;
connectAttr "ab_rig_CRN.phl[3835]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn"
		;
connectAttr "ab_rig_CRN.phl[3836]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "ab_rig_CRN.phl[3837]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "ab_rig_CRN.phl[3838]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "ab_rig_CRN.phl[3839]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "ab_rig_CRN.phl[3840]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn"
		;
connectAttr "ab_rig_CRN.phl[3841]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn"
		;
connectAttr "ab_rig_CRN.phl[3842]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn"
		;
connectAttr "ab_rig_CRN.phl[3843]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "ab_rig_CRN.phl[3844]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn"
		;
connectAttr "ab_rig_CRN.phl[3845]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn"
		;
connectAttr "ab_rig_CRN.phl[3846]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn"
		;
connectAttr "ab_rig_CRN.phl[3847]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn"
		;
connectAttr "ab_rig_CRN.phl[3848]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[637].dn"
		;
connectAttr "ab_rig_CRN.phl[3849]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "ab_rig_CRN.phl[3850]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn"
		;
connectAttr "ab_rig_CRN.phl[3851]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "ab_rig_CRN.phl[3852]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn"
		;
connectAttr "ab_rig_CRN.phl[3853]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "ab_rig_CRN.phl[3854]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "ab_rig_CRN.phl[3855]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "ab_rig_CRN.phl[3856]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn"
		;
connectAttr "ab_rig_CRN.phl[3857]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "ab_rig_CRN.phl[3858]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[826].dn"
		;
connectAttr "ab_rig_CRN.phl[3859]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "ab_rig_CRN.phl[3860]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "ab_rig_CRN.phl[3861]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "ab_rig_CRN.phl[3862]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "ab_rig_CRN.phl[3863]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[636].dn"
		;
connectAttr "ab_rig_CRN.phl[3864]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[574].dn"
		;
connectAttr "ab_rig_CRN.phl[3865]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[781].dn"
		;
connectAttr "ab_rig_CRN.phl[3866]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn"
		;
connectAttr "ab_rig_CRN.phl[3867]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn"
		;
connectAttr "ab_rig_CRN.phl[3868]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn"
		;
connectAttr "ab_rig_CRN.phl[3869]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "ab_rig_CRN.phl[3870]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[833].dn"
		;
connectAttr "ab_rig_CRN.phl[3871]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "ab_rig_CRN.phl[3872]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn"
		;
connectAttr "ab_rig_CRN.phl[3873]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn"
		;
connectAttr "ab_rig_CRN.phl[3874]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "ab_rig_CRN.phl[3875]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "ab_rig_CRN.phl[3876]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "ab_rig_CRN.phl[3877]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "ab_rig_CRN.phl[3878]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "ab_rig_CRN.phl[3879]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "ab_rig_CRN.phl[3880]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn"
		;
connectAttr "ab_rig_CRN.phl[3881]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "ab_rig_CRN.phl[3882]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[638].dn"
		;
connectAttr "ab_rig_CRN.phl[3883]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "ab_rig_CRN.phl[3884]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn"
		;
connectAttr "ab_rig_CRN.phl[3885]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ab_rig_CRN.phl[3886]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[854].dn"
		;
connectAttr "ab_rig_CRN.phl[3887]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "ab_rig_CRN.phl[3888]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[615].dn"
		;
connectAttr "ab_rig_CRN.phl[3889]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "ab_rig_CRN.phl[3890]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[864].dn"
		;
connectAttr "ab_rig_CRN.phl[3891]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "ab_rig_CRN.phl[3892]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[860].dn"
		;
connectAttr "ab_rig_CRN.phl[3893]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn"
		;
connectAttr "ab_rig_CRN.phl[3894]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "ab_rig_CRN.phl[3895]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "ab_rig_CRN.phl[3896]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[592].dn"
		;
connectAttr "ab_rig_CRN.phl[3897]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "ab_rig_CRN.phl[3898]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "ab_rig_CRN.phl[3899]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "ab_rig_CRN.phl[3900]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[805].dn"
		;
connectAttr "ab_rig_CRN.phl[3901]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "ab_rig_CRN.phl[3902]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "ab_rig_CRN.phl[3903]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn"
		;
connectAttr "ab_rig_CRN.phl[3904]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn"
		;
connectAttr "ab_rig_CRN.phl[3905]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn"
		;
connectAttr "ab_rig_CRN.phl[3906]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn"
		;
connectAttr "ab_rig_CRN.phl[3907]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "ab_rig_CRN.phl[3908]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn"
		;
connectAttr "ab_rig_CRN.phl[3909]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn"
		;
connectAttr "ab_rig_CRN.phl[3910]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "ab_rig_CRN.phl[3911]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "ab_rig_CRN.phl[3912]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "ab_rig_CRN.phl[3913]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "ab_rig_CRN.phl[3914]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn"
		;
connectAttr "ab_rig_CRN.phl[3915]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "ab_rig_CRN.phl[3916]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "ab_rig_CRN.phl[3917]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "ab_rig_CRN.phl[3918]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn"
		;
connectAttr "ab_rig_CRN.phl[3919]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn"
		;
connectAttr "ab_rig_CRN.phl[3920]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "ab_rig_CRN.phl[3921]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[777].dn"
		;
connectAttr "ab_rig_CRN.phl[3922]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "ab_rig_CRN.phl[3923]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn"
		;
connectAttr "ab_rig_CRN.phl[3924]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "ab_rig_CRN.phl[3925]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn"
		;
connectAttr "ab_rig_CRN.phl[3926]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "ab_rig_CRN.phl[3927]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn"
		;
connectAttr "ab_rig_CRN.phl[3928]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[873].dn"
		;
connectAttr "ab_rig_CRN.phl[3929]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "ab_rig_CRN.phl[3930]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn"
		;
connectAttr "ab_rig_CRN.phl[3931]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "ab_rig_CRN.phl[3932]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[787].dn"
		;
connectAttr "ab_rig_CRN.phl[3933]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "ab_rig_CRN.phl[3934]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ab_rig_CRN.phl[3935]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn"
		;
connectAttr "ab_rig_CRN.phl[3936]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[827].dn"
		;
connectAttr "ab_rig_CRN.phl[3937]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[843].dn"
		;
connectAttr "ab_rig_CRN.phl[3938]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[624].dn"
		;
connectAttr "ab_rig_CRN.phl[3939]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn"
		;
connectAttr "ab_rig_CRN.phl[3940]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "ab_rig_CRN.phl[3941]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn"
		;
connectAttr "ab_rig_CRN.phl[3942]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "ab_rig_CRN.phl[3943]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[802].dn"
		;
connectAttr "ab_rig_CRN.phl[3944]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "ab_rig_CRN.phl[3945]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn"
		;
connectAttr "ab_rig_CRN.phl[3946]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "ab_rig_CRN.phl[3947]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "ab_rig_CRN.phl[3948]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn"
		;
connectAttr "ab_rig_CRN.phl[3949]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn"
		;
connectAttr "ab_rig_CRN.phl[3950]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "ab_rig_CRN.phl[3951]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn"
		;
connectAttr "ab_rig_CRN.phl[3952]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "ab_rig_CRN.phl[3953]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "ab_rig_CRN.phl[3954]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "ab_rig_CRN.phl[3955]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "ab_rig_CRN.phl[3956]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn"
		;
connectAttr "ab_rig_CRN.phl[3957]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "ab_rig_CRN.phl[3958]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "ab_rig_CRN.phl[3959]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn"
		;
connectAttr "ab_rig_CRN.phl[3960]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn"
		;
connectAttr "ab_rig_CRN.phl[3961]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn"
		;
connectAttr "ab_rig_CRN.phl[3962]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[789].dn"
		;
connectAttr "ab_rig_CRN.phl[3963]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "ab_rig_CRN.phl[3964]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "ab_rig_CRN.phl[3965]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn"
		;
connectAttr "ab_rig_CRN.phl[3966]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[866].dn"
		;
connectAttr "ab_rig_CRN.phl[3967]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[770].dn"
		;
connectAttr "ab_rig_CRN.phl[3968]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn"
		;
connectAttr "ab_rig_CRN.phl[3969]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "ab_rig_CRN.phl[3970]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "ab_rig_CRN.phl[3971]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "ab_rig_CRN.phl[3972]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn"
		;
connectAttr "ab_rig_CRN.phl[3973]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[773].dn"
		;
connectAttr "ab_rig_CRN.phl[3974]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "ab_rig_CRN.phl[3975]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "ab_rig_CRN.phl[3976]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "ab_rig_CRN.phl[3977]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "ab_rig_CRN.phl[3978]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn"
		;
connectAttr "layer1.di" "pPlane1.do";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Rig_C_body_scaleX_Merged_Layer_inputB.o" "ab_rig_CRN.phl[1000]";
connectAttr "Rig_C_body_scaleY_Merged_Layer_inputB.o" "ab_rig_CRN.phl[1001]";
connectAttr "Rig_C_body_scaleZ_Merged_Layer_inputB.o" "ab_rig_CRN.phl[1002]";
connectAttr "Rig_C_body_under_option_translateX1.o" "ab_rig_CRN.phl[3121]";
connectAttr "Rig_C_body_under_option_translateY1.o" "ab_rig_CRN.phl[3122]";
connectAttr "Rig_C_body_under_option_translateZ1.o" "ab_rig_CRN.phl[3123]";
connectAttr "Rig_C_body_under_option_rotateX1.o" "ab_rig_CRN.phl[3124]";
connectAttr "Rig_C_body_under_option_rotateY1.o" "ab_rig_CRN.phl[3125]";
connectAttr "Rig_C_body_under_option_rotateZ1.o" "ab_rig_CRN.phl[3126]";
connectAttr "Rig_C_body_under_option_scaleX1.o" "ab_rig_CRN.phl[3127]";
connectAttr "Rig_C_body_under_option_scaleY1.o" "ab_rig_CRN.phl[3128]";
connectAttr "Rig_C_body_under_option_scaleZ1.o" "ab_rig_CRN.phl[3129]";
connectAttr "sharedReferenceNode.sr" "ab_rig_CRN.sr";
connectAttr "ab_rig_CRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "ab_rig_CRN.phl[1763]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "ab_rig_CRN.phl[1460]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "ab_rig_CRN.phl[1458]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "ab_rig_CRN.phl[2973]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "pPlaneShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn";
connectAttr "polyPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn";
connectAttr "ab_rig_CRN.phl[1469]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Rig_C_body_under_option_translateX1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "sharedReferenceNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn";
connectAttr "ab_rig_CRN.phl[1457]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Rig_C_body_under_option_translateY1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "ab_rig_CRN.phl[1464]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "ab_rig_CRN.phl[2969]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Rig_C_body_under_option_scaleX1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "Rig_C_body_under_option_scaleZ1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn"
		;
connectAttr "ab_rig_CRN.phl[2971]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn"
		;
connectAttr "ab_rig_CRN.phl[1461]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn"
		;
connectAttr "pPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn";
connectAttr "Rig_C_body_under_option_scaleY1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "ab_rig_CRN.phl[1466]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn"
		;
connectAttr "ab_rig_CRN.phl[2967]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn"
		;
connectAttr "Rig_C_body_under_option_rotateY1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn"
		;
connectAttr "ab_rig_CRN.phl[1467]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn"
		;
connectAttr "ab_rig_CRN.phl[1463]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[786].dn"
		;
connectAttr "Rig_C_body_under_option_rotateZ1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[790].dn"
		;
connectAttr "Rig_C_body_under_option_rotateX1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[824].dn"
		;
connectAttr "Rig_C_body_under_option_translateZ1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[853].dn"
		;
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
// End of ab_rig_C_die.ma
