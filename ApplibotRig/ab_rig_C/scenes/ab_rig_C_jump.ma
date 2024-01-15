//Maya ASCII 2023 scene
//Name: ab_rig_C_jump.ma
//Last modified: Tue, Jan 09, 2024 12:44:45 PM
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
fileInfo "UUID" "330C681F-4ABC-6A57-395A-ACBE7C3BFD17";
createNode transform -s -n "persp";
	rename -uid "7759DF06-481A-4857-056A-BEB00A99E03E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 290.33762694229733 101.90292262280147 367.7444687614144 ;
	setAttr ".r" -type "double3" -8.1383527294099931 39.400000000010884 5.1449729741083197e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "40BDAFB0-4157-485C-1090-66926C8D93D1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".coi" 479.61015099920866;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 26.207415028523457 0 ;
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
	rename -uid "CAB84D23-42E0-F03E-A7AF-4CB0652ABBEB";
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
	rename -uid "8638EF6A-4D11-C8B2-9D24-AD8957B2F7E6";
	setAttr -s 18 ".lnk";
	setAttr -s 18 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E106A390-48C3-B1C7-C4D2-5BBFBF7A5CA5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D8670A76-4EBA-10D5-E5F5-559F189555C8";
createNode displayLayerManager -n "layerManager";
	rename -uid "2F27BDB0-4E8E-0608-478D-9780B2488F15";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "CB3A1F3F-4B28-EB98-5416-88B7BD41870C";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F89D4218-469F-7F38-8E01-849E2EB6B2C7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EFDBD9C1-4B9C-42DC-15D2-99B114EA4C8E";
	setAttr ".g" yes;
createNode reference -n "ab_rig_CRN";
	rename -uid "D928C65E-475C-E242-41E8-09977918DB4F";
	setAttr ".fn[0]" -type "string" "C:/Users/S15627/Desktop/ab_rig_C.ma";
	setAttr -s 877 ".phl";
	setAttr ".phl[150]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[1139]" 0;
	setAttr ".phl[1140]" 0;
	setAttr ".phl[1142]" 0;
	setAttr ".phl[1143]" 0;
	setAttr ".phl[1145]" 0;
	setAttr ".phl[1146]" 0;
	setAttr ".phl[1148]" 0;
	setAttr ".phl[1149]" 0;
	setAttr ".phl[1151]" 0;
	setAttr ".phl[1445]" 0;
	setAttr ".phl[2176]" 0;
	setAttr ".phl[2178]" 0;
	setAttr ".phl[2180]" 0;
	setAttr ".phl[2182]" 0;
	setAttr ".phl[2337]" 0;
	setAttr ".phl[2338]" 0;
	setAttr ".phl[2339]" 0;
	setAttr ".phl[2340]" 0;
	setAttr ".phl[2341]" 0;
	setAttr ".phl[2342]" 0;
	setAttr ".phl[2343]" 0;
	setAttr ".phl[2344]" 0;
	setAttr ".phl[2345]" 0;
	setAttr ".phl[2346]" 0;
	setAttr ".phl[2347]" 0;
	setAttr ".phl[2348]" 0;
	setAttr ".phl[2349]" 0;
	setAttr ".phl[2350]" 0;
	setAttr ".phl[2351]" 0;
	setAttr ".phl[2352]" 0;
	setAttr ".phl[2353]" 0;
	setAttr ".phl[2354]" 0;
	setAttr ".phl[2355]" 0;
	setAttr ".phl[2356]" 0;
	setAttr ".phl[2357]" 0;
	setAttr ".phl[2358]" 0;
	setAttr ".phl[2359]" 0;
	setAttr ".phl[2360]" 0;
	setAttr ".phl[2361]" 0;
	setAttr ".phl[2362]" 0;
	setAttr ".phl[2363]" 0;
	setAttr ".phl[2364]" 0;
	setAttr ".phl[2365]" 0;
	setAttr ".phl[2366]" 0;
	setAttr ".phl[2367]" 0;
	setAttr ".phl[2368]" 0;
	setAttr ".phl[2369]" 0;
	setAttr ".phl[2370]" 0;
	setAttr ".phl[2371]" 0;
	setAttr ".phl[2372]" 0;
	setAttr ".phl[2373]" 0;
	setAttr ".phl[2374]" 0;
	setAttr ".phl[2375]" 0;
	setAttr ".phl[2376]" 0;
	setAttr ".phl[2377]" 0;
	setAttr ".phl[2378]" 0;
	setAttr ".phl[2379]" 0;
	setAttr ".phl[2380]" 0;
	setAttr ".phl[2381]" 0;
	setAttr ".phl[2382]" 0;
	setAttr ".phl[2383]" 0;
	setAttr ".phl[2384]" 0;
	setAttr ".phl[2385]" 0;
	setAttr ".phl[2386]" 0;
	setAttr ".phl[2387]" 0;
	setAttr ".phl[2388]" 0;
	setAttr ".phl[2389]" 0;
	setAttr ".phl[2390]" 0;
	setAttr ".phl[2391]" 0;
	setAttr ".phl[2392]" 0;
	setAttr ".phl[2393]" 0;
	setAttr ".phl[2394]" 0;
	setAttr ".phl[2395]" 0;
	setAttr ".phl[2396]" 0;
	setAttr ".phl[2397]" 0;
	setAttr ".phl[2398]" 0;
	setAttr ".phl[2399]" 0;
	setAttr ".phl[2400]" 0;
	setAttr ".phl[2401]" 0;
	setAttr ".phl[2402]" 0;
	setAttr ".phl[2403]" 0;
	setAttr ".phl[2404]" 0;
	setAttr ".phl[2405]" 0;
	setAttr ".phl[2406]" 0;
	setAttr ".phl[2407]" 0;
	setAttr ".phl[2408]" 0;
	setAttr ".phl[2409]" 0;
	setAttr ".phl[2410]" 0;
	setAttr ".phl[2411]" 0;
	setAttr ".phl[2412]" 0;
	setAttr ".phl[2413]" 0;
	setAttr ".phl[2414]" 0;
	setAttr ".phl[2415]" 0;
	setAttr ".phl[2416]" 0;
	setAttr ".phl[2417]" 0;
	setAttr ".phl[2418]" 0;
	setAttr ".phl[2419]" 0;
	setAttr ".phl[2420]" 0;
	setAttr ".phl[2421]" 0;
	setAttr ".phl[2422]" 0;
	setAttr ".phl[2423]" 0;
	setAttr ".phl[2424]" 0;
	setAttr ".phl[2425]" 0;
	setAttr ".phl[2426]" 0;
	setAttr ".phl[2427]" 0;
	setAttr ".phl[2428]" 0;
	setAttr ".phl[2429]" 0;
	setAttr ".phl[2430]" 0;
	setAttr ".phl[2431]" 0;
	setAttr ".phl[2432]" 0;
	setAttr ".phl[2433]" 0;
	setAttr ".phl[2434]" 0;
	setAttr ".phl[2435]" 0;
	setAttr ".phl[2436]" 0;
	setAttr ".phl[2437]" 0;
	setAttr ".phl[2438]" 0;
	setAttr ".phl[2439]" 0;
	setAttr ".phl[2440]" 0;
	setAttr ".phl[2441]" 0;
	setAttr ".phl[2442]" 0;
	setAttr ".phl[2443]" 0;
	setAttr ".phl[2444]" 0;
	setAttr ".phl[2445]" 0;
	setAttr ".phl[2446]" 0;
	setAttr ".phl[2447]" 0;
	setAttr ".phl[2448]" 0;
	setAttr ".phl[2449]" 0;
	setAttr ".phl[2450]" 0;
	setAttr ".phl[2451]" 0;
	setAttr ".phl[2452]" 0;
	setAttr ".phl[2453]" 0;
	setAttr ".phl[2454]" 0;
	setAttr ".phl[2455]" 0;
	setAttr ".phl[2456]" 0;
	setAttr ".phl[2457]" 0;
	setAttr ".phl[2458]" 0;
	setAttr ".phl[2459]" 0;
	setAttr ".phl[2460]" 0;
	setAttr ".phl[2461]" 0;
	setAttr ".phl[2462]" 0;
	setAttr ".phl[2463]" 0;
	setAttr ".phl[2464]" 0;
	setAttr ".phl[2465]" 0;
	setAttr ".phl[2466]" 0;
	setAttr ".phl[2467]" 0;
	setAttr ".phl[2468]" 0;
	setAttr ".phl[2469]" 0;
	setAttr ".phl[2470]" 0;
	setAttr ".phl[2471]" 0;
	setAttr ".phl[2472]" 0;
	setAttr ".phl[2473]" 0;
	setAttr ".phl[2474]" 0;
	setAttr ".phl[2475]" 0;
	setAttr ".phl[2476]" 0;
	setAttr ".phl[2477]" 0;
	setAttr ".phl[2478]" 0;
	setAttr ".phl[2479]" 0;
	setAttr ".phl[2480]" 0;
	setAttr ".phl[2481]" 0;
	setAttr ".phl[2482]" 0;
	setAttr ".phl[2483]" 0;
	setAttr ".phl[2484]" 0;
	setAttr ".phl[2485]" 0;
	setAttr ".phl[2486]" 0;
	setAttr ".phl[2487]" 0;
	setAttr ".phl[2488]" 0;
	setAttr ".phl[2489]" 0;
	setAttr ".phl[2490]" 0;
	setAttr ".phl[2491]" 0;
	setAttr ".phl[2492]" 0;
	setAttr ".phl[2493]" 0;
	setAttr ".phl[2494]" 0;
	setAttr ".phl[2495]" 0;
	setAttr ".phl[2496]" 0;
	setAttr ".phl[2497]" 0;
	setAttr ".phl[2498]" 0;
	setAttr ".phl[2499]" 0;
	setAttr ".phl[2500]" 0;
	setAttr ".phl[2501]" 0;
	setAttr ".phl[2502]" 0;
	setAttr ".phl[2503]" 0;
	setAttr ".phl[2504]" 0;
	setAttr ".phl[2505]" 0;
	setAttr ".phl[2506]" 0;
	setAttr ".phl[2507]" 0;
	setAttr ".phl[2508]" 0;
	setAttr ".phl[2509]" 0;
	setAttr ".phl[2510]" 0;
	setAttr ".phl[2511]" 0;
	setAttr ".phl[2512]" 0;
	setAttr ".phl[2513]" 0;
	setAttr ".phl[2514]" 0;
	setAttr ".phl[2515]" 0;
	setAttr ".phl[2516]" 0;
	setAttr ".phl[2517]" 0;
	setAttr ".phl[2518]" 0;
	setAttr ".phl[2519]" 0;
	setAttr ".phl[2520]" 0;
	setAttr ".phl[2521]" 0;
	setAttr ".phl[2522]" 0;
	setAttr ".phl[2523]" 0;
	setAttr ".phl[2524]" 0;
	setAttr ".phl[2525]" 0;
	setAttr ".phl[2526]" 0;
	setAttr ".phl[2527]" 0;
	setAttr ".phl[2528]" 0;
	setAttr ".phl[2529]" 0;
	setAttr ".phl[2530]" 0;
	setAttr ".phl[2531]" 0;
	setAttr ".phl[2532]" 0;
	setAttr ".phl[2533]" 0;
	setAttr ".phl[2534]" 0;
	setAttr ".phl[2535]" 0;
	setAttr ".phl[2536]" 0;
	setAttr ".phl[2537]" 0;
	setAttr ".phl[2538]" 0;
	setAttr ".phl[2539]" 0;
	setAttr ".phl[2540]" 0;
	setAttr ".phl[2541]" 0;
	setAttr ".phl[2542]" 0;
	setAttr ".phl[2543]" 0;
	setAttr ".phl[2544]" 0;
	setAttr ".phl[2545]" 0;
	setAttr ".phl[2546]" 0;
	setAttr ".phl[2547]" 0;
	setAttr ".phl[2548]" 0;
	setAttr ".phl[2549]" 0;
	setAttr ".phl[2550]" 0;
	setAttr ".phl[2551]" 0;
	setAttr ".phl[2552]" 0;
	setAttr ".phl[2553]" 0;
	setAttr ".phl[2554]" 0;
	setAttr ".phl[2555]" 0;
	setAttr ".phl[2556]" 0;
	setAttr ".phl[2557]" 0;
	setAttr ".phl[2558]" 0;
	setAttr ".phl[2559]" 0;
	setAttr ".phl[2560]" 0;
	setAttr ".phl[2561]" 0;
	setAttr ".phl[2562]" 0;
	setAttr ".phl[2563]" 0;
	setAttr ".phl[2564]" 0;
	setAttr ".phl[2565]" 0;
	setAttr ".phl[2566]" 0;
	setAttr ".phl[2567]" 0;
	setAttr ".phl[2568]" 0;
	setAttr ".phl[2569]" 0;
	setAttr ".phl[2570]" 0;
	setAttr ".phl[2571]" 0;
	setAttr ".phl[2572]" 0;
	setAttr ".phl[2573]" 0;
	setAttr ".phl[2574]" 0;
	setAttr ".phl[2575]" 0;
	setAttr ".phl[2576]" 0;
	setAttr ".phl[2577]" 0;
	setAttr ".phl[2578]" 0;
	setAttr ".phl[2579]" 0;
	setAttr ".phl[2580]" 0;
	setAttr ".phl[2581]" 0;
	setAttr ".phl[2582]" 0;
	setAttr ".phl[2583]" 0;
	setAttr ".phl[2584]" 0;
	setAttr ".phl[2585]" 0;
	setAttr ".phl[2586]" 0;
	setAttr ".phl[2587]" 0;
	setAttr ".phl[2588]" 0;
	setAttr ".phl[2589]" 0;
	setAttr ".phl[2590]" 0;
	setAttr ".phl[2591]" 0;
	setAttr ".phl[2592]" 0;
	setAttr ".phl[2593]" 0;
	setAttr ".phl[2594]" 0;
	setAttr ".phl[2595]" 0;
	setAttr ".phl[2596]" 0;
	setAttr ".phl[2597]" 0;
	setAttr ".phl[2598]" 0;
	setAttr ".phl[2599]" 0;
	setAttr ".phl[2600]" 0;
	setAttr ".phl[2601]" 0;
	setAttr ".phl[2602]" 0;
	setAttr ".phl[2603]" 0;
	setAttr ".phl[2604]" 0;
	setAttr ".phl[2605]" 0;
	setAttr ".phl[2606]" 0;
	setAttr ".phl[2607]" 0;
	setAttr ".phl[2608]" 0;
	setAttr ".phl[2609]" 0;
	setAttr ".phl[2610]" 0;
	setAttr ".phl[2611]" 0;
	setAttr ".phl[2612]" 0;
	setAttr ".phl[2613]" 0;
	setAttr ".phl[2614]" 0;
	setAttr ".phl[2615]" 0;
	setAttr ".phl[2616]" 0;
	setAttr ".phl[2617]" 0;
	setAttr ".phl[2618]" 0;
	setAttr ".phl[2619]" 0;
	setAttr ".phl[2620]" 0;
	setAttr ".phl[2621]" 0;
	setAttr ".phl[2622]" 0;
	setAttr ".phl[2623]" 0;
	setAttr ".phl[2624]" 0;
	setAttr ".phl[2625]" 0;
	setAttr ".phl[2626]" 0;
	setAttr ".phl[2627]" 0;
	setAttr ".phl[2628]" 0;
	setAttr ".phl[2629]" 0;
	setAttr ".phl[2630]" 0;
	setAttr ".phl[2631]" 0;
	setAttr ".phl[2632]" 0;
	setAttr ".phl[2633]" 0;
	setAttr ".phl[2634]" 0;
	setAttr ".phl[2635]" 0;
	setAttr ".phl[2636]" 0;
	setAttr ".phl[2637]" 0;
	setAttr ".phl[2638]" 0;
	setAttr ".phl[2639]" 0;
	setAttr ".phl[2640]" 0;
	setAttr ".phl[2641]" 0;
	setAttr ".phl[2642]" 0;
	setAttr ".phl[2643]" 0;
	setAttr ".phl[2644]" 0;
	setAttr ".phl[2645]" 0;
	setAttr ".phl[2646]" 0;
	setAttr ".phl[2647]" 0;
	setAttr ".phl[2648]" 0;
	setAttr ".phl[2649]" 0;
	setAttr ".phl[2650]" 0;
	setAttr ".phl[2651]" 0;
	setAttr ".phl[2652]" 0;
	setAttr ".phl[2653]" 0;
	setAttr ".phl[2654]" 0;
	setAttr ".phl[2655]" 0;
	setAttr ".phl[2656]" 0;
	setAttr ".phl[2657]" 0;
	setAttr ".phl[2658]" 0;
	setAttr ".phl[2659]" 0;
	setAttr ".phl[2660]" 0;
	setAttr ".phl[2661]" 0;
	setAttr ".phl[2662]" 0;
	setAttr ".phl[2663]" 0;
	setAttr ".phl[2664]" 0;
	setAttr ".phl[2665]" 0;
	setAttr ".phl[2666]" 0;
	setAttr ".phl[2667]" 0;
	setAttr ".phl[2668]" 0;
	setAttr ".phl[2669]" 0;
	setAttr ".phl[2670]" 0;
	setAttr ".phl[2671]" 0;
	setAttr ".phl[2672]" 0;
	setAttr ".phl[2673]" 0;
	setAttr ".phl[2674]" 0;
	setAttr ".phl[2675]" 0;
	setAttr ".phl[2676]" 0;
	setAttr ".phl[2677]" 0;
	setAttr ".phl[2678]" 0;
	setAttr ".phl[2679]" 0;
	setAttr ".phl[2680]" 0;
	setAttr ".phl[2681]" 0;
	setAttr ".phl[2682]" 0;
	setAttr ".phl[2683]" 0;
	setAttr ".phl[2684]" 0;
	setAttr ".phl[2685]" 0;
	setAttr ".phl[2686]" 0;
	setAttr ".phl[2687]" 0;
	setAttr ".phl[2688]" 0;
	setAttr ".phl[2689]" 0;
	setAttr ".phl[2690]" 0;
	setAttr ".phl[2691]" 0;
	setAttr ".phl[2692]" 0;
	setAttr ".phl[2693]" 0;
	setAttr ".phl[2694]" 0;
	setAttr ".phl[2695]" 0;
	setAttr ".phl[2696]" 0;
	setAttr ".phl[2697]" 0;
	setAttr ".phl[2698]" 0;
	setAttr ".phl[2699]" 0;
	setAttr ".phl[2700]" 0;
	setAttr ".phl[2701]" 0;
	setAttr ".phl[2702]" 0;
	setAttr ".phl[2703]" 0;
	setAttr ".phl[2704]" 0;
	setAttr ".phl[2705]" 0;
	setAttr ".phl[2706]" 0;
	setAttr ".phl[2707]" 0;
	setAttr ".phl[2708]" 0;
	setAttr ".phl[2709]" 0;
	setAttr ".phl[2710]" 0;
	setAttr ".phl[2711]" 0;
	setAttr ".phl[2712]" 0;
	setAttr ".phl[2713]" 0;
	setAttr ".phl[2714]" 0;
	setAttr ".phl[2715]" 0;
	setAttr ".phl[2716]" 0;
	setAttr ".phl[2717]" 0;
	setAttr ".phl[2718]" 0;
	setAttr ".phl[2719]" 0;
	setAttr ".phl[2720]" 0;
	setAttr ".phl[2721]" 0;
	setAttr ".phl[2722]" 0;
	setAttr ".phl[2723]" 0;
	setAttr ".phl[2724]" 0;
	setAttr ".phl[2725]" 0;
	setAttr ".phl[2726]" 0;
	setAttr ".phl[2727]" 0;
	setAttr ".phl[2728]" 0;
	setAttr ".phl[2729]" 0;
	setAttr ".phl[2730]" 0;
	setAttr ".phl[2731]" 0;
	setAttr ".phl[2732]" 0;
	setAttr ".phl[2733]" 0;
	setAttr ".phl[2734]" 0;
	setAttr ".phl[2735]" 0;
	setAttr ".phl[2736]" 0;
	setAttr ".phl[2737]" 0;
	setAttr ".phl[2738]" 0;
	setAttr ".phl[2739]" 0;
	setAttr ".phl[2740]" 0;
	setAttr ".phl[2741]" 0;
	setAttr ".phl[2742]" 0;
	setAttr ".phl[2743]" 0;
	setAttr ".phl[2744]" 0;
	setAttr ".phl[2745]" 0;
	setAttr ".phl[2746]" 0;
	setAttr ".phl[2747]" 0;
	setAttr ".phl[2748]" 0;
	setAttr ".phl[2749]" 0;
	setAttr ".phl[2750]" 0;
	setAttr ".phl[2751]" 0;
	setAttr ".phl[2752]" 0;
	setAttr ".phl[2753]" 0;
	setAttr ".phl[2754]" 0;
	setAttr ".phl[2755]" 0;
	setAttr ".phl[2756]" 0;
	setAttr ".phl[2757]" 0;
	setAttr ".phl[2758]" 0;
	setAttr ".phl[2759]" 0;
	setAttr ".phl[2760]" 0;
	setAttr ".phl[2761]" 0;
	setAttr ".phl[2762]" 0;
	setAttr ".phl[2763]" 0;
	setAttr ".phl[2764]" 0;
	setAttr ".phl[2765]" 0;
	setAttr ".phl[2766]" 0;
	setAttr ".phl[2767]" 0;
	setAttr ".phl[2768]" 0;
	setAttr ".phl[2769]" 0;
	setAttr ".phl[2770]" 0;
	setAttr ".phl[2771]" 0;
	setAttr ".phl[2772]" 0;
	setAttr ".phl[2773]" 0;
	setAttr ".phl[2774]" 0;
	setAttr ".phl[2775]" 0;
	setAttr ".phl[2776]" 0;
	setAttr ".phl[2777]" 0;
	setAttr ".phl[2778]" 0;
	setAttr ".phl[2779]" 0;
	setAttr ".phl[2780]" 0;
	setAttr ".phl[2781]" 0;
	setAttr ".phl[2782]" 0;
	setAttr ".phl[2783]" 0;
	setAttr ".phl[2784]" 0;
	setAttr ".phl[2785]" 0;
	setAttr ".phl[2786]" 0;
	setAttr ".phl[2787]" 0;
	setAttr ".phl[2788]" 0;
	setAttr ".phl[2789]" 0;
	setAttr ".phl[2790]" 0;
	setAttr ".phl[2791]" 0;
	setAttr ".phl[2792]" 0;
	setAttr ".phl[2793]" 0;
	setAttr ".phl[2794]" 0;
	setAttr ".phl[2795]" 0;
	setAttr ".phl[2796]" 0;
	setAttr ".phl[2797]" 0;
	setAttr ".phl[2798]" 0;
	setAttr ".phl[2799]" 0;
	setAttr ".phl[2800]" 0;
	setAttr ".phl[2801]" 0;
	setAttr ".phl[2802]" 0;
	setAttr ".phl[2803]" 0;
	setAttr ".phl[2804]" 0;
	setAttr ".phl[2805]" 0;
	setAttr ".phl[2806]" 0;
	setAttr ".phl[2807]" 0;
	setAttr ".phl[2808]" 0;
	setAttr ".phl[2809]" 0;
	setAttr ".phl[2810]" 0;
	setAttr ".phl[2811]" 0;
	setAttr ".phl[2812]" 0;
	setAttr ".phl[2813]" 0;
	setAttr ".phl[2814]" 0;
	setAttr ".phl[2815]" 0;
	setAttr ".phl[2816]" 0;
	setAttr ".phl[2817]" 0;
	setAttr ".phl[2818]" 0;
	setAttr ".phl[2819]" 0;
	setAttr ".phl[2820]" 0;
	setAttr ".phl[2821]" 0;
	setAttr ".phl[2822]" 0;
	setAttr ".phl[2823]" 0;
	setAttr ".phl[2824]" 0;
	setAttr ".phl[2825]" 0;
	setAttr ".phl[2826]" 0;
	setAttr ".phl[2827]" 0;
	setAttr ".phl[2828]" 0;
	setAttr ".phl[2829]" 0;
	setAttr ".phl[2830]" 0;
	setAttr ".phl[2831]" 0;
	setAttr ".phl[2832]" 0;
	setAttr ".phl[2833]" 0;
	setAttr ".phl[2834]" 0;
	setAttr ".phl[2835]" 0;
	setAttr ".phl[2836]" 0;
	setAttr ".phl[2837]" 0;
	setAttr ".phl[2838]" 0;
	setAttr ".phl[2839]" 0;
	setAttr ".phl[2840]" 0;
	setAttr ".phl[2841]" 0;
	setAttr ".phl[2842]" 0;
	setAttr ".phl[2843]" 0;
	setAttr ".phl[2844]" 0;
	setAttr ".phl[2845]" 0;
	setAttr ".phl[2846]" 0;
	setAttr ".phl[2847]" 0;
	setAttr ".phl[2848]" 0;
	setAttr ".phl[2849]" 0;
	setAttr ".phl[2850]" 0;
	setAttr ".phl[2851]" 0;
	setAttr ".phl[2852]" 0;
	setAttr ".phl[2853]" 0;
	setAttr ".phl[2854]" 0;
	setAttr ".phl[2855]" 0;
	setAttr ".phl[2856]" 0;
	setAttr ".phl[2857]" 0;
	setAttr ".phl[2858]" 0;
	setAttr ".phl[2859]" 0;
	setAttr ".phl[2860]" 0;
	setAttr ".phl[2861]" 0;
	setAttr ".phl[2862]" 0;
	setAttr ".phl[2863]" 0;
	setAttr ".phl[2864]" 0;
	setAttr ".phl[2865]" 0;
	setAttr ".phl[2866]" 0;
	setAttr ".phl[2867]" 0;
	setAttr ".phl[2868]" 0;
	setAttr ".phl[2869]" 0;
	setAttr ".phl[2870]" 0;
	setAttr ".phl[2871]" 0;
	setAttr ".phl[2872]" 0;
	setAttr ".phl[2873]" 0;
	setAttr ".phl[2874]" 0;
	setAttr ".phl[2875]" 0;
	setAttr ".phl[2876]" 0;
	setAttr ".phl[2877]" 0;
	setAttr ".phl[2878]" 0;
	setAttr ".phl[2879]" 0;
	setAttr ".phl[2880]" 0;
	setAttr ".phl[2881]" 0;
	setAttr ".phl[2882]" 0;
	setAttr ".phl[2883]" 0;
	setAttr ".phl[2884]" 0;
	setAttr ".phl[2885]" 0;
	setAttr ".phl[2886]" 0;
	setAttr ".phl[2887]" 0;
	setAttr ".phl[2888]" 0;
	setAttr ".phl[2889]" 0;
	setAttr ".phl[2890]" 0;
	setAttr ".phl[2891]" 0;
	setAttr ".phl[2892]" 0;
	setAttr ".phl[2893]" 0;
	setAttr ".phl[2894]" 0;
	setAttr ".phl[2895]" 0;
	setAttr ".phl[2896]" 0;
	setAttr ".phl[2897]" 0;
	setAttr ".phl[2898]" 0;
	setAttr ".phl[2899]" 0;
	setAttr ".phl[2900]" 0;
	setAttr ".phl[2901]" 0;
	setAttr ".phl[2902]" 0;
	setAttr ".phl[2903]" 0;
	setAttr ".phl[2904]" 0;
	setAttr ".phl[2905]" 0;
	setAttr ".phl[2906]" 0;
	setAttr ".phl[2907]" 0;
	setAttr ".phl[2908]" 0;
	setAttr ".phl[2909]" 0;
	setAttr ".phl[2910]" 0;
	setAttr ".phl[2911]" 0;
	setAttr ".phl[2912]" 0;
	setAttr ".phl[2913]" 0;
	setAttr ".phl[2914]" 0;
	setAttr ".phl[2915]" 0;
	setAttr ".phl[2916]" 0;
	setAttr ".phl[2917]" 0;
	setAttr ".phl[2918]" 0;
	setAttr ".phl[2919]" 0;
	setAttr ".phl[2920]" 0;
	setAttr ".phl[2921]" 0;
	setAttr ".phl[2922]" 0;
	setAttr ".phl[2923]" 0;
	setAttr ".phl[2924]" 0;
	setAttr ".phl[2925]" 0;
	setAttr ".phl[2926]" 0;
	setAttr ".phl[2927]" 0;
	setAttr ".phl[2928]" 0;
	setAttr ".phl[2929]" 0;
	setAttr ".phl[2930]" 0;
	setAttr ".phl[2931]" 0;
	setAttr ".phl[2932]" 0;
	setAttr ".phl[2933]" 0;
	setAttr ".phl[2934]" 0;
	setAttr ".phl[2935]" 0;
	setAttr ".phl[2936]" 0;
	setAttr ".phl[2937]" 0;
	setAttr ".phl[2938]" 0;
	setAttr ".phl[2939]" 0;
	setAttr ".phl[2940]" 0;
	setAttr ".phl[2941]" 0;
	setAttr ".phl[2942]" 0;
	setAttr ".phl[2943]" 0;
	setAttr ".phl[2944]" 0;
	setAttr ".phl[2945]" 0;
	setAttr ".phl[2946]" 0;
	setAttr ".phl[2947]" 0;
	setAttr ".phl[2948]" 0;
	setAttr ".phl[2949]" 0;
	setAttr ".phl[2950]" 0;
	setAttr ".phl[2951]" 0;
	setAttr ".phl[2952]" 0;
	setAttr ".phl[2953]" 0;
	setAttr ".phl[2954]" 0;
	setAttr ".phl[2955]" 0;
	setAttr ".phl[2956]" 0;
	setAttr ".phl[2957]" 0;
	setAttr ".phl[2958]" 0;
	setAttr ".phl[2959]" 0;
	setAttr ".phl[2960]" 0;
	setAttr ".phl[2961]" 0;
	setAttr ".phl[2962]" 0;
	setAttr ".phl[2963]" 0;
	setAttr ".phl[2964]" 0;
	setAttr ".phl[2965]" 0;
	setAttr ".phl[2966]" 0;
	setAttr ".phl[2967]" 0;
	setAttr ".phl[2968]" 0;
	setAttr ".phl[2969]" 0;
	setAttr ".phl[2970]" 0;
	setAttr ".phl[2971]" 0;
	setAttr ".phl[2972]" 0;
	setAttr ".phl[2973]" 0;
	setAttr ".phl[2974]" 0;
	setAttr ".phl[2975]" 0;
	setAttr ".phl[2976]" 0;
	setAttr ".phl[2977]" 0;
	setAttr ".phl[2978]" 0;
	setAttr ".phl[2979]" 0;
	setAttr ".phl[2980]" 0;
	setAttr ".phl[2981]" 0;
	setAttr ".phl[2982]" 0;
	setAttr ".phl[2983]" 0;
	setAttr ".phl[2984]" 0;
	setAttr ".phl[2985]" 0;
	setAttr ".phl[2986]" 0;
	setAttr ".phl[2987]" 0;
	setAttr ".phl[2988]" 0;
	setAttr ".phl[2989]" 0;
	setAttr ".phl[2990]" 0;
	setAttr ".phl[2991]" 0;
	setAttr ".phl[2992]" 0;
	setAttr ".phl[2993]" 0;
	setAttr ".phl[2994]" 0;
	setAttr ".phl[2995]" 0;
	setAttr ".phl[2996]" 0;
	setAttr ".phl[2997]" 0;
	setAttr ".phl[2998]" 0;
	setAttr ".phl[2999]" 0;
	setAttr ".phl[3000]" 0;
	setAttr ".phl[3001]" 0;
	setAttr ".phl[3002]" 0;
	setAttr ".phl[3003]" 0;
	setAttr ".phl[3004]" 0;
	setAttr ".phl[3005]" 0;
	setAttr ".phl[3006]" 0;
	setAttr ".phl[3007]" 0;
	setAttr ".phl[3008]" 0;
	setAttr ".phl[3009]" 0;
	setAttr ".phl[3010]" 0;
	setAttr ".phl[3011]" 0;
	setAttr ".phl[3012]" 0;
	setAttr ".phl[3013]" 0;
	setAttr ".phl[3014]" 0;
	setAttr ".phl[3015]" 0;
	setAttr ".phl[3016]" 0;
	setAttr ".phl[3017]" 0;
	setAttr ".phl[3018]" 0;
	setAttr ".phl[3019]" 0;
	setAttr ".phl[3020]" 0;
	setAttr ".phl[3021]" 0;
	setAttr ".phl[3022]" 0;
	setAttr ".phl[3023]" 0;
	setAttr ".phl[3024]" 0;
	setAttr ".phl[3025]" 0;
	setAttr ".phl[3026]" 0;
	setAttr ".phl[3027]" 0;
	setAttr ".phl[3028]" 0;
	setAttr ".phl[3029]" 0;
	setAttr ".phl[3030]" 0;
	setAttr ".phl[3031]" 0;
	setAttr ".phl[3032]" 0;
	setAttr ".phl[3033]" 0;
	setAttr ".phl[3034]" 0;
	setAttr ".phl[3035]" 0;
	setAttr ".phl[3036]" 0;
	setAttr ".phl[3037]" 0;
	setAttr ".phl[3038]" 0;
	setAttr ".phl[3039]" 0;
	setAttr ".phl[3040]" 0;
	setAttr ".phl[3041]" 0;
	setAttr ".phl[3042]" 0;
	setAttr ".phl[3043]" 0;
	setAttr ".phl[3044]" 0;
	setAttr ".phl[3045]" 0;
	setAttr ".phl[3046]" 0;
	setAttr ".phl[3047]" 0;
	setAttr ".phl[3048]" 0;
	setAttr ".phl[3049]" 0;
	setAttr ".phl[3050]" 0;
	setAttr ".phl[3051]" 0;
	setAttr ".phl[3052]" 0;
	setAttr ".phl[3053]" 0;
	setAttr ".phl[3054]" 0;
	setAttr ".phl[3055]" 0;
	setAttr ".phl[3056]" 0;
	setAttr ".phl[3057]" 0;
	setAttr ".phl[3058]" 0;
	setAttr ".phl[3059]" 0;
	setAttr ".phl[3060]" 0;
	setAttr ".phl[3061]" 0;
	setAttr ".phl[3062]" 0;
	setAttr ".phl[3063]" 0;
	setAttr ".phl[3064]" 0;
	setAttr ".phl[3065]" 0;
	setAttr ".phl[3066]" 0;
	setAttr ".phl[3067]" 0;
	setAttr ".phl[3068]" 0;
	setAttr ".phl[3069]" 0;
	setAttr ".phl[3070]" 0;
	setAttr ".phl[3071]" 0;
	setAttr ".phl[3072]" 0;
	setAttr ".phl[3073]" 0;
	setAttr ".phl[3074]" 0;
	setAttr ".phl[3075]" 0;
	setAttr ".phl[3076]" 0;
	setAttr ".phl[3077]" 0;
	setAttr ".phl[3078]" 0;
	setAttr ".phl[3079]" 0;
	setAttr ".phl[3080]" 0;
	setAttr ".phl[3081]" 0;
	setAttr ".phl[3082]" 0;
	setAttr ".phl[3083]" 0;
	setAttr ".phl[3084]" 0;
	setAttr ".phl[3085]" 0;
	setAttr ".phl[3086]" 0;
	setAttr ".phl[3087]" 0;
	setAttr ".phl[3088]" 0;
	setAttr ".phl[3089]" 0;
	setAttr ".phl[3090]" 0;
	setAttr ".phl[3091]" 0;
	setAttr ".phl[3092]" 0;
	setAttr ".phl[3093]" 0;
	setAttr ".phl[3094]" 0;
	setAttr ".phl[3095]" 0;
	setAttr ".phl[3096]" 0;
	setAttr ".phl[3097]" 0;
	setAttr ".phl[3098]" 0;
	setAttr ".phl[3099]" 0;
	setAttr ".phl[3100]" 0;
	setAttr ".phl[3101]" 0;
	setAttr ".phl[3102]" 0;
	setAttr ".phl[3103]" 0;
	setAttr ".phl[3104]" 0;
	setAttr ".phl[3105]" 0;
	setAttr ".phl[3106]" 0;
	setAttr ".phl[3107]" 0;
	setAttr ".phl[3108]" 0;
	setAttr ".phl[3109]" 0;
	setAttr ".phl[3110]" 0;
	setAttr ".phl[3111]" 0;
	setAttr ".phl[3112]" 0;
	setAttr ".phl[3113]" 0;
	setAttr ".phl[3114]" 0;
	setAttr ".phl[3115]" 0;
	setAttr ".phl[3116]" 0;
	setAttr ".phl[3117]" 0;
	setAttr ".phl[3118]" 0;
	setAttr ".phl[3119]" 0;
	setAttr ".phl[3120]" 0;
	setAttr ".phl[3121]" 0;
	setAttr ".phl[3122]" 0;
	setAttr ".phl[3123]" 0;
	setAttr ".phl[3124]" 0;
	setAttr ".phl[3125]" 0;
	setAttr ".phl[3126]" 0;
	setAttr ".phl[3127]" 0;
	setAttr ".phl[3128]" 0;
	setAttr ".phl[3129]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_CRN"
		"ab_rig_CRN" 31
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body" "visibility" " 1"
		
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset.message" 
		"ab_rig_CRN.placeHolderList[150]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_optionShape1.message" 
		"ab_rig_CRN.placeHolderList[162]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye.message" 
		"ab_rig_CRN.placeHolderList[652]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye|ab_rig_C:Geo_C_eyeShape.message" 
		"ab_rig_CRN.placeHolderList[653]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.scaleX" 
		"ab_rig_CRN.placeHolderList[682]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.scaleY" 
		"ab_rig_CRN.placeHolderList[683]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.scaleZ" 
		"ab_rig_CRN.placeHolderList[684]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_L_eye_sub|ab_rig_C:Jnt_L_eye_sub_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1139]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_L_eye_sub|ab_rig_C:Jnt_L_eye_sub_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1140]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_upper|ab_rig_C:Jnt_C_eye_sub_upper_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1142]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_upper|ab_rig_C:Jnt_C_eye_sub_upper_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1143]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_under|ab_rig_C:Jnt_C_eye_sub_under_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1145]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_under|ab_rig_C:Jnt_C_eye_sub_under_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1146]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_R_eye_sub|ab_rig_C:Jnt_R_eye_sub_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1148]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_R_eye_sub|ab_rig_C:Jnt_R_eye_sub_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1149]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[1151]" ""
		5 3 "ab_rig_CRN" "ab_rig_C:bindPose5.message" "ab_rig_CRN.placeHolderList[1445]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader1.message" "ab_rig_CRN.placeHolderList[2176]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader2.message" "ab_rig_CRN.placeHolderList[2178]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader3.message" "ab_rig_CRN.placeHolderList[2180]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader4.message" "ab_rig_CRN.placeHolderList[2182]" 
		""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateX" 
		"ab_rig_CRN.placeHolderList[2328]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateY" 
		"ab_rig_CRN.placeHolderList[2329]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateZ" 
		"ab_rig_CRN.placeHolderList[2330]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateX" 
		"ab_rig_CRN.placeHolderList[2331]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateY" 
		"ab_rig_CRN.placeHolderList[2332]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[2333]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleX" 
		"ab_rig_CRN.placeHolderList[2334]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleY" 
		"ab_rig_CRN.placeHolderList[2335]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[2336]" ""
		"ab_rig_CRN" 851
		2 "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp|ab_rig_C:Geo_C_eye_col_02|ab_rig_C:Geo_C_eye" 
		"visibility" " 1"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp" 
		"translate" " -type \"double3\" 0 -7.84066694413205134 0"
		2 "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset" 
		"translate" " -type \"double3\" 0.13067111372947693 -7.93474868123312937 -0.11600586026906967"
		
		2 "ab_rig_C:GEO_L" "displayType" " 2"
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp.message" "ab_rig_CRN.placeHolderList[2337]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp.message" "ab_rig_CRN.placeHolderList[2338]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body.message" 
		"ab_rig_CRN.placeHolderList[2339]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body|ab_rig_C:Geo_C_bodyShape.message" 
		"ab_rig_CRN.placeHolderList[2340]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_body|ab_rig_C:Geo_C_bodyShapeOrig.message" 
		"ab_rig_CRN.placeHolderList[2341]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Geo_Grp|ab_rig_C:Geo_C_eye_Grp|ab_rig_C:Geo_C_eye|ab_rig_C:Geo_C_eyeShapeOrig.message" 
		"ab_rig_CRN.placeHolderList[2342]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp.message" "ab_rig_CRN.placeHolderList[2343]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.message" 
		"ab_rig_CRN.placeHolderList[2344]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateX" 
		"ab_rig_CRN.placeHolderList[2345]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateY" 
		"ab_rig_CRN.placeHolderList[2346]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2347]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2348]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2349]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2350]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2351]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.message" 
		"ab_rig_CRN.placeHolderList[2352]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateX" 
		"ab_rig_CRN.placeHolderList[2353]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateY" 
		"ab_rig_CRN.placeHolderList[2354]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2355]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2356]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2357]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2358]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_Root_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2359]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateX" 
		"ab_rig_CRN.placeHolderList[2360]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateY" 
		"ab_rig_CRN.placeHolderList[2361]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.translateZ" 
		"ab_rig_CRN.placeHolderList[2362]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateX" 
		"ab_rig_CRN.placeHolderList[2363]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateY" 
		"ab_rig_CRN.placeHolderList[2364]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.rotateZ" 
		"ab_rig_CRN.placeHolderList[2365]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body.message" 
		"ab_rig_CRN.placeHolderList[2366]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_C_bodyShape.message" 
		"ab_rig_CRN.placeHolderList[2367]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp.message" 
		"ab_rig_CRN.placeHolderList[2368]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset.message" 
		"ab_rig_CRN.placeHolderList[2369]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateX" 
		"ab_rig_CRN.placeHolderList[2370]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateY" 
		"ab_rig_CRN.placeHolderList[2371]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.translateZ" 
		"ab_rig_CRN.placeHolderList[2372]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateX" 
		"ab_rig_CRN.placeHolderList[2373]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateY" 
		"ab_rig_CRN.placeHolderList[2374]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[2375]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleX" 
		"ab_rig_CRN.placeHolderList[2376]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleY" 
		"ab_rig_CRN.placeHolderList[2377]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[2378]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option.message" 
		"ab_rig_CRN.placeHolderList[2379]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_C_body_middle_optionShape.message" 
		"ab_rig_CRN.placeHolderList[2380]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_C_body_middle_optionShape1.message" 
		"ab_rig_CRN.placeHolderList[2381]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[2382]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2383]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[2384]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[2385]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2386]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2387]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2388]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2389]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[2390]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2391]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[2392]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[2393]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_001_offset|ab_rig_C:Rig_C_body_middle_001|ab_rig_C:Rig_C_body_middle_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[2394]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2395]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[2396]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[2397]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2398]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2399]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2400]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2401]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[2402]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2403]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[2404]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[2405]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_C_body_middle_002_offset|ab_rig_C:Rig_C_body_middle_002|ab_rig_C:Rig_C_body_middle_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[2406]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[2407]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2408]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[2409]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[2410]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2411]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2412]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2413]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2414]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[2415]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2416]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[2417]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[2418]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_001_offset|ab_rig_C:Rig_L_body_middle_001|ab_rig_C:Rig_L_body_middle_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[2419]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2420]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[2421]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[2422]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2423]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2424]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2425]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2426]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[2427]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2428]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[2429]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[2430]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_002_offset|ab_rig_C:Rig_L_body_middle_002|ab_rig_C:Rig_L_body_middle_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[2431]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset.message" 
		"ab_rig_CRN.placeHolderList[2432]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateX" 
		"ab_rig_CRN.placeHolderList[2433]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateY" 
		"ab_rig_CRN.placeHolderList[2434]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.translateZ" 
		"ab_rig_CRN.placeHolderList[2435]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateX" 
		"ab_rig_CRN.placeHolderList[2436]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateY" 
		"ab_rig_CRN.placeHolderList[2437]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[2438]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[2439]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape.message" 
		"ab_rig_CRN.placeHolderList[2440]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape1.message" 
		"ab_rig_CRN.placeHolderList[2441]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape2.message" 
		"ab_rig_CRN.placeHolderList[2442]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_L_body_middle_Grp|ab_rig_C:Rig_L_body_middle_003_offset|ab_rig_C:Rig_L_body_middle_003|ab_rig_C:Rig_L_body_middle_003Shape3.message" 
		"ab_rig_CRN.placeHolderList[2443]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[2444]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2445]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateX" 
		"ab_rig_CRN.placeHolderList[2446]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateY" 
		"ab_rig_CRN.placeHolderList[2447]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2448]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2449]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2450]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2451]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[2452]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2453]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[2454]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[2455]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_001_offset|ab_rig_C:Rig_R_body_middle_001|ab_rig_C:Rig_R_body_middle_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[2456]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2457]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateX" 
		"ab_rig_CRN.placeHolderList[2458]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateY" 
		"ab_rig_CRN.placeHolderList[2459]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2460]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2461]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2462]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2463]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[2464]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2465]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape49.message" 
		"ab_rig_CRN.placeHolderList[2466]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape50.message" 
		"ab_rig_CRN.placeHolderList[2467]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_002_offset|ab_rig_C:Rig_R_body_middle_002|ab_rig_C:Rig_R_body_middle_002Shape51.message" 
		"ab_rig_CRN.placeHolderList[2468]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset.message" 
		"ab_rig_CRN.placeHolderList[2469]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateX" 
		"ab_rig_CRN.placeHolderList[2470]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateY" 
		"ab_rig_CRN.placeHolderList[2471]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.translateZ" 
		"ab_rig_CRN.placeHolderList[2472]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateX" 
		"ab_rig_CRN.placeHolderList[2473]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateY" 
		"ab_rig_CRN.placeHolderList[2474]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[2475]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[2476]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape.message" 
		"ab_rig_CRN.placeHolderList[2477]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape4.message" 
		"ab_rig_CRN.placeHolderList[2478]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape5.message" 
		"ab_rig_CRN.placeHolderList[2479]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_middle_option_offset|ab_rig_C:Rig_C_body_middle_option|ab_rig_C:Rig_body_middle_Grp|ab_rig_C:Rig_R_body_middle_Grp|ab_rig_C:Rig_R_body_middle_003_offset|ab_rig_C:Rig_R_body_middle_003|ab_rig_C:Rig_R_body_middle_003Shape6.message" 
		"ab_rig_CRN.placeHolderList[2480]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1.message" 
		"ab_rig_CRN.placeHolderList[2481]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateX" 
		"ab_rig_CRN.placeHolderList[2482]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateY" 
		"ab_rig_CRN.placeHolderList[2483]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.translateZ" 
		"ab_rig_CRN.placeHolderList[2484]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateX" 
		"ab_rig_CRN.placeHolderList[2485]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateY" 
		"ab_rig_CRN.placeHolderList[2486]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[2487]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleX" 
		"ab_rig_CRN.placeHolderList[2488]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleY" 
		"ab_rig_CRN.placeHolderList[2489]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[2490]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option.message" 
		"ab_rig_CRN.placeHolderList[2491]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_optionShape.message" 
		"ab_rig_CRN.placeHolderList[2492]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_optionShape2.message" 
		"ab_rig_CRN.placeHolderList[2493]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[2494]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2495]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[2496]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[2497]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2498]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2499]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2500]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2501]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[2502]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2503]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[2504]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[2505]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_001_offset|ab_rig_C:Rig_C_body_under_001|ab_rig_C:Rig_C_body_under_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[2506]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2507]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[2508]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[2509]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2510]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2511]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2512]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2513]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[2514]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2515]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape7.message" 
		"ab_rig_CRN.placeHolderList[2516]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape8.message" 
		"ab_rig_CRN.placeHolderList[2517]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_C_body_under_002_offset|ab_rig_C:Rig_C_body_under_002|ab_rig_C:Rig_C_body_under_002Shape9.message" 
		"ab_rig_CRN.placeHolderList[2518]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[2519]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2520]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[2521]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[2522]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2523]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2524]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2525]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2526]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[2527]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2528]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[2529]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[2530]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_001_offset|ab_rig_C:Rig_L_body_under_001|ab_rig_C:Rig_L_body_under_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[2531]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2532]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[2533]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[2534]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2535]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2536]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2537]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2538]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[2539]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2540]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape10.message" 
		"ab_rig_CRN.placeHolderList[2541]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape11.message" 
		"ab_rig_CRN.placeHolderList[2542]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_002_offset|ab_rig_C:Rig_L_body_under_002|ab_rig_C:Rig_L_body_under_002Shape12.message" 
		"ab_rig_CRN.placeHolderList[2543]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset.message" 
		"ab_rig_CRN.placeHolderList[2544]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateX" 
		"ab_rig_CRN.placeHolderList[2545]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateY" 
		"ab_rig_CRN.placeHolderList[2546]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.translateZ" 
		"ab_rig_CRN.placeHolderList[2547]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateX" 
		"ab_rig_CRN.placeHolderList[2548]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateY" 
		"ab_rig_CRN.placeHolderList[2549]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[2550]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[2551]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape.message" 
		"ab_rig_CRN.placeHolderList[2552]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape4.message" 
		"ab_rig_CRN.placeHolderList[2553]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape5.message" 
		"ab_rig_CRN.placeHolderList[2554]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_L_body_under_Grp|ab_rig_C:Rig_L_body_under_003_offset|ab_rig_C:Rig_L_body_under_003|ab_rig_C:Rig_L_body_under_003Shape6.message" 
		"ab_rig_CRN.placeHolderList[2555]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[2556]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2557]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateX" 
		"ab_rig_CRN.placeHolderList[2558]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateY" 
		"ab_rig_CRN.placeHolderList[2559]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2560]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2561]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2562]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2563]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[2564]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2565]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape4.message" 
		"ab_rig_CRN.placeHolderList[2566]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape5.message" 
		"ab_rig_CRN.placeHolderList[2567]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_001_offset|ab_rig_C:Rig_R_body_under_001|ab_rig_C:Rig_R_body_under_001Shape6.message" 
		"ab_rig_CRN.placeHolderList[2568]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2569]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateX" 
		"ab_rig_CRN.placeHolderList[2570]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateY" 
		"ab_rig_CRN.placeHolderList[2571]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2572]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2573]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2574]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2575]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[2576]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2577]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape4.message" 
		"ab_rig_CRN.placeHolderList[2578]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape5.message" 
		"ab_rig_CRN.placeHolderList[2579]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_002_offset|ab_rig_C:Rig_R_body_under_002|ab_rig_C:Rig_R_body_under_002Shape6.message" 
		"ab_rig_CRN.placeHolderList[2580]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset.message" 
		"ab_rig_CRN.placeHolderList[2581]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateX" 
		"ab_rig_CRN.placeHolderList[2582]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateY" 
		"ab_rig_CRN.placeHolderList[2583]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.translateZ" 
		"ab_rig_CRN.placeHolderList[2584]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateX" 
		"ab_rig_CRN.placeHolderList[2585]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateY" 
		"ab_rig_CRN.placeHolderList[2586]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[2587]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[2588]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape.message" 
		"ab_rig_CRN.placeHolderList[2589]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape4.message" 
		"ab_rig_CRN.placeHolderList[2590]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape5.message" 
		"ab_rig_CRN.placeHolderList[2591]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_body_under_Grp|ab_rig_C:Rig_R_body_under_Grp|ab_rig_C:Rig_R_body_under_003_offset|ab_rig_C:Rig_R_body_under_003|ab_rig_C:Rig_R_body_under_003Shape6.message" 
		"ab_rig_CRN.placeHolderList[2592]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset.message" 
		"ab_rig_CRN.placeHolderList[2593]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateX" 
		"ab_rig_CRN.placeHolderList[2594]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateY" 
		"ab_rig_CRN.placeHolderList[2595]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.translateZ" 
		"ab_rig_CRN.placeHolderList[2596]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateX" 
		"ab_rig_CRN.placeHolderList[2597]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateY" 
		"ab_rig_CRN.placeHolderList[2598]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.rotateZ" 
		"ab_rig_CRN.placeHolderList[2599]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under.message" 
		"ab_rig_CRN.placeHolderList[2600]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape.message" 
		"ab_rig_CRN.placeHolderList[2601]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape1.message" 
		"ab_rig_CRN.placeHolderList[2602]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape2.message" 
		"ab_rig_CRN.placeHolderList[2603]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_under_option_offset1|ab_rig_C:Rig_C_body_under_option|ab_rig_C:Rig_C_body_under_offset|ab_rig_C:Rig_C_body_under|ab_rig_C:Rig_C_body_underShape3.message" 
		"ab_rig_CRN.placeHolderList[2604]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset.message" 
		"ab_rig_CRN.placeHolderList[2605]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateX" 
		"ab_rig_CRN.placeHolderList[2606]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateY" 
		"ab_rig_CRN.placeHolderList[2607]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.translateZ" 
		"ab_rig_CRN.placeHolderList[2608]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateX" 
		"ab_rig_CRN.placeHolderList[2609]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateY" 
		"ab_rig_CRN.placeHolderList[2610]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.rotateZ" 
		"ab_rig_CRN.placeHolderList[2611]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleX" 
		"ab_rig_CRN.placeHolderList[2612]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleY" 
		"ab_rig_CRN.placeHolderList[2613]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.scaleZ" 
		"ab_rig_CRN.placeHolderList[2614]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option.message" 
		"ab_rig_CRN.placeHolderList[2615]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_optionShape.message" 
		"ab_rig_CRN.placeHolderList[2616]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_optionShape1.message" 
		"ab_rig_CRN.placeHolderList[2617]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[2618]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2619]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[2620]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[2621]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2622]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2623]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2624]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2625]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[2626]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2627]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[2628]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[2629]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_001_offset|ab_rig_C:Rig_C_body_upper_001|ab_rig_C:Rig_C_body_upper_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[2630]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2631]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[2632]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[2633]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2634]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2635]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2636]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2637]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[2638]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2639]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[2640]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[2641]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_C_body_upper_002_offset|ab_rig_C:Rig_C_body_upper_002|ab_rig_C:Rig_C_body_upper_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[2642]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[2643]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2644]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[2645]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[2646]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2647]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2648]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2649]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2650]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[2651]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2652]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[2653]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[2654]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_001_offset|ab_rig_C:Rig_L_body_upper_001|ab_rig_C:Rig_L_body_upper_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[2655]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2656]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[2657]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[2658]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2659]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2660]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2661]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2662]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[2663]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2664]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[2665]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[2666]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_002_offset|ab_rig_C:Rig_L_body_upper_002|ab_rig_C:Rig_L_body_upper_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[2667]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset.message" 
		"ab_rig_CRN.placeHolderList[2668]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateX" 
		"ab_rig_CRN.placeHolderList[2669]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateY" 
		"ab_rig_CRN.placeHolderList[2670]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.translateZ" 
		"ab_rig_CRN.placeHolderList[2671]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateX" 
		"ab_rig_CRN.placeHolderList[2672]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateY" 
		"ab_rig_CRN.placeHolderList[2673]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[2674]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[2675]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape.message" 
		"ab_rig_CRN.placeHolderList[2676]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape1.message" 
		"ab_rig_CRN.placeHolderList[2677]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape2.message" 
		"ab_rig_CRN.placeHolderList[2678]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_L_body_upper_Grp|ab_rig_C:Rig_L_body_upper_003_offset|ab_rig_C:Rig_L_body_upper_003|ab_rig_C:Rig_L_body_upper_003Shape3.message" 
		"ab_rig_CRN.placeHolderList[2679]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[2680]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset.message" 
		"ab_rig_CRN.placeHolderList[2681]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateX" 
		"ab_rig_CRN.placeHolderList[2682]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateY" 
		"ab_rig_CRN.placeHolderList[2683]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.translateZ" 
		"ab_rig_CRN.placeHolderList[2684]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateX" 
		"ab_rig_CRN.placeHolderList[2685]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateY" 
		"ab_rig_CRN.placeHolderList[2686]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.rotateZ" 
		"ab_rig_CRN.placeHolderList[2687]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[2688]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape.message" 
		"ab_rig_CRN.placeHolderList[2689]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape1.message" 
		"ab_rig_CRN.placeHolderList[2690]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape2.message" 
		"ab_rig_CRN.placeHolderList[2691]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_001_offset|ab_rig_C:Rig_R_body_upper_001|ab_rig_C:Rig_R_body_upper_001Shape3.message" 
		"ab_rig_CRN.placeHolderList[2692]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset.message" 
		"ab_rig_CRN.placeHolderList[2693]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateX" 
		"ab_rig_CRN.placeHolderList[2694]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateY" 
		"ab_rig_CRN.placeHolderList[2695]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.translateZ" 
		"ab_rig_CRN.placeHolderList[2696]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateX" 
		"ab_rig_CRN.placeHolderList[2697]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateY" 
		"ab_rig_CRN.placeHolderList[2698]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.rotateZ" 
		"ab_rig_CRN.placeHolderList[2699]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[2700]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape.message" 
		"ab_rig_CRN.placeHolderList[2701]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape1.message" 
		"ab_rig_CRN.placeHolderList[2702]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape2.message" 
		"ab_rig_CRN.placeHolderList[2703]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_002_offset|ab_rig_C:Rig_R_body_upper_002|ab_rig_C:Rig_R_body_upper_002Shape3.message" 
		"ab_rig_CRN.placeHolderList[2704]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset.message" 
		"ab_rig_CRN.placeHolderList[2705]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateX" 
		"ab_rig_CRN.placeHolderList[2706]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateY" 
		"ab_rig_CRN.placeHolderList[2707]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.translateZ" 
		"ab_rig_CRN.placeHolderList[2708]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateX" 
		"ab_rig_CRN.placeHolderList[2709]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateY" 
		"ab_rig_CRN.placeHolderList[2710]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.rotateZ" 
		"ab_rig_CRN.placeHolderList[2711]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[2712]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape.message" 
		"ab_rig_CRN.placeHolderList[2713]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape1.message" 
		"ab_rig_CRN.placeHolderList[2714]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape2.message" 
		"ab_rig_CRN.placeHolderList[2715]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_body_upper_Grp|ab_rig_C:Rig_R_body_upper_Grp|ab_rig_C:Rig_R_body_upper_003_offset|ab_rig_C:Rig_R_body_upper_003|ab_rig_C:Rig_R_body_upper_003Shape3.message" 
		"ab_rig_CRN.placeHolderList[2716]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset.message" 
		"ab_rig_CRN.placeHolderList[2717]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateX" 
		"ab_rig_CRN.placeHolderList[2718]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateY" 
		"ab_rig_CRN.placeHolderList[2719]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.translateZ" 
		"ab_rig_CRN.placeHolderList[2720]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateX" 
		"ab_rig_CRN.placeHolderList[2721]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateY" 
		"ab_rig_CRN.placeHolderList[2722]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.rotateZ" 
		"ab_rig_CRN.placeHolderList[2723]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper.message" 
		"ab_rig_CRN.placeHolderList[2724]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape.message" 
		"ab_rig_CRN.placeHolderList[2725]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape1.message" 
		"ab_rig_CRN.placeHolderList[2726]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape2.message" 
		"ab_rig_CRN.placeHolderList[2727]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_body_Grp|ab_rig_C:Rig_C_body_upper_option_offset|ab_rig_C:Rig_C_body_upper_option|ab_rig_C:Rig_C_body_upper_offset|ab_rig_C:Rig_C_body_upper|ab_rig_C:Rig_C_body_upperShape3.message" 
		"ab_rig_CRN.placeHolderList[2728]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp.message" 
		"ab_rig_CRN.placeHolderList[2729]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b.rotateY" 
		"ab_rig_CRN.placeHolderList[2730]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a.translateZ" 
		"ab_rig_CRN.placeHolderList[2731]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a.rotateX" 
		"ab_rig_CRN.placeHolderList[2732]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset.message" 
		"ab_rig_CRN.placeHolderList[2733]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002.message" 
		"ab_rig_CRN.placeHolderList[2734]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateX" 
		"ab_rig_CRN.placeHolderList[2735]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateY" 
		"ab_rig_CRN.placeHolderList[2736]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.translateZ" 
		"ab_rig_CRN.placeHolderList[2737]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateX" 
		"ab_rig_CRN.placeHolderList[2738]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateY" 
		"ab_rig_CRN.placeHolderList[2739]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.rotateZ" 
		"ab_rig_CRN.placeHolderList[2740]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleX" 
		"ab_rig_CRN.placeHolderList[2741]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleY" 
		"ab_rig_CRN.placeHolderList[2742]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.scaleZ" 
		"ab_rig_CRN.placeHolderList[2743]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root.message" 
		"ab_rig_CRN.placeHolderList[2744]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape.message" 
		"ab_rig_CRN.placeHolderList[2745]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape1.message" 
		"ab_rig_CRN.placeHolderList[2746]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape2.message" 
		"ab_rig_CRN.placeHolderList[2747]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_rootShape3.message" 
		"ab_rig_CRN.placeHolderList[2748]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset.message" 
		"ab_rig_CRN.placeHolderList[2749]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateX" 
		"ab_rig_CRN.placeHolderList[2750]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateY" 
		"ab_rig_CRN.placeHolderList[2751]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.translateZ" 
		"ab_rig_CRN.placeHolderList[2752]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateX" 
		"ab_rig_CRN.placeHolderList[2753]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateY" 
		"ab_rig_CRN.placeHolderList[2754]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.rotateZ" 
		"ab_rig_CRN.placeHolderList[2755]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleX" 
		"ab_rig_CRN.placeHolderList[2756]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleY" 
		"ab_rig_CRN.placeHolderList[2757]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.scaleZ" 
		"ab_rig_CRN.placeHolderList[2758]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye.message" 
		"ab_rig_CRN.placeHolderList[2759]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape.message" 
		"ab_rig_CRN.placeHolderList[2760]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape1.message" 
		"ab_rig_CRN.placeHolderList[2761]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape2.message" 
		"ab_rig_CRN.placeHolderList[2762]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eyeShape3.message" 
		"ab_rig_CRN.placeHolderList[2763]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset.message" 
		"ab_rig_CRN.placeHolderList[2764]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateX" 
		"ab_rig_CRN.placeHolderList[2765]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateY" 
		"ab_rig_CRN.placeHolderList[2766]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.translateZ" 
		"ab_rig_CRN.placeHolderList[2767]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateX" 
		"ab_rig_CRN.placeHolderList[2768]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateY" 
		"ab_rig_CRN.placeHolderList[2769]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.rotateZ" 
		"ab_rig_CRN.placeHolderList[2770]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under.message" 
		"ab_rig_CRN.placeHolderList[2771]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape.message" 
		"ab_rig_CRN.placeHolderList[2772]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape1.message" 
		"ab_rig_CRN.placeHolderList[2773]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape2.message" 
		"ab_rig_CRN.placeHolderList[2774]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_under_offset|ab_rig_C:Rig_C_eye_sub_under|ab_rig_C:Rig_C_eye_sub_underShape3.message" 
		"ab_rig_CRN.placeHolderList[2775]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset.message" 
		"ab_rig_CRN.placeHolderList[2776]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateX" 
		"ab_rig_CRN.placeHolderList[2777]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateY" 
		"ab_rig_CRN.placeHolderList[2778]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.translateZ" 
		"ab_rig_CRN.placeHolderList[2779]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateX" 
		"ab_rig_CRN.placeHolderList[2780]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateY" 
		"ab_rig_CRN.placeHolderList[2781]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.rotateZ" 
		"ab_rig_CRN.placeHolderList[2782]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper.message" 
		"ab_rig_CRN.placeHolderList[2783]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape.message" 
		"ab_rig_CRN.placeHolderList[2784]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape1.message" 
		"ab_rig_CRN.placeHolderList[2785]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape2.message" 
		"ab_rig_CRN.placeHolderList[2786]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_C_eye_sub_upper_offset|ab_rig_C:Rig_C_eye_sub_upper|ab_rig_C:Rig_C_eye_sub_upperShape3.message" 
		"ab_rig_CRN.placeHolderList[2787]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset.message" 
		"ab_rig_CRN.placeHolderList[2788]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[2789]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[2790]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[2791]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[2792]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[2793]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[2794]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[2795]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape.message" 
		"ab_rig_CRN.placeHolderList[2796]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape1.message" 
		"ab_rig_CRN.placeHolderList[2797]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape2.message" 
		"ab_rig_CRN.placeHolderList[2798]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_L_eye_sub_offset|ab_rig_C:Rig_L_eye_sub|ab_rig_C:Rig_L_eye_subShape3.message" 
		"ab_rig_CRN.placeHolderList[2799]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re.message" 
		"ab_rig_CRN.placeHolderList[2800]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset.message" 
		"ab_rig_CRN.placeHolderList[2801]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateX" 
		"ab_rig_CRN.placeHolderList[2802]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateY" 
		"ab_rig_CRN.placeHolderList[2803]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.translateZ" 
		"ab_rig_CRN.placeHolderList[2804]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateX" 
		"ab_rig_CRN.placeHolderList[2805]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateY" 
		"ab_rig_CRN.placeHolderList[2806]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.rotateZ" 
		"ab_rig_CRN.placeHolderList[2807]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[2808]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape.message" 
		"ab_rig_CRN.placeHolderList[2809]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape1.message" 
		"ab_rig_CRN.placeHolderList[2810]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape2.message" 
		"ab_rig_CRN.placeHolderList[2811]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_Grp|ab_rig_C:Rig_C_eye_ctrl_b_offset|ab_rig_C:Rig_C_eye_ctrl_b|ab_rig_C:Rig_C_eye_ctrl_a_offset|ab_rig_C:Rig_C_eye_ctrl_a|ab_rig_C:Rig_C_eye_root_offset|ab_rig_C:Rig_C_eye_root_offset_002|ab_rig_C:Rig_C_eye_root|ab_rig_C:Rig_C_eye_offset|ab_rig_C:Rig_C_eye|ab_rig_C:Rig_R_eye_sub_re|ab_rig_C:Rig_R_eye_sub_offset|ab_rig_C:Rig_R_eye_sub|ab_rig_C:Rig_R_eye_subShape3.message" 
		"ab_rig_CRN.placeHolderList[2812]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp.message" 
		"ab_rig_CRN.placeHolderList[2813]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_upper.message" 
		"ab_rig_CRN.placeHolderList[2814]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_upper|ab_rig_C:null1_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2815]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_under.message" 
		"ab_rig_CRN.placeHolderList[2816]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_eye_offset_null_Grp|ab_rig_C:Rig_eye_offset_null_under|ab_rig_C:null2_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2817]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_tre" 
		"ab_rig_CRN.placeHolderList[2818]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.sine_strength" 
		"ab_rig_CRN.placeHolderList[2819]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.eye_type" 
		"ab_rig_CRN.placeHolderList[2820]" ""
		5 4 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Rig_Grp|ab_rig_C:Rig_C_Root_001|ab_rig_C:Rig_C_Root_002|ab_rig_C:Rig_C_body|ab_rig_C:Rig_Other_Grp|ab_rig_C:Rig_Other.color" 
		"ab_rig_CRN.placeHolderList[2821]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp.message" "ab_rig_CRN.placeHolderList[2822]" 
		""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root.message" 
		"ab_rig_CRN.placeHolderList[2823]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp.message" 
		"ab_rig_CRN.placeHolderList[2824]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root.message" 
		"ab_rig_CRN.placeHolderList[2825]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye.message" 
		"ab_rig_CRN.placeHolderList[2826]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_L_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[2827]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_upper.message" 
		"ab_rig_CRN.placeHolderList[2828]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_sub_under.message" 
		"ab_rig_CRN.placeHolderList[2829]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_R_eye_sub.message" 
		"ab_rig_CRN.placeHolderList[2830]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye|ab_rig_C:Jnt_C_eye_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2831]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye_root_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2832]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_eye_Grp|ab_rig_C:Jnt_C_eye_root|ab_rig_C:Jnt_C_eye_root_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2833]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp.message" 
		"ab_rig_CRN.placeHolderList[2834]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under.message" 
		"ab_rig_CRN.placeHolderList[2835]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under|ab_rig_C:Jnt_body_under_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2836]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under|ab_rig_C:Jnt_body_under_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2837]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper.message" 
		"ab_rig_CRN.placeHolderList[2838]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper|ab_rig_C:Jnt_body_upper_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2839]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper|ab_rig_C:Jnt_body_upper_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2840]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp.message" 
		"ab_rig_CRN.placeHolderList[2841]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[2842]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_001|ab_rig_C:Jnt_C_body_middle_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2843]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_001|ab_rig_C:Jnt_C_body_middle_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2844]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[2845]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_002|ab_rig_C:Jnt_C_body_middle_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2846]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_C_body_middle_002|ab_rig_C:Jnt_C_body_middle_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2847]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[2848]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_001|ab_rig_C:Jnt_L_body_middle_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2849]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_001|ab_rig_C:Jnt_L_body_middle_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2850]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[2851]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_002|ab_rig_C:Jnt_L_body_middle_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2852]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_002|ab_rig_C:Jnt_L_body_middle_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2853]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[2854]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_003|ab_rig_C:Jnt_L_body_middle_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2855]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_L_body_middle_003|ab_rig_C:Jnt_L_body_middle_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2856]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_003.message" 
		"ab_rig_CRN.placeHolderList[2857]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_003|ab_rig_C:Jnt_R_body_middle_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2858]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_003|ab_rig_C:Jnt_R_body_middle_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2859]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_002.message" 
		"ab_rig_CRN.placeHolderList[2860]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_002|ab_rig_C:Jnt_R_body_middle_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2861]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_002|ab_rig_C:Jnt_R_body_middle_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2862]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_001.message" 
		"ab_rig_CRN.placeHolderList[2863]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_001|ab_rig_C:Jnt_R_body_middle_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2864]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_middle_Grp|ab_rig_C:Jnt_R_body_middle_001|ab_rig_C:Jnt_R_body_middle_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2865]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp.message" 
		"ab_rig_CRN.placeHolderList[2866]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[2867]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_001|ab_rig_C:Jnt_C_body_under_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2868]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_001|ab_rig_C:Jnt_C_body_under_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2869]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[2870]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_002|ab_rig_C:Jnt_C_body_under_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2871]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_C_body_under_002|ab_rig_C:Jnt_C_body_under_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2872]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[2873]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_001|ab_rig_C:Jnt_L_body_under_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2874]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_001|ab_rig_C:Jnt_L_body_under_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2875]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[2876]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_002|ab_rig_C:Jnt_L_body_under_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2877]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_002|ab_rig_C:Jnt_L_body_under_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2878]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[2879]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_003|ab_rig_C:Jnt_L_body_under_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2880]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_L_body_under_003|ab_rig_C:Jnt_L_body_under_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2881]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_002.message" 
		"ab_rig_CRN.placeHolderList[2882]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_002|ab_rig_C:Jnt_R_body_under_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2883]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_002|ab_rig_C:Jnt_R_body_under_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2884]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_003.message" 
		"ab_rig_CRN.placeHolderList[2885]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_003|ab_rig_C:Jnt_R_body_under_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2886]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_003|ab_rig_C:Jnt_R_body_under_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2887]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_001.message" 
		"ab_rig_CRN.placeHolderList[2888]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_001|ab_rig_C:Jnt_R_body_under_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2889]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_under_Grp|ab_rig_C:Jnt_R_body_under_001|ab_rig_C:Jnt_R_body_under_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2890]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp.message" 
		"ab_rig_CRN.placeHolderList[2891]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[2892]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_001|ab_rig_C:Jnt_C_body_upper_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2893]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_001|ab_rig_C:Jnt_C_body_upper_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2894]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[2895]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_002|ab_rig_C:Jnt_C_body_upper_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2896]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_C_body_upper_002|ab_rig_C:Jnt_C_body_upper_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2897]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[2898]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_001|ab_rig_C:Jnt_L_body_upper_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2899]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_001|ab_rig_C:Jnt_L_body_upper_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2900]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[2901]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_002|ab_rig_C:Jnt_L_body_upper_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2902]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_002|ab_rig_C:Jnt_L_body_upper_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2903]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[2904]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_003|ab_rig_C:Jnt_L_body_upper_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2905]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_L_body_upper_003|ab_rig_C:Jnt_L_body_upper_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2906]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_003.message" 
		"ab_rig_CRN.placeHolderList[2907]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_003|ab_rig_C:Jnt_R_body_upper_003_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2908]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_003|ab_rig_C:Jnt_R_body_upper_003_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2909]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_002.message" 
		"ab_rig_CRN.placeHolderList[2910]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_002|ab_rig_C:Jnt_R_body_upper_002_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2911]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_002|ab_rig_C:Jnt_R_body_upper_002_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2912]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_001.message" 
		"ab_rig_CRN.placeHolderList[2913]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_001|ab_rig_C:Jnt_R_body_upper_001_parentConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2914]" ""
		5 3 "ab_rig_CRN" "|ab_rig_C:All_Grp|ab_rig_C:Jnt_Grp|ab_rig_C:Jnt_C_root|ab_rig_C:Jnt_body_Grp|ab_rig_C:Jnt_body_upper_Grp|ab_rig_C:Jnt_R_body_upper_001|ab_rig_C:Jnt_R_body_upper_001_scaleConstraint1.message" 
		"ab_rig_CRN.placeHolderList[2915]" ""
		5 3 "ab_rig_CRN" "ab_rig_C:shapeEditorManager.message" "ab_rig_CRN.placeHolderList[2916]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:poseInterpolatorManager.message" "ab_rig_CRN.placeHolderList[2917]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:layerManager.message" "ab_rig_CRN.placeHolderList[2918]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:defaultLayer.message" "ab_rig_CRN.placeHolderList[2919]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader1SG.message" "ab_rig_CRN.placeHolderList[2920]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader2SG.message" "ab_rig_CRN.placeHolderList[2921]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader3SG.message" "ab_rig_CRN.placeHolderList[2922]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:surfaceShader4SG.message" "ab_rig_CRN.placeHolderList[2923]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide86.message" "ab_rig_CRN.placeHolderList[2924]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide84.message" "ab_rig_CRN.placeHolderList[2925]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide85.message" "ab_rig_CRN.placeHolderList[2926]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors7.message" "ab_rig_CRN.placeHolderList[2927]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors5.message" "ab_rig_CRN.placeHolderList[2928]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition4.message" "ab_rig_CRN.placeHolderList[2929]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide24.message" "ab_rig_CRN.placeHolderList[2930]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide22.message" "ab_rig_CRN.placeHolderList[2931]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide26.message" "ab_rig_CRN.placeHolderList[2932]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide25.message" "ab_rig_CRN.placeHolderList[2933]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors8.message" "ab_rig_CRN.placeHolderList[2934]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors6.message" "ab_rig_CRN.placeHolderList[2935]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition5.message" "ab_rig_CRN.placeHolderList[2936]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide23.message" "ab_rig_CRN.placeHolderList[2937]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide28.message" "ab_rig_CRN.placeHolderList[2938]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide27.message" "ab_rig_CRN.placeHolderList[2939]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide87.message" "ab_rig_CRN.placeHolderList[2940]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide88.message" "ab_rig_CRN.placeHolderList[2941]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors3.message" "ab_rig_CRN.placeHolderList[2942]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors1.message" "ab_rig_CRN.placeHolderList[2943]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition1.message" "ab_rig_CRN.placeHolderList[2944]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide13.message" "ab_rig_CRN.placeHolderList[2945]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide11.message" "ab_rig_CRN.placeHolderList[2946]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide15.message" "ab_rig_CRN.placeHolderList[2947]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide14.message" "ab_rig_CRN.placeHolderList[2948]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors4.message" "ab_rig_CRN.placeHolderList[2949]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors2.message" "ab_rig_CRN.placeHolderList[2950]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition2.message" "ab_rig_CRN.placeHolderList[2951]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide12.message" "ab_rig_CRN.placeHolderList[2952]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide17.message" "ab_rig_CRN.placeHolderList[2953]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide16.message" "ab_rig_CRN.placeHolderList[2954]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide69.message" "ab_rig_CRN.placeHolderList[2955]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide70.message" "ab_rig_CRN.placeHolderList[2956]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide71.message" "ab_rig_CRN.placeHolderList[2957]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide72.message" "ab_rig_CRN.placeHolderList[2958]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide73.message" "ab_rig_CRN.placeHolderList[2959]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide76.message" "ab_rig_CRN.placeHolderList[2960]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide74.message" "ab_rig_CRN.placeHolderList[2961]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide75.message" "ab_rig_CRN.placeHolderList[2962]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide77.message" "ab_rig_CRN.placeHolderList[2963]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide78.message" "ab_rig_CRN.placeHolderList[2964]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide94.message" "ab_rig_CRN.placeHolderList[2965]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide95.message" "ab_rig_CRN.placeHolderList[2966]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide96.message" "ab_rig_CRN.placeHolderList[2967]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide97.message" "ab_rig_CRN.placeHolderList[2968]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide98.message" "ab_rig_CRN.placeHolderList[2969]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide59.message" "ab_rig_CRN.placeHolderList[2970]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide60.message" "ab_rig_CRN.placeHolderList[2971]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide61.message" "ab_rig_CRN.placeHolderList[2972]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide62.message" "ab_rig_CRN.placeHolderList[2973]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide63.message" "ab_rig_CRN.placeHolderList[2974]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide66.message" "ab_rig_CRN.placeHolderList[2975]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide64.message" "ab_rig_CRN.placeHolderList[2976]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide65.message" "ab_rig_CRN.placeHolderList[2977]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide67.message" "ab_rig_CRN.placeHolderList[2978]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide68.message" "ab_rig_CRN.placeHolderList[2979]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide56.message" "ab_rig_CRN.placeHolderList[2980]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendTwoAttr1.message" "ab_rig_CRN.placeHolderList[2981]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide55.message" "ab_rig_CRN.placeHolderList[2982]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide57.message" "ab_rig_CRN.placeHolderList[2983]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide58.message" "ab_rig_CRN.placeHolderList[2984]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors11.message" "ab_rig_CRN.placeHolderList[2985]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors9.message" "ab_rig_CRN.placeHolderList[2986]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition7.message" "ab_rig_CRN.placeHolderList[2987]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide35.message" "ab_rig_CRN.placeHolderList[2988]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide33.message" "ab_rig_CRN.placeHolderList[2989]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide37.message" "ab_rig_CRN.placeHolderList[2990]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide36.message" "ab_rig_CRN.placeHolderList[2991]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors12.message" "ab_rig_CRN.placeHolderList[2992]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors10.message" "ab_rig_CRN.placeHolderList[2993]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition8.message" "ab_rig_CRN.placeHolderList[2994]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide34.message" "ab_rig_CRN.placeHolderList[2995]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide39.message" "ab_rig_CRN.placeHolderList[2996]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide38.message" "ab_rig_CRN.placeHolderList[2997]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors15.message" "ab_rig_CRN.placeHolderList[2998]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors13.message" "ab_rig_CRN.placeHolderList[2999]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition10.message" "ab_rig_CRN.placeHolderList[3000]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide46.message" "ab_rig_CRN.placeHolderList[3001]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide44.message" "ab_rig_CRN.placeHolderList[3002]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide48.message" "ab_rig_CRN.placeHolderList[3003]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide47.message" "ab_rig_CRN.placeHolderList[3004]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors16.message" "ab_rig_CRN.placeHolderList[3005]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:blendColors14.message" "ab_rig_CRN.placeHolderList[3006]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:condition11.message" "ab_rig_CRN.placeHolderList[3007]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide45.message" "ab_rig_CRN.placeHolderList[3008]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide50.message" "ab_rig_CRN.placeHolderList[3009]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide49.message" "ab_rig_CRN.placeHolderList[3010]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide79.message" "ab_rig_CRN.placeHolderList[3011]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide80.message" "ab_rig_CRN.placeHolderList[3012]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide81.message" "ab_rig_CRN.placeHolderList[3013]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide82.message" "ab_rig_CRN.placeHolderList[3014]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide83.message" "ab_rig_CRN.placeHolderList[3015]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide92.message" "ab_rig_CRN.placeHolderList[3016]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide93.message" "ab_rig_CRN.placeHolderList[3017]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide91.message" "ab_rig_CRN.placeHolderList[3018]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide89.message" "ab_rig_CRN.placeHolderList[3019]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig:multiplyDivide90.message" "ab_rig_CRN.placeHolderList[3020]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide86.message" "ab_rig_CRN.placeHolderList[3021]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide84.message" "ab_rig_CRN.placeHolderList[3022]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide85.message" "ab_rig_CRN.placeHolderList[3023]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors7.message" "ab_rig_CRN.placeHolderList[3024]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors5.message" "ab_rig_CRN.placeHolderList[3025]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition4.message" "ab_rig_CRN.placeHolderList[3026]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide24.message" "ab_rig_CRN.placeHolderList[3027]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide22.message" "ab_rig_CRN.placeHolderList[3028]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide26.message" "ab_rig_CRN.placeHolderList[3029]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide25.message" "ab_rig_CRN.placeHolderList[3030]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors8.message" "ab_rig_CRN.placeHolderList[3031]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors6.message" "ab_rig_CRN.placeHolderList[3032]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition5.message" "ab_rig_CRN.placeHolderList[3033]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide23.message" "ab_rig_CRN.placeHolderList[3034]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide28.message" "ab_rig_CRN.placeHolderList[3035]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide27.message" "ab_rig_CRN.placeHolderList[3036]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide87.message" "ab_rig_CRN.placeHolderList[3037]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide88.message" "ab_rig_CRN.placeHolderList[3038]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors3.message" "ab_rig_CRN.placeHolderList[3039]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors1.message" "ab_rig_CRN.placeHolderList[3040]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition1.message" "ab_rig_CRN.placeHolderList[3041]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide13.message" "ab_rig_CRN.placeHolderList[3042]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide11.message" "ab_rig_CRN.placeHolderList[3043]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide15.message" "ab_rig_CRN.placeHolderList[3044]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide14.message" "ab_rig_CRN.placeHolderList[3045]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors4.message" "ab_rig_CRN.placeHolderList[3046]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors2.message" "ab_rig_CRN.placeHolderList[3047]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition2.message" "ab_rig_CRN.placeHolderList[3048]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide12.message" "ab_rig_CRN.placeHolderList[3049]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide17.message" "ab_rig_CRN.placeHolderList[3050]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide16.message" "ab_rig_CRN.placeHolderList[3051]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide69.message" "ab_rig_CRN.placeHolderList[3052]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide70.message" "ab_rig_CRN.placeHolderList[3053]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide71.message" "ab_rig_CRN.placeHolderList[3054]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide72.message" "ab_rig_CRN.placeHolderList[3055]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide73.message" "ab_rig_CRN.placeHolderList[3056]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide76.message" "ab_rig_CRN.placeHolderList[3057]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide74.message" "ab_rig_CRN.placeHolderList[3058]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide75.message" "ab_rig_CRN.placeHolderList[3059]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide77.message" "ab_rig_CRN.placeHolderList[3060]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide78.message" "ab_rig_CRN.placeHolderList[3061]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide94.message" "ab_rig_CRN.placeHolderList[3062]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide95.message" "ab_rig_CRN.placeHolderList[3063]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide96.message" "ab_rig_CRN.placeHolderList[3064]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide97.message" "ab_rig_CRN.placeHolderList[3065]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide98.message" "ab_rig_CRN.placeHolderList[3066]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide59.message" "ab_rig_CRN.placeHolderList[3067]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide60.message" "ab_rig_CRN.placeHolderList[3068]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide61.message" "ab_rig_CRN.placeHolderList[3069]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide62.message" "ab_rig_CRN.placeHolderList[3070]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide63.message" "ab_rig_CRN.placeHolderList[3071]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide66.message" "ab_rig_CRN.placeHolderList[3072]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide64.message" "ab_rig_CRN.placeHolderList[3073]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide65.message" "ab_rig_CRN.placeHolderList[3074]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide67.message" "ab_rig_CRN.placeHolderList[3075]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide68.message" "ab_rig_CRN.placeHolderList[3076]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide56.message" "ab_rig_CRN.placeHolderList[3077]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendTwoAttr1.message" "ab_rig_CRN.placeHolderList[3078]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide55.message" "ab_rig_CRN.placeHolderList[3079]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide57.message" "ab_rig_CRN.placeHolderList[3080]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide58.message" "ab_rig_CRN.placeHolderList[3081]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors11.message" "ab_rig_CRN.placeHolderList[3082]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors9.message" "ab_rig_CRN.placeHolderList[3083]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition7.message" "ab_rig_CRN.placeHolderList[3084]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide35.message" "ab_rig_CRN.placeHolderList[3085]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide33.message" "ab_rig_CRN.placeHolderList[3086]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide37.message" "ab_rig_CRN.placeHolderList[3087]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide36.message" "ab_rig_CRN.placeHolderList[3088]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors12.message" "ab_rig_CRN.placeHolderList[3089]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors10.message" "ab_rig_CRN.placeHolderList[3090]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition8.message" "ab_rig_CRN.placeHolderList[3091]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide34.message" "ab_rig_CRN.placeHolderList[3092]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide39.message" "ab_rig_CRN.placeHolderList[3093]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide38.message" "ab_rig_CRN.placeHolderList[3094]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors15.message" "ab_rig_CRN.placeHolderList[3095]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors13.message" "ab_rig_CRN.placeHolderList[3096]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition10.message" "ab_rig_CRN.placeHolderList[3097]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide46.message" "ab_rig_CRN.placeHolderList[3098]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide44.message" "ab_rig_CRN.placeHolderList[3099]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide48.message" "ab_rig_CRN.placeHolderList[3100]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide47.message" "ab_rig_CRN.placeHolderList[3101]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors16.message" "ab_rig_CRN.placeHolderList[3102]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:blendColors14.message" "ab_rig_CRN.placeHolderList[3103]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:condition11.message" "ab_rig_CRN.placeHolderList[3104]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide45.message" "ab_rig_CRN.placeHolderList[3105]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide50.message" "ab_rig_CRN.placeHolderList[3106]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide49.message" "ab_rig_CRN.placeHolderList[3107]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide79.message" "ab_rig_CRN.placeHolderList[3108]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide80.message" "ab_rig_CRN.placeHolderList[3109]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide81.message" "ab_rig_CRN.placeHolderList[3110]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide82.message" "ab_rig_CRN.placeHolderList[3111]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide83.message" "ab_rig_CRN.placeHolderList[3112]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide92.message" "ab_rig_CRN.placeHolderList[3113]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide93.message" "ab_rig_CRN.placeHolderList[3114]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide91.message" "ab_rig_CRN.placeHolderList[3115]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide89.message" "ab_rig_CRN.placeHolderList[3116]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:rig1:multiplyDivide90.message" "ab_rig_CRN.placeHolderList[3117]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:skinCluster1.message" "ab_rig_CRN.placeHolderList[3118]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:bindPose4.message" "ab_rig_CRN.placeHolderList[3119]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:makeNurbCircle1.message" "ab_rig_CRN.placeHolderList[3120]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:transformGeometry1.message" "ab_rig_CRN.placeHolderList[3121]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pairBlend1.message" "ab_rig_CRN.placeHolderList[3122]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage37.message" "ab_rig_CRN.placeHolderList[3123]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide38.message" "ab_rig_CRN.placeHolderList[3124]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide58.message" "ab_rig_CRN.placeHolderList[3125]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage40.message" "ab_rig_CRN.placeHolderList[3126]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide41.message" "ab_rig_CRN.placeHolderList[3127]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide57.message" "ab_rig_CRN.placeHolderList[3128]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage38.message" "ab_rig_CRN.placeHolderList[3129]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide40.message" "ab_rig_CRN.placeHolderList[3130]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide56.message" "ab_rig_CRN.placeHolderList[3131]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage39.message" "ab_rig_CRN.placeHolderList[3132]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide39.message" "ab_rig_CRN.placeHolderList[3133]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide55.message" "ab_rig_CRN.placeHolderList[3134]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage46.message" "ab_rig_CRN.placeHolderList[3135]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide47.message" "ab_rig_CRN.placeHolderList[3136]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage45.message" "ab_rig_CRN.placeHolderList[3137]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide48.message" "ab_rig_CRN.placeHolderList[3138]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage47.message" "ab_rig_CRN.placeHolderList[3139]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide49.message" "ab_rig_CRN.placeHolderList[3140]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage50.message" "ab_rig_CRN.placeHolderList[3141]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide50.message" "ab_rig_CRN.placeHolderList[3142]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage41.message" "ab_rig_CRN.placeHolderList[3143]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide42.message" "ab_rig_CRN.placeHolderList[3144]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide62.message" "ab_rig_CRN.placeHolderList[3145]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage42.message" "ab_rig_CRN.placeHolderList[3146]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide43.message" "ab_rig_CRN.placeHolderList[3147]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide61.message" "ab_rig_CRN.placeHolderList[3148]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage43.message" "ab_rig_CRN.placeHolderList[3149]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide44.message" "ab_rig_CRN.placeHolderList[3150]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide59.message" "ab_rig_CRN.placeHolderList[3151]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage44.message" "ab_rig_CRN.placeHolderList[3152]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide45.message" "ab_rig_CRN.placeHolderList[3153]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide60.message" "ab_rig_CRN.placeHolderList[3154]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage52.message" "ab_rig_CRN.placeHolderList[3155]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide51.message" "ab_rig_CRN.placeHolderList[3156]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage49.message" "ab_rig_CRN.placeHolderList[3157]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide52.message" "ab_rig_CRN.placeHolderList[3158]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage51.message" "ab_rig_CRN.placeHolderList[3159]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide53.message" "ab_rig_CRN.placeHolderList[3160]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__plusMinusAverage48.message" "ab_rig_CRN.placeHolderList[3161]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide54.message" "ab_rig_CRN.placeHolderList[3162]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide120.message" "ab_rig_CRN.placeHolderList[3163]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide69.message" "ab_rig_CRN.placeHolderList[3164]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide68.message" "ab_rig_CRN.placeHolderList[3165]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide66.message" "ab_rig_CRN.placeHolderList[3166]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide65.message" "ab_rig_CRN.placeHolderList[3167]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide67.message" "ab_rig_CRN.placeHolderList[3168]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide71.message" "ab_rig_CRN.placeHolderList[3169]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide70.message" "ab_rig_CRN.placeHolderList[3170]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide63.message" "ab_rig_CRN.placeHolderList[3171]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide75.message" "ab_rig_CRN.placeHolderList[3172]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide73.message" "ab_rig_CRN.placeHolderList[3173]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide76.message" "ab_rig_CRN.placeHolderList[3174]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide78.message" "ab_rig_CRN.placeHolderList[3175]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide74.message" "ab_rig_CRN.placeHolderList[3176]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide72.message" "ab_rig_CRN.placeHolderList[3177]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:pasted__multiplyDivide64.message" "ab_rig_CRN.placeHolderList[3178]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:JNT_L.message" "ab_rig_CRN.placeHolderList[3179]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:GEO_L.message" "ab_rig_CRN.placeHolderList[3180]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:uiConfigurationScriptNode.message" "ab_rig_CRN.placeHolderList[3181]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:sceneConfigurationScriptNode.message" "ab_rig_CRN.placeHolderList[3182]" 
		""
		5 3 "ab_rig_CRN" "ab_rig_C:skinCluster2.message" "ab_rig_CRN.placeHolderList[3183]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Rig_C_body_translateX";
	rename -uid "691F87C8-4744-2CBB-409F-0586EFA64565";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 35 0;
createNode animCurveTL -n "Rig_C_body_translateY";
	rename -uid "DEBDC2FC-420D-EA5D-7EFF-95BAE5553753";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 65.682607745127143 13 74.746807613954772
		 16 65.682607745127143 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_translateZ";
	rename -uid "1678E5C2-47B9-6671-F2BB-3199206F082D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 35 0;
createNode animCurveTA -n "Rig_C_body_rotateX";
	rename -uid "FD80FE87-4BA8-A1E2-A6A9-00A812A7985F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 10 -26.42683339023738 15 -226.23957727190239
		 20 -360 22 -360 25 -360 29 -360 35 -360;
createNode animCurveTA -n "Rig_C_body_rotateY";
	rename -uid "1BC1FC36-4AB3-3522-D4A6-C0BAA7AEB884";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 35 0;
createNode animCurveTA -n "Rig_C_body_rotateZ";
	rename -uid "85DD159D-4526-0555-E7F4-D08EF72B5C6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 35 0;
createNode animCurveTU -n "Rig_C_body_scaleX";
	rename -uid "B638EEF6-4C46-F7B2-D120-058366C26E23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 1 29 1
		 35 1;
createNode animCurveTU -n "Rig_C_body_scaleY";
	rename -uid "C831D140-41B4-0022-C4EC-56A89FB59387";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 5 1 7 1 10 1.5158602675906423 15 1 20 1
		 22 1 25 1 29 1 35 1;
createNode animCurveTU -n "Rig_C_body_scaleZ";
	rename -uid "91FF4CF5-4C67-66E4-484B-1DA7C1E98A84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 1 29 1
		 35 1;
createNode animCurveTL -n "Rig_C_body_under_option_translateX";
	rename -uid "BB42E15F-415F-63D0-F4B3-D580E41B6FA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 7 0 10 0 15 0 19 0 20 0 25 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateY";
	rename -uid "0656AD2A-40C9-11C6-B4A2-549E035F0E0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 -5.3940436370983713 5 -6.6280100174992658
		 7 -2.4549786567089122 8 -12.549885813833876 9 -9.8818570376257124 10 -1.9675173544616027
		 15 -8.0356933952944782 17 -9.6404301887950332 19 -6.224942924851681 20 -5.5994210707009593
		 23 -5.6141555064311763 25 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateZ";
	rename -uid "B4537629-444F-2307-9FD0-9581A17D32A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 4.2780107316053213 8 4.2316564636069058
		 9 4.9421946424496292 10 4.4994416471255212 15 -4.2549964567274188 17 -2.6785893627112092
		 19 -0.71777360679326208 20 -1.3921789491094927 25 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateX";
	rename -uid "AEC2EABA-4DBE-7638-FCC9-19A200F83DD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 7 0 10 7.6986584995546323 15 19.827125820681271
		 19 0 20 0 25 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateY";
	rename -uid "E0AAA2B8-4A96-8718-8E2D-F2A0E91F11E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 7 0 10 0 15 0 19 0 20 0 25 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateZ";
	rename -uid "816A03B1-465B-BAC5-52A9-389FCFF98FA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 7 0 10 0 15 0 19 0 20 0 25 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleX";
	rename -uid "415FB34D-4C98-B891-F9AE-B8A7F0FB1B6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 2.103236245231086 7 1 10 0.97539406403660356
		 15 0.92581900666782113 19 0.9922851766934534 20 2.7536066473917282 25 1;
createNode animCurveTU -n "Rig_C_body_under_option_scaleY";
	rename -uid "45042390-4149-BDAF-A479-128BB04D8C12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 1 7 1 10 1 15 0.92581900666782113
		 19 0.9922851766934534 20 1 25 1;
createNode animCurveTU -n "Rig_C_body_under_option_scaleZ";
	rename -uid "39F1F85F-438C-7AB8-6C31-C194A40EBBFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 2.103236245231086 7 1 10 0.97539406403660356
		 15 0.92581900666782113 19 0.9922851766934534 20 2.7536066473917282 25 1;
createNode animCurveTL -n "Rig_R_body_upper_001_translateX";
	rename -uid "814D6935-4AA8-ECF9-190D-7ABDF3601D09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateY";
	rename -uid "6FE382CE-42B3-7492-7A8B-B29907318966";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_001_translateZ";
	rename -uid "F18A37D1-4DEC-92C2-2A17-76B46CBC181B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateX";
	rename -uid "4EDEF770-4978-AC1D-9FC3-0DBA1657B8F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateY";
	rename -uid "B2A6CDF7-4129-6296-9499-8D91935DD5DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_001_rotateZ";
	rename -uid "10D465E7-468E-B324-3D6B-F88FB8248028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_Root_001_translateX";
	rename -uid "4CBD9BEF-40A1-CF9F-F414-599B5991E72E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_Root_001_translateY";
	rename -uid "DAA37F0F-4955-3746-4588-B5BB0BFCDA93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_Root_001_translateZ";
	rename -uid "CBA26EBB-4FEF-F898-EE46-B295E9F816D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateX";
	rename -uid "07979822-4457-572C-A525-15A3707F0AB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateY";
	rename -uid "38215FE4-4726-61B3-76EC-A9B1097643EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_Root_001_rotateZ";
	rename -uid "EE743DED-4D4C-71C2-6256-10B9D56C2592";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateX";
	rename -uid "8942D57A-4EA2-697F-0FB1-58A11C7F3873";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateY";
	rename -uid "955F3137-495D-5FB9-0349-7CB572BA814E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_001_translateZ";
	rename -uid "6E4258D1-4F6C-5075-EACE-FB89873B478F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateX";
	rename -uid "3D58B44B-46ED-0175-FF63-8B97077BE110";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateY";
	rename -uid "CF8035CC-448E-F568-07F3-1CB7AED94E85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_001_rotateZ";
	rename -uid "9ACDE12E-482E-1FD8-E2B4-EAAEE188CEA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateX";
	rename -uid "FCFF02EB-41C3-A8A1-657B-F788D1C52BF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateY";
	rename -uid "EAE3DEB2-479F-5A70-7287-48A8650F971B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_002_translateZ";
	rename -uid "688AA01A-4C90-D561-078D-00A45903E57B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateX";
	rename -uid "78650B8F-4BFE-ABF3-8575-119622072DAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateY";
	rename -uid "3012BA20-4EF7-9989-064C-B49D4A2FFFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_002_rotateZ";
	rename -uid "9691A341-4EAA-724B-8DA0-F5A517358271";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateX";
	rename -uid "6EF1A81B-4357-5D13-EFD5-74A9102BBAFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateY";
	rename -uid "BE165A2D-48C6-C76D-9222-D294B049F288";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 7 0 10 0 15 0 16 0 18 8.0245401928455884
		 19 8.4366111685815071 20 -0.71479278690562709 22 0.077543732703748633 25 0 29 0 31 0
		 33 0;
createNode animCurveTL -n "Rig_C_body_upper_002_translateZ";
	rename -uid "E027A3DD-45D6-B63C-596E-6EB389A0F6CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 7 0 10 0 15 0 16 0 18 -7.8655405701249368
		 19 -4.7100313837665171 20 1.646959647466292 22 2.6304637120775216 25 0 29 0 31 0
		 33 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateX";
	rename -uid "B26424DF-4E16-D56C-8C70-73B350420DE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateY";
	rename -uid "63DA589B-4C68-D545-CA47-539024896C18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_002_rotateZ";
	rename -uid "5242B8A3-4A72-2FEE-CE17-3C87AA843DD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateX";
	rename -uid "C36931F9-4DD9-58DC-C052-CFB6B18D72A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateY";
	rename -uid "11675689-4ECA-F767-1FAF-05A4701A4CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_002_translateZ";
	rename -uid "BB945189-4B4C-D325-09A7-5F892C0B6C82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateX";
	rename -uid "54617AEB-4525-0412-A70E-A7A95C3DC873";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateY";
	rename -uid "EB26D8B9-4BC3-3187-1A07-74B492B9B820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_002_rotateZ";
	rename -uid "1A0DF546-42ED-8DDD-02DE-BC861E30C4A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateX";
	rename -uid "08BD23DE-4C4B-D070-2BDA-AFABB08D1AC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateY";
	rename -uid "0BE8A3C5-4DD6-4DCB-65FE-AB9B08EFA696";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_001_translateZ";
	rename -uid "A57B16D7-43AD-C4E0-3B65-9B941A29B9AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateX";
	rename -uid "36AE0108-430B-059B-7836-688D86BB7310";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateY";
	rename -uid "B750373C-4895-2617-D301-C4A27D0B4819";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_001_rotateZ";
	rename -uid "BD75D7D3-49D1-16E7-240B-D2B3C18A5A85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_root_translateX";
	rename -uid "33040E48-4D8E-481F-4CD1-A6AC41C3849D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_root_translateY";
	rename -uid "19BE5917-4BA3-B733-910D-CA887EA63E24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0.17308568191092799 7 0.11215952187828135
		 10 0 15 1.875150828744363 20 0.17308568191092799 22 0.031847765471610889 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_root_translateZ";
	rename -uid "1591621B-46AB-869D-5DC3-699DBB21E6CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 -0.18899785873140093 7 -0.17690199577259128
		 10 0 15 2.3671411577339363 20 -0.18899785873140093 22 -0.11927864862159536 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_root_rotateX";
	rename -uid "039FCA65-4A3F-28BE-FC53-0EA9075692B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 -19.499940966565639 7 -12.635961746334532
		 10 0 15 -7.852003768013466 20 -19.499940966565639 22 -12.306629410010322 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_root_rotateY";
	rename -uid "4ABEFB16-4550-1C44-0605-328B55230A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_root_rotateZ";
	rename -uid "67026A1B-4B53-0E38-60CB-49BCA9EEFC2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTU -n "Rig_C_eye_root_scaleX";
	rename -uid "4D02925C-48A8-2AF9-9BFD-5B9362C71554";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 0.8654220229184495
		 29 1 31 1.0100933482811163 33 1;
createNode animCurveTU -n "Rig_C_eye_root_scaleY";
	rename -uid "14A90034-4341-2057-EBDC-428E8C065D4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 1 29 1
		 31 1 33 1;
createNode animCurveTU -n "Rig_C_eye_root_scaleZ";
	rename -uid "DC0944A3-4351-189B-D93C-7E9B87CABED5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 1 29 1
		 31 1 33 1;
createNode animCurveTL -n "Rig_C_body_upper_option_translateX";
	rename -uid "147E3ABD-4F78-B1E5-4DDF-7496FF43CB63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateY";
	rename -uid "C8DBB689-469A-5F4E-77DC-6FA880B014F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 -8.8258224498654343 7 -3.9510330535018277
		 8 -2.1069706175446608 10 0.81897303316592385 15 2.5278348681718175 20 -13.407497789827197
		 22 -9.1494848163665168 25 6.1907759010797605 29 0 31 -0.46430819258098288 33 0;
createNode animCurveTL -n "Rig_C_body_upper_option_translateZ";
	rename -uid "7B06ADC8-428C-2814-7B55-8CB211215A63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 6.7500983978932396 7 9.8574494248533213
		 8 10.411607201542687 10 3.7103296987553551 15 -7.1443448426142933 20 0.63887622416691414
		 22 0.40320188369645293 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateX";
	rename -uid "C7F7F9ED-441C-6C0A-AAF2-23B53730546C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 26.554739431627269 7 -7.9423545549830736
		 10 -6.0874867196080906 15 -29.111358104454528 20 20.723220724593645 22 13.515482658793459
		 25 -3.9314502134491183 29 0 31 0.29485876600868394 33 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateY";
	rename -uid "6B333BCF-46CD-7A6A-E175-C2AC436F5C2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_option_rotateZ";
	rename -uid "A05D15FF-45C2-A38C-DB96-A1A6D1A0054B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleX";
	rename -uid "26169E2A-4D31-C7AC-AD27-81B84C468ECB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 0.84152414034676004
		 29 1 31 1.0165142360918493 33 1;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleY";
	rename -uid "E93B218A-4F67-59E5-43A8-7A93A196C4A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 1.079139713813523
		 29 1 31 1 33 1;
createNode animCurveTU -n "Rig_C_body_upper_option_scaleZ";
	rename -uid "A53BB740-4814-0A85-A796-84AC0B743F9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 0.84152414034676004
		 29 1 31 1.0165142360918493 33 1;
createNode animCurveTL -n "Rig_R_body_middle_001_translateX";
	rename -uid "AB1C51FA-497D-E5EF-9C90-97BFFEA3ADE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateY";
	rename -uid "95F651BC-4161-13F0-E4D4-CBA58AA2C2D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_001_translateZ";
	rename -uid "6CE35A4E-4AF7-A091-91B3-EAB8D71DA878";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateX";
	rename -uid "45EE20C5-487A-1FFD-D802-F398504DEFBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateY";
	rename -uid "EFCE9B58-47D6-AE65-E889-A7A96CB59B03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_001_rotateZ";
	rename -uid "D4D9F517-4505-57B7-CADB-6FB7E5E3C407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_translateX";
	rename -uid "B6B18194-458E-42EF-5CCD-DCA713A53B16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_translateY";
	rename -uid "57CCF716-44C2-DE6B-C8B5-96A861B91BB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 -1.6822057854604633 7 -1.3559765641708692
		 10 0 15 3.8575278643830542 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_translateZ";
	rename -uid "E31EB133-4557-BF2C-10FB-10A87C3F6B02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 -0.79990257068061332 7 -0.51833686580103744
		 10 0 15 -0.13337249222353018 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_rotateX";
	rename -uid "C5C3A9A3-4B1E-043B-0D9A-F2B2A9EF72C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 24.649080069908869 7 10.32661139631128
		 10 0 15 -20.246116229204389 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_rotateY";
	rename -uid "9501AE97-4879-C9B2-6E45-46A45283C125";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_rotateZ";
	rename -uid "86C12A46-430C-AF74-8D4C-579160A7BCFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTU -n "Rig_C_eye_scaleX";
	rename -uid "DBE401B2-4CCF-F386-6177-338B394FF1F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 0.99588867003807724 10 0.98832008533544657
		 15 1 20 1 22 1 25 0.38593403598953929 29 1 31 1.0142967901965776 33 1;
createNode animCurveTU -n "Rig_C_eye_scaleY";
	rename -uid "726EB079-444B-AB20-106D-DC88786F026F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 5 0.1398029388532952 7 0.44259230437693525
		 10 1 15 0.56990146942664777 18 1.0244934909644177 19 0.84910930255394768 20 0.1398029388532952
		 22 0.45712007696519019 25 1 29 1 31 1 33 1;
createNode animCurveTU -n "Rig_C_eye_scaleZ";
	rename -uid "CC7B5548-4395-576E-FEA5-7AAE11DE099E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1 15 1 20 1 22 1 25 1 29 1
		 31 1 33 1;
createNode animCurveTL -n "Rig_C_body_under_translateX";
	rename -uid "FB812813-42CD-C6A4-0DD8-0C9F7E5116AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 7 0 8 0 10 0 15 0 16 0.01247494890369941
		 17 0 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_translateY";
	rename -uid "F4FDC024-494C-73B3-49CC-5C9A418FB75E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 7 0 8 -2.3104645092179785 9 -25.149400261716821
		 10 -22.384437904242752 12 -17.338812271144324 15 -9.6646460884768004 16 -7.2559775759139375
		 17 0 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_translateZ";
	rename -uid "FC1FBCE6-43B6-A665-B850-89A26DA218C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 7 0 8 -1.8189628396935247 9 -19.197642955279946
		 10 -28.645390985572785 12 -39.581712977624719 15 -24.751392819682767 16 -20.563758954403777
		 17 0 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_rotateX";
	rename -uid "B68AA4E2-4A56-E8AF-9C65-E593B9794E8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 7 0 8 0 10 35.363235667870576 12 54.377022686257845
		 15 49.656356495544514 17 0 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_rotateY";
	rename -uid "2C9FEB8D-43A1-8FC4-DEF0-188CCB9936F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 8 0 10 0 15 0 17 0 20 0 22 0
		 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_rotateZ";
	rename -uid "77D59BEB-4B39-B646-B8DA-1D8E5A4CC70B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 8 0 10 0 15 0 17 0 20 0 22 0
		 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateX";
	rename -uid "3581C094-44D3-F0BC-BDF1-FCBDB854584B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateY";
	rename -uid "8B68CF78-4603-7C19-D84D-9CAAC2BE0489";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_sub_under_translateZ";
	rename -uid "A9A540DB-48BB-7228-2D7F-D8B6653127FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotateX";
	rename -uid "8DFB9B4A-4F18-316C-5B10-FA800BC4F7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotateY";
	rename -uid "6F319B05-4E1E-6055-A7A0-1A84932808B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_sub_under_rotateZ";
	rename -uid "B997DB1E-477B-81FF-7B02-3DA3FE7F7033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateX";
	rename -uid "B281C346-42D0-3DB8-247E-53AE0C20D415";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateY";
	rename -uid "DACFE65C-46F9-F122-E742-FEB0C89E4197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_003_translateZ";
	rename -uid "7F9DEE36-4919-0A6C-7CC0-4BAAB8514B4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateX";
	rename -uid "956F7E00-4676-174D-6B6C-CE9152458AF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateY";
	rename -uid "D5821323-414C-92E8-E123-D08A0585B166";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_003_rotateZ";
	rename -uid "9D1481C5-4B5F-636B-DC31-F0958D9517F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateX";
	rename -uid "71D2754C-48F0-01D5-2292-D88ABB50C764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateY";
	rename -uid "1E533312-4BE7-75BE-C798-C7A7B139F58E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 10 0 15 0 16 0 18 1.1407182308987445
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_003_translateZ";
	rename -uid "91107FD5-46C1-57A3-D7A1-10ACA84B02E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 10 0 15 0 16 0 18 -3.3705783282480977
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateX";
	rename -uid "8F919784-42D0-A017-F9A4-B598EC5FC480";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateY";
	rename -uid "46424AD9-4C42-0067-CCFE-A8AC17A0E658";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_003_rotateZ";
	rename -uid "4E20B071-4834-0B4E-858A-CA8BFD32ECC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateX";
	rename -uid "9D261FC2-459B-7BFB-E2C1-1892C2FF90DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateY";
	rename -uid "083CA14F-474D-031D-C4EB-D582B6D46C4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_middle_003_translateZ";
	rename -uid "3F2DD854-4795-B243-26DF-E48F2969791F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateX";
	rename -uid "48BDA409-4DC4-46D8-5D3E-3D904F53374D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateY";
	rename -uid "A39E6F49-4489-73AD-A414-2EBD2B87CEE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_middle_003_rotateZ";
	rename -uid "D5F23312-439B-241E-60C4-2B8D7B1FDCD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateX";
	rename -uid "8178236D-4737-9B3A-825A-D3957FC175A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateY";
	rename -uid "B9D587F9-4E84-1E82-6D7B-6DAB5935E3AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_001_translateZ";
	rename -uid "A4883446-4B13-72EF-DB4C-94BFB6E3803C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateX";
	rename -uid "FA575DD3-4BE2-BC65-185B-0A91ACBD97E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateY";
	rename -uid "2F4BD635-4E15-DA09-E236-E483CD5A8258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_001_rotateZ";
	rename -uid "1A14BD41-4F73-189A-5992-D898CD45B69D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateX";
	rename -uid "ACB4949F-4D45-A71D-01C3-A99B99342051";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateY";
	rename -uid "4EA8CB40-4301-71C4-6473-76B2B6BEC54A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_001_translateZ";
	rename -uid "A8A8E42E-48EE-1C84-35B5-6EACA0D00B40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateX";
	rename -uid "336F365B-482B-D2BA-A986-4CBAEB958B16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateY";
	rename -uid "C87436E0-4265-4714-72D7-39A43D753C5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_001_rotateZ";
	rename -uid "FB65F613-4B03-E650-A659-42A6805DF683";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateX";
	rename -uid "F9A7F42F-434F-6508-1B91-A4A609EA8FA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateY";
	rename -uid "4C9212DE-4E42-4439-A413-4DA3FD63A98D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_002_translateZ";
	rename -uid "59652A43-4174-68E0-57C0-7D8FC7F413D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateX";
	rename -uid "87D6CD38-40B7-1464-2CCE-5D8767D51EDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateY";
	rename -uid "CC52B347-405B-44F7-1C77-5696A6889F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_002_rotateZ";
	rename -uid "7D87C6CB-44E3-66F0-4FB7-6A9274408B94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateX";
	rename -uid "39AFB46D-494A-D6C6-E22A-75AB9F54DDBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateY";
	rename -uid "2BFF1EA0-44BB-DFC8-BA9D-F2A4CACDEB3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_002_translateZ";
	rename -uid "7D33DAFA-477F-07FA-94D2-E7ADAFB1CB39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateX";
	rename -uid "97908854-420C-CFAE-EB77-118950E1B4BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateY";
	rename -uid "2FDF0984-4040-C3F2-C9F5-F3B53AE6AB59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_002_rotateZ";
	rename -uid "7939AC8F-458A-3797-30E3-AFA2F2093BCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateX";
	rename -uid "D818985B-462C-F4D7-32C8-75883CD7BB43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateY";
	rename -uid "9C78CEAF-4ADD-B660-65F2-FF87E64FB44A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_002_translateZ";
	rename -uid "184108FC-42AF-FA35-558C-25A52F8A4A2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateX";
	rename -uid "1CE0C625-4A08-B05D-4B0D-29A88DEE1440";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateY";
	rename -uid "CAE26BE8-44A0-6A2F-844E-408F52F004E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_002_rotateZ";
	rename -uid "37BC38D1-4090-CC44-400A-C7A2774FA990";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateX";
	rename -uid "C37CA842-4EA2-1261-EF46-F29E1CF2AFCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateY";
	rename -uid "050D8E48-47D3-39A1-6640-DAA699C5174C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_eye_sub_translateZ";
	rename -uid "E30637B4-4C48-CEE9-A21A-0F8CA148667B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateX";
	rename -uid "0F912BF7-4268-66D6-DC5A-8E934D0506A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateY";
	rename -uid "08ED0937-4570-A70D-5FDD-BBA15F9781ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_eye_sub_rotateZ";
	rename -uid "12C0583D-46B3-7A99-D12A-D69D28C8E2FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateX";
	rename -uid "97FE4533-4A84-9F3D-4DD0-EEB19E59C7D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateY";
	rename -uid "6A0B03B7-4DDA-DF16-1EE7-61A918E3F4FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_upper_001_translateZ";
	rename -uid "81A407EF-4618-7DF8-5415-3DB336493ECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateX";
	rename -uid "08662FA5-4C28-AD74-7ED6-A1835F31CB0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateY";
	rename -uid "FEA14E97-4F59-4261-C863-06882CA14149";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_upper_001_rotateZ";
	rename -uid "A9DC29FD-4AAA-89B8-A03D-74AFCF756CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateX";
	rename -uid "C9D2F7E2-44BB-C750-DAC4-0F927F550676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateY";
	rename -uid "6F8FF7D3-481C-066F-2A2C-67A6E074538B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_middle_002_translateZ";
	rename -uid "2A4269CA-477B-9F75-530A-DC85FD30B5AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateX";
	rename -uid "ED1EFE7D-4079-F569-D606-9FB1635F7837";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateY";
	rename -uid "CD323CA6-45CD-8252-131E-E2930A19AB29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_middle_002_rotateZ";
	rename -uid "56A76C2D-4944-E297-A364-59B66053597D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateX";
	rename -uid "2FE6B075-41F8-7C3C-5D7A-5E8969B422B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateY";
	rename -uid "6C682B95-4CFB-F802-0ABD-7AA71DCAC3B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_eye_sub_translateZ";
	rename -uid "939EF7AF-42D8-94FD-31C6-DCA2E246A3F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateX";
	rename -uid "2D9BEDB6-4B65-DEF0-9ED2-CD92CC7A4E09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateY";
	rename -uid "B0C86526-462F-10ED-C039-31952BD1BB48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_eye_sub_rotateZ";
	rename -uid "21A7C2CF-4B46-080D-FB66-9881EC1A7802";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateX";
	rename -uid "3C9CB062-4F65-D18E-4E30-E4961F7A457D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateY";
	rename -uid "ECD917AE-4BD3-062C-99FE-2295162FEE66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_002_translateZ";
	rename -uid "EACC094B-4272-B21C-10D5-68A830860573";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateX";
	rename -uid "0A8D13FC-46F8-F0F4-53F3-D5924BBF0C0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateY";
	rename -uid "19F14987-4FD1-86D9-FAAA-37A5AC4A358E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_002_rotateZ";
	rename -uid "D76BA413-40C0-5CE7-E94E-AA90D4CC113C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateX";
	rename -uid "91C63DCB-4E9D-7904-2063-298DB3E7296A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateY";
	rename -uid "3B8809C2-43AA-C9FE-9FCA-0E83E8A1D335";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 10 0 15 0 16 0 18 1.1407182308987434
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_upper_003_translateZ";
	rename -uid "A35365A6-40BA-4B77-54D6-BDB0952CA409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 10 0 15 0 16 0 18 -3.3705783282480981
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateX";
	rename -uid "A3AA5546-4FF8-4A7F-A853-B8BE13B1AAD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateY";
	rename -uid "A196C78C-4F6D-3443-2003-63A8B0C626C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_upper_003_rotateZ";
	rename -uid "9FEB4F69-4518-D62C-0047-E68C8F0C3476";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 16 0 20 0 22 0 25 0
		 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateX1";
	rename -uid "52A61CD8-4F14-A3EF-F1DF-9280182248F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateY1";
	rename -uid "5D4F7BAF-4E6F-1900-BD00-58AC8BF41A98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 -6.8189572134181402 7 -3.9079106127155532
		 8 -16.455831453202698 9 -5.1952606798458163 10 -2.2767445239089139 15 -6.4119588604887143
		 19 -8.5414586176183445 20 -6.9724937481577118 21 -7.1802446947904439 22 -7.300611559080564
		 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_option_translateZ1";
	rename -uid "35E8CA01-4006-650F-7992-298E1A15D1DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 7 1.2262682049487839 8 1.5318318989127833
		 9 7.7182413093303195 10 6.663010022686839 15 -10.771870318804755 19 0.80381397050367731
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateX1";
	rename -uid "C96BF0D8-4996-733D-FC01-499F675A5FC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 2.6553019447127881 10 8.4220159022928875
		 15 32.957738110020735 19 -5.6645442537932604 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateY1";
	rename -uid "5A4E3105-4988-119F-6E78-7D9E00082264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 19 0.40188165746255655
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_option_rotateZ1";
	rename -uid "A7F310F0-472E-4373-E818-8AA9BFA3B4DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 15 0 19 0.19360640985685743
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTU -n "Rig_C_body_under_option_scaleX1";
	rename -uid "8196C320-4A7A-57ED-18E0-85B265966E6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 5 1.886945027276254 7 1.4544351828685129
		 8 1.2082529050457587 10 0.82716005587475605 15 0.75441097447189631 19 1.2062348851845139
		 20 2.4585025317112685 21 2.790861667708926 22 2.4988180616212783 25 0.68932425734998981
		 29 1 31 1.0165142360918493 33 1;
createNode animCurveTU -n "Rig_C_body_under_option_scaleY1";
	rename -uid "5FD3165C-4EEE-E5CC-E382-03BE40D8B841";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 5 1 7 0.9502795980254134 10 0.85874885802674261
		 15 1 19 1.4198128182158689 20 1.1797764259434556 21 1.0098442005416846 25 1 29 1
		 31 1 33 1;
createNode animCurveTU -n "Rig_C_body_under_option_scaleZ1";
	rename -uid "BDD5EAC2-4FB3-1F0F-86FD-D5B3FE33BA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1.886945027276254 7 1.4544351828685129
		 8 1.2082529050457587 10 0.70131850963305609 12 0.86742890503532444 15 0.75441097447189631
		 19 1.2062348851845139 20 2.4585025317112685 21 2.790861667708926 22 2.4988180616212783
		 25 0.68932425734998981 29 1 31 1.0165142360918493 33 1;
createNode animCurveTL -n "Rig_R_body_under_003_translateX";
	rename -uid "3558D9A3-4DE5-CEAF-27E6-10BBB2735E08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateY";
	rename -uid "2897DF69-4B15-FBD4-4791-D8B4DDEA9CDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_R_body_under_003_translateZ";
	rename -uid "DC07F33F-47D6-BC43-E876-ABB9FE778E99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateX";
	rename -uid "85E2CE28-45D6-AA4A-1C66-5FA49F2B1818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateY";
	rename -uid "3A92F91B-4115-D992-6FDF-578D575799A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_R_body_under_003_rotateZ";
	rename -uid "B75BACF9-401C-92F3-B89E-89898CA98A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_translateX";
	rename -uid "F5B6F579-4326-CDFC-E370-0ABF0C4EDC33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_translateY";
	rename -uid "918E1C18-4BF7-F4AD-4DE3-9DAC06924757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_translateZ";
	rename -uid "67C9009D-4AF9-E602-290D-2797C7725C47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateX";
	rename -uid "A5F0C5C9-44A9-804A-5C13-BAA7A771A4E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateY";
	rename -uid "D0F05D41-4568-BE34-C879-4AB55DA1FD59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_rotateZ";
	rename -uid "4F6C60F0-46D0-A66E-1B25-239B1ECC98B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_Root_002_translateX";
	rename -uid "8008B354-494E-C764-8102-EF9AC768AB6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_Root_002_translateY";
	rename -uid "6FD5C0FA-4EF2-6D56-816E-07A5938AB2CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_Root_002_translateZ";
	rename -uid "8BACF768-459F-5330-789D-D89154BC0DBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateX";
	rename -uid "FB810406-408B-8796-C0D7-1C8D5F0FEB12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateY";
	rename -uid "C90CC53B-4C9B-A000-4699-C78D661AD7E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_Root_002_rotateZ";
	rename -uid "D38642AE-4746-0054-94F0-4F8DD07C0D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateX";
	rename -uid "7623D828-4B27-6902-7D15-FA929CF2E7A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0.0069856603594473654
		 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateY";
	rename -uid "C52A23EB-4E39-21C6-8147-BB82B0BB6830";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 -8.0256121561757361 7 -4.2836204446181636
		 8 -2.882392948694203 10 -1.013293068441615 12 -0.62902942550993646 15 -5.9244113284918933
		 16 -6.4427169553670183 17 -8.5146427207304658 19 -7.5667839529036618 20 -13.135322674880079
		 21 -12.421378545950235 22 -6.4036714824502496 25 1.2907939834279141 29 0 31 -0.19047790558806721
		 33 0;
createNode animCurveTL -n "Rig_C_body_middle_option_translateZ";
	rename -uid "0C15A7A0-48FD-2CE6-D822-86B7B463EED5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 7 12.369330669001206 8 13.491703377209364
		 10 8.6071516709237095 12 4.4501218278516879 15 0.46136630069561313 16 0.24418589500229176
		 17 -1.9506488454041446 19 -2.7849238541816703 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateX";
	rename -uid "9BC08E14-4167-6EC0-C4AE-68AFD02069EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 6.1208380450784245 7 3.9663030532108192
		 10 1.9066064747079539 12 -0.70291320137012347 15 5.9494545798162264 16 1.8908179028734104
		 19 10.547513398220042 20 6.1208380450784245 22 2.7247366530988639 25 0 29 0 31 0
		 33 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateY";
	rename -uid "604110C8-4A26-547C-65EA-F0A7EB3D0C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 12 -0.13295625691845891
		 15 0 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_option_rotateZ";
	rename -uid "B9841C3F-4758-82DC-2A15-94A4AB708CC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 10 0 12 0.19179579859584589
		 15 0 20 0 22 0 25 0 29 0 31 0 33 0;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleX";
	rename -uid "67450A2A-4D42-86E1-A837-AAA555BB7A13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1.092578476885351 15 1 20 1
		 22 1 25 0.7797586889049648 29 1 31 1.0165142360918493 33 1;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleY";
	rename -uid "CC86B45D-481F-2AB7-B7A5-E1A89C2A746F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1.092578476885351 15 1 20 1
		 22 1 25 1.6727090335974046 29 1 31 1 33 1;
createNode animCurveTU -n "Rig_C_body_middle_option_scaleZ";
	rename -uid "4209FE45-4359-4CE1-54D5-FE9CF4199C6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 7 1 10 1.092578476885351 15 1 20 1
		 22 1 25 0.7798101854420092 29 1 31 1.0165142360918493 33 1;
createNode animCurveTL -n "Rig_C_body_under_002_translateX";
	rename -uid "CD9F50C3-4484-D710-33E8-008A6B4E6699";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateY";
	rename -uid "1BB1C649-4B14-0196-8142-0E895E35B676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_under_002_translateZ";
	rename -uid "21580F78-4979-8DEA-8D0E-A29E779EF868";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateX";
	rename -uid "9D3771AE-48EA-ED28-9BA7-8D843BA4387D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateY";
	rename -uid "35DDA220-48A7-0A65-E9EC-6DB19D662196";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_under_002_rotateZ";
	rename -uid "77D7E3F2-4B08-E98C-7B9B-B1841994E274";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateX";
	rename -uid "A63F0C8A-4E50-3947-6BC2-54A2023CC3CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateY";
	rename -uid "A0C84FD2-47FF-039F-1DBA-D99A5FB1F737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_upper_001_translateZ";
	rename -uid "90EF1992-4C05-0BCD-F9FC-C1ACDDEB576F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateX";
	rename -uid "AB966154-4AC0-87C8-406B-4F9243C76B48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateY";
	rename -uid "B2E21F45-4E28-EFC8-0D1A-1DBF916A50EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_upper_001_rotateZ";
	rename -uid "6D857C84-4CA2-D1F5-D15E-25906994D195";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateX";
	rename -uid "49C2DB75-4BBF-FFB6-24FB-03A2314A13F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateY";
	rename -uid "872CEC26-4A17-E7E7-6ABC-DE915E904E08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_L_body_under_003_translateZ";
	rename -uid "6EBF5AA6-4754-0B93-F92F-379317F04E2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateX";
	rename -uid "3258B3AF-456F-88E6-7EEE-119847915B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateY";
	rename -uid "C3364E72-4544-05C4-32AB-BDBCB5E4FB3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_L_body_under_003_rotateZ";
	rename -uid "C3C6888A-4BA6-8934-DF22-A9A1649A09C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateX";
	rename -uid "7E1C1608-4ECA-5973-EAAA-68BE05E72F74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateY";
	rename -uid "4FF67B18-42F4-646B-559A-92BDF6A718EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_body_middle_001_translateZ";
	rename -uid "E9CEA7C5-48BF-2C46-C4F8-979BEA99FA5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateX";
	rename -uid "FF614348-4A55-9305-335C-699937F57286";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateY";
	rename -uid "F4A24954-4588-B13F-91F5-508029845F14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_body_middle_001_rotateZ";
	rename -uid "43086A73-4628-FC49-247F-B98BA8EB091B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateX";
	rename -uid "7AFD32FB-4CC6-FED7-2D7A-5A8A796E8962";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateY";
	rename -uid "63CDCB15-40BD-D0EC-3583-959CB033FA67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTL -n "Rig_C_eye_sub_upper_translateZ";
	rename -uid "BE2EB5F1-45A4-932D-017B-999CFDA7CDB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotateX";
	rename -uid "8A19054A-4D60-2E5C-7E89-3D967353F984";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotateY";
	rename -uid "73D7F522-4907-35D7-A6DB-6F8C93E4544D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animCurveTA -n "Rig_C_eye_sub_upper_rotateZ";
	rename -uid "1867E029-4603-633A-FCCD-3994FCBD26B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 7 0 10 0 15 0 20 0 22 0 25 0 29 0
		 31 0 33 0;
createNode animLayer -n "BaseAnimation";
	rename -uid "6E02D5EC-4543-497F-CC30-DD82571D1BCF";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
	setAttr ".ovrd" yes;
createNode polyPlane -n "polyPlane1";
	rename -uid "FEFC7F41-4B04-D139-3B99-6884EF2ACB93";
	setAttr ".cuv" 2;
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
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
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
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 0.658099\n                -animateTransition 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 450\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "43904871-4EC6-C277-5975-FDA949223D7F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 45 -ast 0 -aet 424 ";
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
createNode animCurveTU -n "Rig_Other_sine_tre";
	rename -uid "E4F213A4-4088-C732-F2B2-A8BBA226F4BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
createNode animCurveTU -n "Rig_Other_sine_strength";
	rename -uid "3F8A9341-4CA8-AE6F-ECBE-0FBF1BD6A63E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
createNode animCurveTU -n "Rig_Other_eye_type";
	rename -uid "62839F8B-4DE7-19D3-E2E4-38B90641321A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Rig_Other_color";
	rename -uid "F410187F-4D37-9D4B-59E9-95858C0C8994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Rig_C_eye_ctrl_b_rotateY";
	rename -uid "6649A773-40C1-0B5B-09E1-5484FEE7997F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
createNode animCurveTL -n "Rig_C_eye_ctrl_a_translateZ";
	rename -uid "DCCFE695-4BA6-6AE7-6C38-9EAD1EAB1936";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.4408920985006262e-15 45 -4.4408920985006262e-15;
createNode animCurveTA -n "Rig_C_eye_ctrl_a_rotateX";
	rename -uid "4D965E90-4AEF-E5E9-4C7A-F1BFDE092BCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
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
connectAttr "ab_rig_CRN.phl[2337]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "ab_rig_CRN.phl[2338]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "ab_rig_CRN.phl[2339]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[788].dn"
		;
connectAttr "ab_rig_CRN.phl[2340]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "ab_rig_CRN.phl[2341]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "ab_rig_CRN.phl[2342]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "ab_rig_CRN.phl[2343]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "ab_rig_CRN.phl[2344]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Rig_C_Root_001_translateX.o" "ab_rig_CRN.phl[2345]";
connectAttr "Rig_C_Root_001_translateY.o" "ab_rig_CRN.phl[2346]";
connectAttr "Rig_C_Root_001_translateZ.o" "ab_rig_CRN.phl[2347]";
connectAttr "Rig_C_Root_001_rotateX.o" "ab_rig_CRN.phl[2348]";
connectAttr "Rig_C_Root_001_rotateY.o" "ab_rig_CRN.phl[2349]";
connectAttr "Rig_C_Root_001_rotateZ.o" "ab_rig_CRN.phl[2350]";
connectAttr "ab_rig_CRN.phl[2351]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn"
		;
connectAttr "ab_rig_CRN.phl[2352]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn"
		;
connectAttr "Rig_C_Root_002_translateX.o" "ab_rig_CRN.phl[2353]";
connectAttr "Rig_C_Root_002_translateY.o" "ab_rig_CRN.phl[2354]";
connectAttr "Rig_C_Root_002_translateZ.o" "ab_rig_CRN.phl[2355]";
connectAttr "Rig_C_Root_002_rotateX.o" "ab_rig_CRN.phl[2356]";
connectAttr "Rig_C_Root_002_rotateY.o" "ab_rig_CRN.phl[2357]";
connectAttr "Rig_C_Root_002_rotateZ.o" "ab_rig_CRN.phl[2358]";
connectAttr "ab_rig_CRN.phl[2359]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "Rig_C_body_translateX.o" "ab_rig_CRN.phl[2360]";
connectAttr "Rig_C_body_translateY.o" "ab_rig_CRN.phl[2361]";
connectAttr "Rig_C_body_translateZ.o" "ab_rig_CRN.phl[2362]";
connectAttr "Rig_C_body_rotateX.o" "ab_rig_CRN.phl[2363]";
connectAttr "Rig_C_body_rotateY.o" "ab_rig_CRN.phl[2364]";
connectAttr "Rig_C_body_rotateZ.o" "ab_rig_CRN.phl[2365]";
connectAttr "ab_rig_CRN.phl[2366]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn"
		;
connectAttr "ab_rig_CRN.phl[2367]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "ab_rig_CRN.phl[2368]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "ab_rig_CRN.phl[2369]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn"
		;
connectAttr "Rig_C_body_middle_option_translateX.o" "ab_rig_CRN.phl[2370]";
connectAttr "Rig_C_body_middle_option_translateY.o" "ab_rig_CRN.phl[2371]";
connectAttr "Rig_C_body_middle_option_translateZ.o" "ab_rig_CRN.phl[2372]";
connectAttr "Rig_C_body_middle_option_rotateX.o" "ab_rig_CRN.phl[2373]";
connectAttr "Rig_C_body_middle_option_rotateY.o" "ab_rig_CRN.phl[2374]";
connectAttr "Rig_C_body_middle_option_rotateZ.o" "ab_rig_CRN.phl[2375]";
connectAttr "Rig_C_body_middle_option_scaleX.o" "ab_rig_CRN.phl[2376]";
connectAttr "Rig_C_body_middle_option_scaleY.o" "ab_rig_CRN.phl[2377]";
connectAttr "Rig_C_body_middle_option_scaleZ.o" "ab_rig_CRN.phl[2378]";
connectAttr "ab_rig_CRN.phl[2379]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "ab_rig_CRN.phl[2380]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn"
		;
connectAttr "ab_rig_CRN.phl[2381]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "ab_rig_CRN.phl[2382]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[847].dn"
		;
connectAttr "ab_rig_CRN.phl[2383]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn"
		;
connectAttr "Rig_C_body_middle_001_translateX.o" "ab_rig_CRN.phl[2384]";
connectAttr "Rig_C_body_middle_001_translateY.o" "ab_rig_CRN.phl[2385]";
connectAttr "Rig_C_body_middle_001_translateZ.o" "ab_rig_CRN.phl[2386]";
connectAttr "Rig_C_body_middle_001_rotateX.o" "ab_rig_CRN.phl[2387]";
connectAttr "Rig_C_body_middle_001_rotateY.o" "ab_rig_CRN.phl[2388]";
connectAttr "Rig_C_body_middle_001_rotateZ.o" "ab_rig_CRN.phl[2389]";
connectAttr "ab_rig_CRN.phl[2390]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "ab_rig_CRN.phl[2391]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn"
		;
connectAttr "ab_rig_CRN.phl[2392]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "ab_rig_CRN.phl[2393]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "ab_rig_CRN.phl[2394]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn"
		;
connectAttr "ab_rig_CRN.phl[2395]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Rig_C_body_middle_002_translateX.o" "ab_rig_CRN.phl[2396]";
connectAttr "Rig_C_body_middle_002_translateY.o" "ab_rig_CRN.phl[2397]";
connectAttr "Rig_C_body_middle_002_translateZ.o" "ab_rig_CRN.phl[2398]";
connectAttr "Rig_C_body_middle_002_rotateX.o" "ab_rig_CRN.phl[2399]";
connectAttr "Rig_C_body_middle_002_rotateY.o" "ab_rig_CRN.phl[2400]";
connectAttr "Rig_C_body_middle_002_rotateZ.o" "ab_rig_CRN.phl[2401]";
connectAttr "ab_rig_CRN.phl[2402]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn"
		;
connectAttr "ab_rig_CRN.phl[2403]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "ab_rig_CRN.phl[2404]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[611].dn"
		;
connectAttr "ab_rig_CRN.phl[2405]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn"
		;
connectAttr "ab_rig_CRN.phl[2406]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "ab_rig_CRN.phl[2407]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "ab_rig_CRN.phl[2408]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn"
		;
connectAttr "Rig_L_body_middle_001_translateX.o" "ab_rig_CRN.phl[2409]";
connectAttr "Rig_L_body_middle_001_translateY.o" "ab_rig_CRN.phl[2410]";
connectAttr "Rig_L_body_middle_001_translateZ.o" "ab_rig_CRN.phl[2411]";
connectAttr "Rig_L_body_middle_001_rotateX.o" "ab_rig_CRN.phl[2412]";
connectAttr "Rig_L_body_middle_001_rotateY.o" "ab_rig_CRN.phl[2413]";
connectAttr "Rig_L_body_middle_001_rotateZ.o" "ab_rig_CRN.phl[2414]";
connectAttr "ab_rig_CRN.phl[2415]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn"
		;
connectAttr "ab_rig_CRN.phl[2416]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "ab_rig_CRN.phl[2417]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "ab_rig_CRN.phl[2418]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "ab_rig_CRN.phl[2419]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[584].dn"
		;
connectAttr "ab_rig_CRN.phl[2420]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Rig_L_body_middle_002_translateX.o" "ab_rig_CRN.phl[2421]";
connectAttr "Rig_L_body_middle_002_translateY.o" "ab_rig_CRN.phl[2422]";
connectAttr "Rig_L_body_middle_002_translateZ.o" "ab_rig_CRN.phl[2423]";
connectAttr "Rig_L_body_middle_002_rotateX.o" "ab_rig_CRN.phl[2424]";
connectAttr "Rig_L_body_middle_002_rotateY.o" "ab_rig_CRN.phl[2425]";
connectAttr "Rig_L_body_middle_002_rotateZ.o" "ab_rig_CRN.phl[2426]";
connectAttr "ab_rig_CRN.phl[2427]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "ab_rig_CRN.phl[2428]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "ab_rig_CRN.phl[2429]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "ab_rig_CRN.phl[2430]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "ab_rig_CRN.phl[2431]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[861].dn"
		;
connectAttr "ab_rig_CRN.phl[2432]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Rig_L_body_middle_003_translateX.o" "ab_rig_CRN.phl[2433]";
connectAttr "Rig_L_body_middle_003_translateY.o" "ab_rig_CRN.phl[2434]";
connectAttr "Rig_L_body_middle_003_translateZ.o" "ab_rig_CRN.phl[2435]";
connectAttr "Rig_L_body_middle_003_rotateX.o" "ab_rig_CRN.phl[2436]";
connectAttr "Rig_L_body_middle_003_rotateY.o" "ab_rig_CRN.phl[2437]";
connectAttr "Rig_L_body_middle_003_rotateZ.o" "ab_rig_CRN.phl[2438]";
connectAttr "ab_rig_CRN.phl[2439]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn"
		;
connectAttr "ab_rig_CRN.phl[2440]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "ab_rig_CRN.phl[2441]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn"
		;
connectAttr "ab_rig_CRN.phl[2442]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "ab_rig_CRN.phl[2443]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[856].dn"
		;
connectAttr "ab_rig_CRN.phl[2444]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[837].dn"
		;
connectAttr "ab_rig_CRN.phl[2445]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "Rig_R_body_middle_001_translateX.o" "ab_rig_CRN.phl[2446]";
connectAttr "Rig_R_body_middle_001_translateY.o" "ab_rig_CRN.phl[2447]";
connectAttr "Rig_R_body_middle_001_translateZ.o" "ab_rig_CRN.phl[2448]";
connectAttr "Rig_R_body_middle_001_rotateX.o" "ab_rig_CRN.phl[2449]";
connectAttr "Rig_R_body_middle_001_rotateY.o" "ab_rig_CRN.phl[2450]";
connectAttr "Rig_R_body_middle_001_rotateZ.o" "ab_rig_CRN.phl[2451]";
connectAttr "ab_rig_CRN.phl[2452]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "ab_rig_CRN.phl[2453]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "ab_rig_CRN.phl[2454]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "ab_rig_CRN.phl[2455]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "ab_rig_CRN.phl[2456]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn"
		;
connectAttr "ab_rig_CRN.phl[2457]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "Rig_R_body_middle_002_translateX.o" "ab_rig_CRN.phl[2458]";
connectAttr "Rig_R_body_middle_002_translateY.o" "ab_rig_CRN.phl[2459]";
connectAttr "Rig_R_body_middle_002_translateZ.o" "ab_rig_CRN.phl[2460]";
connectAttr "Rig_R_body_middle_002_rotateX.o" "ab_rig_CRN.phl[2461]";
connectAttr "Rig_R_body_middle_002_rotateY.o" "ab_rig_CRN.phl[2462]";
connectAttr "Rig_R_body_middle_002_rotateZ.o" "ab_rig_CRN.phl[2463]";
connectAttr "ab_rig_CRN.phl[2464]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn"
		;
connectAttr "ab_rig_CRN.phl[2465]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn"
		;
connectAttr "ab_rig_CRN.phl[2466]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn"
		;
connectAttr "ab_rig_CRN.phl[2467]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "ab_rig_CRN.phl[2468]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn"
		;
connectAttr "ab_rig_CRN.phl[2469]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Rig_R_body_middle_003_translateX.o" "ab_rig_CRN.phl[2470]";
connectAttr "Rig_R_body_middle_003_translateY.o" "ab_rig_CRN.phl[2471]";
connectAttr "Rig_R_body_middle_003_translateZ.o" "ab_rig_CRN.phl[2472]";
connectAttr "Rig_R_body_middle_003_rotateX.o" "ab_rig_CRN.phl[2473]";
connectAttr "Rig_R_body_middle_003_rotateY.o" "ab_rig_CRN.phl[2474]";
connectAttr "Rig_R_body_middle_003_rotateZ.o" "ab_rig_CRN.phl[2475]";
connectAttr "ab_rig_CRN.phl[2476]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "ab_rig_CRN.phl[2477]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "ab_rig_CRN.phl[2478]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "ab_rig_CRN.phl[2479]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn"
		;
connectAttr "ab_rig_CRN.phl[2480]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn"
		;
connectAttr "ab_rig_CRN.phl[2481]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "Rig_C_body_under_option_translateX1.o" "ab_rig_CRN.phl[2482]";
connectAttr "Rig_C_body_under_option_translateY1.o" "ab_rig_CRN.phl[2483]";
connectAttr "Rig_C_body_under_option_translateZ1.o" "ab_rig_CRN.phl[2484]";
connectAttr "Rig_C_body_under_option_rotateX1.o" "ab_rig_CRN.phl[2485]";
connectAttr "Rig_C_body_under_option_rotateY1.o" "ab_rig_CRN.phl[2486]";
connectAttr "Rig_C_body_under_option_rotateZ1.o" "ab_rig_CRN.phl[2487]";
connectAttr "Rig_C_body_under_option_scaleX1.o" "ab_rig_CRN.phl[2488]";
connectAttr "Rig_C_body_under_option_scaleY1.o" "ab_rig_CRN.phl[2489]";
connectAttr "Rig_C_body_under_option_scaleZ1.o" "ab_rig_CRN.phl[2490]";
connectAttr "ab_rig_CRN.phl[2491]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "ab_rig_CRN.phl[2492]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn"
		;
connectAttr "ab_rig_CRN.phl[2493]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "ab_rig_CRN.phl[2494]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "ab_rig_CRN.phl[2495]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn"
		;
connectAttr "Rig_C_body_under_001_translateX.o" "ab_rig_CRN.phl[2496]";
connectAttr "Rig_C_body_under_001_translateY.o" "ab_rig_CRN.phl[2497]";
connectAttr "Rig_C_body_under_001_translateZ.o" "ab_rig_CRN.phl[2498]";
connectAttr "Rig_C_body_under_001_rotateX.o" "ab_rig_CRN.phl[2499]";
connectAttr "Rig_C_body_under_001_rotateY.o" "ab_rig_CRN.phl[2500]";
connectAttr "Rig_C_body_under_001_rotateZ.o" "ab_rig_CRN.phl[2501]";
connectAttr "ab_rig_CRN.phl[2502]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "ab_rig_CRN.phl[2503]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn"
		;
connectAttr "ab_rig_CRN.phl[2504]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "ab_rig_CRN.phl[2505]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn"
		;
connectAttr "ab_rig_CRN.phl[2506]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "ab_rig_CRN.phl[2507]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[796].dn"
		;
connectAttr "Rig_C_body_under_002_translateX.o" "ab_rig_CRN.phl[2508]";
connectAttr "Rig_C_body_under_002_translateY.o" "ab_rig_CRN.phl[2509]";
connectAttr "Rig_C_body_under_002_translateZ.o" "ab_rig_CRN.phl[2510]";
connectAttr "Rig_C_body_under_002_rotateX.o" "ab_rig_CRN.phl[2511]";
connectAttr "Rig_C_body_under_002_rotateY.o" "ab_rig_CRN.phl[2512]";
connectAttr "Rig_C_body_under_002_rotateZ.o" "ab_rig_CRN.phl[2513]";
connectAttr "ab_rig_CRN.phl[2514]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn"
		;
connectAttr "ab_rig_CRN.phl[2515]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "ab_rig_CRN.phl[2516]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "ab_rig_CRN.phl[2517]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "ab_rig_CRN.phl[2518]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn"
		;
connectAttr "ab_rig_CRN.phl[2519]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "ab_rig_CRN.phl[2520]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn"
		;
connectAttr "Rig_L_body_under_001_translateX.o" "ab_rig_CRN.phl[2521]";
connectAttr "Rig_L_body_under_001_translateY.o" "ab_rig_CRN.phl[2522]";
connectAttr "Rig_L_body_under_001_translateZ.o" "ab_rig_CRN.phl[2523]";
connectAttr "Rig_L_body_under_001_rotateX.o" "ab_rig_CRN.phl[2524]";
connectAttr "Rig_L_body_under_001_rotateY.o" "ab_rig_CRN.phl[2525]";
connectAttr "Rig_L_body_under_001_rotateZ.o" "ab_rig_CRN.phl[2526]";
connectAttr "ab_rig_CRN.phl[2527]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn"
		;
connectAttr "ab_rig_CRN.phl[2528]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "ab_rig_CRN.phl[2529]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn"
		;
connectAttr "ab_rig_CRN.phl[2530]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn"
		;
connectAttr "ab_rig_CRN.phl[2531]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn"
		;
connectAttr "ab_rig_CRN.phl[2532]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Rig_L_body_under_002_translateX.o" "ab_rig_CRN.phl[2533]";
connectAttr "Rig_L_body_under_002_translateY.o" "ab_rig_CRN.phl[2534]";
connectAttr "Rig_L_body_under_002_translateZ.o" "ab_rig_CRN.phl[2535]";
connectAttr "Rig_L_body_under_002_rotateX.o" "ab_rig_CRN.phl[2536]";
connectAttr "Rig_L_body_under_002_rotateY.o" "ab_rig_CRN.phl[2537]";
connectAttr "Rig_L_body_under_002_rotateZ.o" "ab_rig_CRN.phl[2538]";
connectAttr "ab_rig_CRN.phl[2539]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "ab_rig_CRN.phl[2540]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn"
		;
connectAttr "ab_rig_CRN.phl[2541]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "ab_rig_CRN.phl[2542]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "ab_rig_CRN.phl[2543]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn"
		;
connectAttr "ab_rig_CRN.phl[2544]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Rig_L_body_under_003_translateX.o" "ab_rig_CRN.phl[2545]";
connectAttr "Rig_L_body_under_003_translateY.o" "ab_rig_CRN.phl[2546]";
connectAttr "Rig_L_body_under_003_translateZ.o" "ab_rig_CRN.phl[2547]";
connectAttr "Rig_L_body_under_003_rotateX.o" "ab_rig_CRN.phl[2548]";
connectAttr "Rig_L_body_under_003_rotateY.o" "ab_rig_CRN.phl[2549]";
connectAttr "Rig_L_body_under_003_rotateZ.o" "ab_rig_CRN.phl[2550]";
connectAttr "ab_rig_CRN.phl[2551]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "ab_rig_CRN.phl[2552]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn"
		;
connectAttr "ab_rig_CRN.phl[2553]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn"
		;
connectAttr "ab_rig_CRN.phl[2554]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn"
		;
connectAttr "ab_rig_CRN.phl[2555]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[633].dn"
		;
connectAttr "ab_rig_CRN.phl[2556]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "ab_rig_CRN.phl[2557]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "Rig_R_body_under_001_translateX.o" "ab_rig_CRN.phl[2558]";
connectAttr "Rig_R_body_under_001_translateY.o" "ab_rig_CRN.phl[2559]";
connectAttr "Rig_R_body_under_001_translateZ.o" "ab_rig_CRN.phl[2560]";
connectAttr "Rig_R_body_under_001_rotateX.o" "ab_rig_CRN.phl[2561]";
connectAttr "Rig_R_body_under_001_rotateY.o" "ab_rig_CRN.phl[2562]";
connectAttr "Rig_R_body_under_001_rotateZ.o" "ab_rig_CRN.phl[2563]";
connectAttr "ab_rig_CRN.phl[2564]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[819].dn"
		;
connectAttr "ab_rig_CRN.phl[2565]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "ab_rig_CRN.phl[2566]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn"
		;
connectAttr "ab_rig_CRN.phl[2567]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn"
		;
connectAttr "ab_rig_CRN.phl[2568]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "ab_rig_CRN.phl[2569]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn"
		;
connectAttr "Rig_R_body_under_002_translateX.o" "ab_rig_CRN.phl[2570]";
connectAttr "Rig_R_body_under_002_translateY.o" "ab_rig_CRN.phl[2571]";
connectAttr "Rig_R_body_under_002_translateZ.o" "ab_rig_CRN.phl[2572]";
connectAttr "Rig_R_body_under_002_rotateX.o" "ab_rig_CRN.phl[2573]";
connectAttr "Rig_R_body_under_002_rotateY.o" "ab_rig_CRN.phl[2574]";
connectAttr "Rig_R_body_under_002_rotateZ.o" "ab_rig_CRN.phl[2575]";
connectAttr "ab_rig_CRN.phl[2576]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[601].dn"
		;
connectAttr "ab_rig_CRN.phl[2577]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "ab_rig_CRN.phl[2578]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn"
		;
connectAttr "ab_rig_CRN.phl[2579]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "ab_rig_CRN.phl[2580]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "ab_rig_CRN.phl[2581]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Rig_R_body_under_003_translateX.o" "ab_rig_CRN.phl[2582]";
connectAttr "Rig_R_body_under_003_translateY.o" "ab_rig_CRN.phl[2583]";
connectAttr "Rig_R_body_under_003_translateZ.o" "ab_rig_CRN.phl[2584]";
connectAttr "Rig_R_body_under_003_rotateX.o" "ab_rig_CRN.phl[2585]";
connectAttr "Rig_R_body_under_003_rotateY.o" "ab_rig_CRN.phl[2586]";
connectAttr "Rig_R_body_under_003_rotateZ.o" "ab_rig_CRN.phl[2587]";
connectAttr "ab_rig_CRN.phl[2588]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "ab_rig_CRN.phl[2589]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "ab_rig_CRN.phl[2590]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "ab_rig_CRN.phl[2591]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn"
		;
connectAttr "ab_rig_CRN.phl[2592]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "ab_rig_CRN.phl[2593]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Rig_C_body_under_translateX.o" "ab_rig_CRN.phl[2594]";
connectAttr "Rig_C_body_under_translateY.o" "ab_rig_CRN.phl[2595]";
connectAttr "Rig_C_body_under_translateZ.o" "ab_rig_CRN.phl[2596]";
connectAttr "Rig_C_body_under_rotateX.o" "ab_rig_CRN.phl[2597]";
connectAttr "Rig_C_body_under_rotateY.o" "ab_rig_CRN.phl[2598]";
connectAttr "Rig_C_body_under_rotateZ.o" "ab_rig_CRN.phl[2599]";
connectAttr "ab_rig_CRN.phl[2600]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn"
		;
connectAttr "ab_rig_CRN.phl[2601]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[594].dn"
		;
connectAttr "ab_rig_CRN.phl[2602]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "ab_rig_CRN.phl[2603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[857].dn"
		;
connectAttr "ab_rig_CRN.phl[2604]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "ab_rig_CRN.phl[2605]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "Rig_C_body_upper_option_translateX.o" "ab_rig_CRN.phl[2606]";
connectAttr "Rig_C_body_upper_option_translateY.o" "ab_rig_CRN.phl[2607]";
connectAttr "Rig_C_body_upper_option_translateZ.o" "ab_rig_CRN.phl[2608]";
connectAttr "Rig_C_body_upper_option_rotateX.o" "ab_rig_CRN.phl[2609]";
connectAttr "Rig_C_body_upper_option_rotateY.o" "ab_rig_CRN.phl[2610]";
connectAttr "Rig_C_body_upper_option_rotateZ.o" "ab_rig_CRN.phl[2611]";
connectAttr "Rig_C_body_upper_option_scaleX.o" "ab_rig_CRN.phl[2612]";
connectAttr "Rig_C_body_upper_option_scaleY.o" "ab_rig_CRN.phl[2613]";
connectAttr "Rig_C_body_upper_option_scaleZ.o" "ab_rig_CRN.phl[2614]";
connectAttr "ab_rig_CRN.phl[2615]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "ab_rig_CRN.phl[2616]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "ab_rig_CRN.phl[2617]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[813].dn"
		;
connectAttr "ab_rig_CRN.phl[2618]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "ab_rig_CRN.phl[2619]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[776].dn"
		;
connectAttr "Rig_C_body_upper_001_translateX.o" "ab_rig_CRN.phl[2620]";
connectAttr "Rig_C_body_upper_001_translateY.o" "ab_rig_CRN.phl[2621]";
connectAttr "Rig_C_body_upper_001_translateZ.o" "ab_rig_CRN.phl[2622]";
connectAttr "Rig_C_body_upper_001_rotateX.o" "ab_rig_CRN.phl[2623]";
connectAttr "Rig_C_body_upper_001_rotateY.o" "ab_rig_CRN.phl[2624]";
connectAttr "Rig_C_body_upper_001_rotateZ.o" "ab_rig_CRN.phl[2625]";
connectAttr "ab_rig_CRN.phl[2626]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[634].dn"
		;
connectAttr "ab_rig_CRN.phl[2627]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn"
		;
connectAttr "ab_rig_CRN.phl[2628]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "ab_rig_CRN.phl[2629]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "ab_rig_CRN.phl[2630]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[842].dn"
		;
connectAttr "ab_rig_CRN.phl[2631]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Rig_C_body_upper_002_translateX.o" "ab_rig_CRN.phl[2632]";
connectAttr "Rig_C_body_upper_002_translateY.o" "ab_rig_CRN.phl[2633]";
connectAttr "Rig_C_body_upper_002_translateZ.o" "ab_rig_CRN.phl[2634]";
connectAttr "Rig_C_body_upper_002_rotateX.o" "ab_rig_CRN.phl[2635]";
connectAttr "Rig_C_body_upper_002_rotateY.o" "ab_rig_CRN.phl[2636]";
connectAttr "Rig_C_body_upper_002_rotateZ.o" "ab_rig_CRN.phl[2637]";
connectAttr "ab_rig_CRN.phl[2638]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "ab_rig_CRN.phl[2639]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[849].dn"
		;
connectAttr "ab_rig_CRN.phl[2640]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "ab_rig_CRN.phl[2641]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "ab_rig_CRN.phl[2642]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn"
		;
connectAttr "ab_rig_CRN.phl[2643]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[863].dn"
		;
connectAttr "ab_rig_CRN.phl[2644]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Rig_L_body_upper_001_translateX.o" "ab_rig_CRN.phl[2645]";
connectAttr "Rig_L_body_upper_001_translateY.o" "ab_rig_CRN.phl[2646]";
connectAttr "Rig_L_body_upper_001_translateZ.o" "ab_rig_CRN.phl[2647]";
connectAttr "Rig_L_body_upper_001_rotateX.o" "ab_rig_CRN.phl[2648]";
connectAttr "Rig_L_body_upper_001_rotateY.o" "ab_rig_CRN.phl[2649]";
connectAttr "Rig_L_body_upper_001_rotateZ.o" "ab_rig_CRN.phl[2650]";
connectAttr "ab_rig_CRN.phl[2651]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "ab_rig_CRN.phl[2652]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "ab_rig_CRN.phl[2653]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "ab_rig_CRN.phl[2654]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "ab_rig_CRN.phl[2655]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "ab_rig_CRN.phl[2656]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn"
		;
connectAttr "Rig_L_body_upper_002_translateX.o" "ab_rig_CRN.phl[2657]";
connectAttr "Rig_L_body_upper_002_translateY.o" "ab_rig_CRN.phl[2658]";
connectAttr "Rig_L_body_upper_002_translateZ.o" "ab_rig_CRN.phl[2659]";
connectAttr "Rig_L_body_upper_002_rotateX.o" "ab_rig_CRN.phl[2660]";
connectAttr "Rig_L_body_upper_002_rotateY.o" "ab_rig_CRN.phl[2661]";
connectAttr "Rig_L_body_upper_002_rotateZ.o" "ab_rig_CRN.phl[2662]";
connectAttr "ab_rig_CRN.phl[2663]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn"
		;
connectAttr "ab_rig_CRN.phl[2664]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[825].dn"
		;
connectAttr "ab_rig_CRN.phl[2665]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[855].dn"
		;
connectAttr "ab_rig_CRN.phl[2666]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "ab_rig_CRN.phl[2667]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[597].dn"
		;
connectAttr "ab_rig_CRN.phl[2668]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Rig_L_body_upper_003_translateX.o" "ab_rig_CRN.phl[2669]";
connectAttr "Rig_L_body_upper_003_translateY.o" "ab_rig_CRN.phl[2670]";
connectAttr "Rig_L_body_upper_003_translateZ.o" "ab_rig_CRN.phl[2671]";
connectAttr "Rig_L_body_upper_003_rotateX.o" "ab_rig_CRN.phl[2672]";
connectAttr "Rig_L_body_upper_003_rotateY.o" "ab_rig_CRN.phl[2673]";
connectAttr "Rig_L_body_upper_003_rotateZ.o" "ab_rig_CRN.phl[2674]";
connectAttr "ab_rig_CRN.phl[2675]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "ab_rig_CRN.phl[2676]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn"
		;
connectAttr "ab_rig_CRN.phl[2677]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn"
		;
connectAttr "ab_rig_CRN.phl[2678]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn"
		;
connectAttr "ab_rig_CRN.phl[2679]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "ab_rig_CRN.phl[2680]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "ab_rig_CRN.phl[2681]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[867].dn"
		;
connectAttr "Rig_R_body_upper_001_translateX.o" "ab_rig_CRN.phl[2682]";
connectAttr "Rig_R_body_upper_001_translateY.o" "ab_rig_CRN.phl[2683]";
connectAttr "Rig_R_body_upper_001_translateZ.o" "ab_rig_CRN.phl[2684]";
connectAttr "Rig_R_body_upper_001_rotateX.o" "ab_rig_CRN.phl[2685]";
connectAttr "Rig_R_body_upper_001_rotateY.o" "ab_rig_CRN.phl[2686]";
connectAttr "Rig_R_body_upper_001_rotateZ.o" "ab_rig_CRN.phl[2687]";
connectAttr "ab_rig_CRN.phl[2688]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "ab_rig_CRN.phl[2689]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "ab_rig_CRN.phl[2690]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "ab_rig_CRN.phl[2691]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "ab_rig_CRN.phl[2692]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn"
		;
connectAttr "ab_rig_CRN.phl[2693]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Rig_R_body_upper_002_translateX.o" "ab_rig_CRN.phl[2694]";
connectAttr "Rig_R_body_upper_002_translateY.o" "ab_rig_CRN.phl[2695]";
connectAttr "Rig_R_body_upper_002_translateZ.o" "ab_rig_CRN.phl[2696]";
connectAttr "Rig_R_body_upper_002_rotateX.o" "ab_rig_CRN.phl[2697]";
connectAttr "Rig_R_body_upper_002_rotateY.o" "ab_rig_CRN.phl[2698]";
connectAttr "Rig_R_body_upper_002_rotateZ.o" "ab_rig_CRN.phl[2699]";
connectAttr "ab_rig_CRN.phl[2700]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn"
		;
connectAttr "ab_rig_CRN.phl[2701]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "ab_rig_CRN.phl[2702]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "ab_rig_CRN.phl[2703]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "ab_rig_CRN.phl[2704]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn"
		;
connectAttr "ab_rig_CRN.phl[2705]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Rig_R_body_upper_003_translateX.o" "ab_rig_CRN.phl[2706]";
connectAttr "Rig_R_body_upper_003_translateY.o" "ab_rig_CRN.phl[2707]";
connectAttr "Rig_R_body_upper_003_translateZ.o" "ab_rig_CRN.phl[2708]";
connectAttr "Rig_R_body_upper_003_rotateX.o" "ab_rig_CRN.phl[2709]";
connectAttr "Rig_R_body_upper_003_rotateY.o" "ab_rig_CRN.phl[2710]";
connectAttr "Rig_R_body_upper_003_rotateZ.o" "ab_rig_CRN.phl[2711]";
connectAttr "ab_rig_CRN.phl[2712]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[775].dn"
		;
connectAttr "ab_rig_CRN.phl[2713]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[814].dn"
		;
connectAttr "ab_rig_CRN.phl[2714]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "ab_rig_CRN.phl[2715]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "ab_rig_CRN.phl[2716]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[784].dn"
		;
connectAttr "ab_rig_CRN.phl[2717]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn"
		;
connectAttr "Rig_C_body_upper_translateX.o" "ab_rig_CRN.phl[2718]";
connectAttr "Rig_C_body_upper_translateY.o" "ab_rig_CRN.phl[2719]";
connectAttr "Rig_C_body_upper_translateZ.o" "ab_rig_CRN.phl[2720]";
connectAttr "Rig_C_body_upper_rotateX.o" "ab_rig_CRN.phl[2721]";
connectAttr "Rig_C_body_upper_rotateY.o" "ab_rig_CRN.phl[2722]";
connectAttr "Rig_C_body_upper_rotateZ.o" "ab_rig_CRN.phl[2723]";
connectAttr "ab_rig_CRN.phl[2724]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn"
		;
connectAttr "ab_rig_CRN.phl[2725]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn"
		;
connectAttr "ab_rig_CRN.phl[2726]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "ab_rig_CRN.phl[2727]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "ab_rig_CRN.phl[2728]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "ab_rig_CRN.phl[2729]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[865].dn"
		;
connectAttr "Rig_C_eye_ctrl_b_rotateY.o" "ab_rig_CRN.phl[2730]";
connectAttr "Rig_C_eye_ctrl_a_translateZ.o" "ab_rig_CRN.phl[2731]";
connectAttr "Rig_C_eye_ctrl_a_rotateX.o" "ab_rig_CRN.phl[2732]";
connectAttr "ab_rig_CRN.phl[2733]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "ab_rig_CRN.phl[2734]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Rig_C_eye_root_translateX.o" "ab_rig_CRN.phl[2735]";
connectAttr "Rig_C_eye_root_translateY.o" "ab_rig_CRN.phl[2736]";
connectAttr "Rig_C_eye_root_translateZ.o" "ab_rig_CRN.phl[2737]";
connectAttr "Rig_C_eye_root_rotateX.o" "ab_rig_CRN.phl[2738]";
connectAttr "Rig_C_eye_root_rotateY.o" "ab_rig_CRN.phl[2739]";
connectAttr "Rig_C_eye_root_rotateZ.o" "ab_rig_CRN.phl[2740]";
connectAttr "Rig_C_eye_root_scaleX.o" "ab_rig_CRN.phl[2741]";
connectAttr "Rig_C_eye_root_scaleY.o" "ab_rig_CRN.phl[2742]";
connectAttr "Rig_C_eye_root_scaleZ.o" "ab_rig_CRN.phl[2743]";
connectAttr "ab_rig_CRN.phl[2744]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn"
		;
connectAttr "ab_rig_CRN.phl[2745]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn"
		;
connectAttr "ab_rig_CRN.phl[2746]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "ab_rig_CRN.phl[2747]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn"
		;
connectAttr "ab_rig_CRN.phl[2748]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn"
		;
connectAttr "ab_rig_CRN.phl[2749]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn"
		;
connectAttr "Rig_C_eye_translateX.o" "ab_rig_CRN.phl[2750]";
connectAttr "Rig_C_eye_translateY.o" "ab_rig_CRN.phl[2751]";
connectAttr "Rig_C_eye_translateZ.o" "ab_rig_CRN.phl[2752]";
connectAttr "Rig_C_eye_rotateX.o" "ab_rig_CRN.phl[2753]";
connectAttr "Rig_C_eye_rotateY.o" "ab_rig_CRN.phl[2754]";
connectAttr "Rig_C_eye_rotateZ.o" "ab_rig_CRN.phl[2755]";
connectAttr "Rig_C_eye_scaleX.o" "ab_rig_CRN.phl[2756]";
connectAttr "Rig_C_eye_scaleY.o" "ab_rig_CRN.phl[2757]";
connectAttr "Rig_C_eye_scaleZ.o" "ab_rig_CRN.phl[2758]";
connectAttr "ab_rig_CRN.phl[2759]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "ab_rig_CRN.phl[2760]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn"
		;
connectAttr "ab_rig_CRN.phl[2761]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn"
		;
connectAttr "ab_rig_CRN.phl[2762]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "ab_rig_CRN.phl[2763]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn"
		;
connectAttr "ab_rig_CRN.phl[2764]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn"
		;
connectAttr "Rig_C_eye_sub_under_translateX.o" "ab_rig_CRN.phl[2765]";
connectAttr "Rig_C_eye_sub_under_translateY.o" "ab_rig_CRN.phl[2766]";
connectAttr "Rig_C_eye_sub_under_translateZ.o" "ab_rig_CRN.phl[2767]";
connectAttr "Rig_C_eye_sub_under_rotateX.o" "ab_rig_CRN.phl[2768]";
connectAttr "Rig_C_eye_sub_under_rotateY.o" "ab_rig_CRN.phl[2769]";
connectAttr "Rig_C_eye_sub_under_rotateZ.o" "ab_rig_CRN.phl[2770]";
connectAttr "ab_rig_CRN.phl[2771]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "ab_rig_CRN.phl[2772]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "ab_rig_CRN.phl[2773]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[607].dn"
		;
connectAttr "ab_rig_CRN.phl[2774]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "ab_rig_CRN.phl[2775]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "ab_rig_CRN.phl[2776]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[806].dn"
		;
connectAttr "Rig_C_eye_sub_upper_translateX.o" "ab_rig_CRN.phl[2777]";
connectAttr "Rig_C_eye_sub_upper_translateY.o" "ab_rig_CRN.phl[2778]";
connectAttr "Rig_C_eye_sub_upper_translateZ.o" "ab_rig_CRN.phl[2779]";
connectAttr "Rig_C_eye_sub_upper_rotateX.o" "ab_rig_CRN.phl[2780]";
connectAttr "Rig_C_eye_sub_upper_rotateY.o" "ab_rig_CRN.phl[2781]";
connectAttr "Rig_C_eye_sub_upper_rotateZ.o" "ab_rig_CRN.phl[2782]";
connectAttr "ab_rig_CRN.phl[2783]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "ab_rig_CRN.phl[2784]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "ab_rig_CRN.phl[2785]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "ab_rig_CRN.phl[2786]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn"
		;
connectAttr "ab_rig_CRN.phl[2787]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[639].dn"
		;
connectAttr "ab_rig_CRN.phl[2788]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[844].dn"
		;
connectAttr "Rig_L_eye_sub_translateX.o" "ab_rig_CRN.phl[2789]";
connectAttr "Rig_L_eye_sub_translateY.o" "ab_rig_CRN.phl[2790]";
connectAttr "Rig_L_eye_sub_translateZ.o" "ab_rig_CRN.phl[2791]";
connectAttr "Rig_L_eye_sub_rotateX.o" "ab_rig_CRN.phl[2792]";
connectAttr "Rig_L_eye_sub_rotateY.o" "ab_rig_CRN.phl[2793]";
connectAttr "Rig_L_eye_sub_rotateZ.o" "ab_rig_CRN.phl[2794]";
connectAttr "ab_rig_CRN.phl[2795]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn"
		;
connectAttr "ab_rig_CRN.phl[2796]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "ab_rig_CRN.phl[2797]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn"
		;
connectAttr "ab_rig_CRN.phl[2798]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[630].dn"
		;
connectAttr "ab_rig_CRN.phl[2799]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "ab_rig_CRN.phl[2800]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn"
		;
connectAttr "ab_rig_CRN.phl[2801]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Rig_R_eye_sub_translateX.o" "ab_rig_CRN.phl[2802]";
connectAttr "Rig_R_eye_sub_translateY.o" "ab_rig_CRN.phl[2803]";
connectAttr "Rig_R_eye_sub_translateZ.o" "ab_rig_CRN.phl[2804]";
connectAttr "Rig_R_eye_sub_rotateX.o" "ab_rig_CRN.phl[2805]";
connectAttr "Rig_R_eye_sub_rotateY.o" "ab_rig_CRN.phl[2806]";
connectAttr "Rig_R_eye_sub_rotateZ.o" "ab_rig_CRN.phl[2807]";
connectAttr "ab_rig_CRN.phl[2808]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "ab_rig_CRN.phl[2809]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "ab_rig_CRN.phl[2810]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "ab_rig_CRN.phl[2811]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[820].dn"
		;
connectAttr "ab_rig_CRN.phl[2812]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "ab_rig_CRN.phl[2813]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "ab_rig_CRN.phl[2814]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "ab_rig_CRN.phl[2815]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn"
		;
connectAttr "ab_rig_CRN.phl[2816]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "ab_rig_CRN.phl[2817]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn"
		;
connectAttr "Rig_Other_sine_tre.o" "ab_rig_CRN.phl[2818]";
connectAttr "Rig_Other_sine_strength.o" "ab_rig_CRN.phl[2819]";
connectAttr "Rig_Other_eye_type.o" "ab_rig_CRN.phl[2820]";
connectAttr "Rig_Other_color.o" "ab_rig_CRN.phl[2821]";
connectAttr "ab_rig_CRN.phl[2822]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[783].dn"
		;
connectAttr "ab_rig_CRN.phl[2823]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "ab_rig_CRN.phl[2824]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn"
		;
connectAttr "ab_rig_CRN.phl[2825]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "ab_rig_CRN.phl[2826]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[576].dn"
		;
connectAttr "ab_rig_CRN.phl[2827]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "ab_rig_CRN.phl[2828]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[793].dn"
		;
connectAttr "ab_rig_CRN.phl[2829]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "ab_rig_CRN.phl[2830]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "ab_rig_CRN.phl[2831]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "ab_rig_CRN.phl[2832]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn"
		;
connectAttr "ab_rig_CRN.phl[2833]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn"
		;
connectAttr "ab_rig_CRN.phl[2834]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "ab_rig_CRN.phl[2835]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "ab_rig_CRN.phl[2836]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ab_rig_CRN.phl[2837]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[590].dn"
		;
connectAttr "ab_rig_CRN.phl[2838]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn"
		;
connectAttr "ab_rig_CRN.phl[2839]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[791].dn"
		;
connectAttr "ab_rig_CRN.phl[2840]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn"
		;
connectAttr "ab_rig_CRN.phl[2841]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "ab_rig_CRN.phl[2842]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "ab_rig_CRN.phl[2843]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[848].dn"
		;
connectAttr "ab_rig_CRN.phl[2844]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[836].dn"
		;
connectAttr "ab_rig_CRN.phl[2845]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[841].dn"
		;
connectAttr "ab_rig_CRN.phl[2846]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "ab_rig_CRN.phl[2847]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn"
		;
connectAttr "ab_rig_CRN.phl[2848]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn"
		;
connectAttr "ab_rig_CRN.phl[2849]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn"
		;
connectAttr "ab_rig_CRN.phl[2850]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "ab_rig_CRN.phl[2851]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "ab_rig_CRN.phl[2852]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[845].dn"
		;
connectAttr "ab_rig_CRN.phl[2853]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn"
		;
connectAttr "ab_rig_CRN.phl[2854]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[613].dn"
		;
connectAttr "ab_rig_CRN.phl[2855]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "ab_rig_CRN.phl[2856]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "ab_rig_CRN.phl[2857]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn"
		;
connectAttr "ab_rig_CRN.phl[2858]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "ab_rig_CRN.phl[2859]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "ab_rig_CRN.phl[2860]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn"
		;
connectAttr "ab_rig_CRN.phl[2861]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "ab_rig_CRN.phl[2862]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn"
		;
connectAttr "ab_rig_CRN.phl[2863]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn"
		;
connectAttr "ab_rig_CRN.phl[2864]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "ab_rig_CRN.phl[2865]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn"
		;
connectAttr "ab_rig_CRN.phl[2866]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "ab_rig_CRN.phl[2867]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn"
		;
connectAttr "ab_rig_CRN.phl[2868]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn"
		;
connectAttr "ab_rig_CRN.phl[2869]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[782].dn"
		;
connectAttr "ab_rig_CRN.phl[2870]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[579].dn"
		;
connectAttr "ab_rig_CRN.phl[2871]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "ab_rig_CRN.phl[2872]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "ab_rig_CRN.phl[2873]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "ab_rig_CRN.phl[2874]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[626].dn"
		;
connectAttr "ab_rig_CRN.phl[2875]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "ab_rig_CRN.phl[2876]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "ab_rig_CRN.phl[2877]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn"
		;
connectAttr "ab_rig_CRN.phl[2878]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn"
		;
connectAttr "ab_rig_CRN.phl[2879]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "ab_rig_CRN.phl[2880]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn"
		;
connectAttr "ab_rig_CRN.phl[2881]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "ab_rig_CRN.phl[2882]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[809].dn"
		;
connectAttr "ab_rig_CRN.phl[2883]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "ab_rig_CRN.phl[2884]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn"
		;
connectAttr "ab_rig_CRN.phl[2885]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "ab_rig_CRN.phl[2886]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "ab_rig_CRN.phl[2887]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "ab_rig_CRN.phl[2888]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn"
		;
connectAttr "ab_rig_CRN.phl[2889]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn"
		;
connectAttr "ab_rig_CRN.phl[2890]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "ab_rig_CRN.phl[2891]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "ab_rig_CRN.phl[2892]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn"
		;
connectAttr "ab_rig_CRN.phl[2893]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[801].dn"
		;
connectAttr "ab_rig_CRN.phl[2894]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "ab_rig_CRN.phl[2895]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[823].dn"
		;
connectAttr "ab_rig_CRN.phl[2896]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "ab_rig_CRN.phl[2897]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "ab_rig_CRN.phl[2898]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "ab_rig_CRN.phl[2899]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "ab_rig_CRN.phl[2900]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "ab_rig_CRN.phl[2901]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn"
		;
connectAttr "ab_rig_CRN.phl[2902]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "ab_rig_CRN.phl[2903]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[810].dn"
		;
connectAttr "ab_rig_CRN.phl[2904]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "ab_rig_CRN.phl[2905]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "ab_rig_CRN.phl[2906]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "ab_rig_CRN.phl[2907]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "ab_rig_CRN.phl[2908]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[817].dn"
		;
connectAttr "ab_rig_CRN.phl[2909]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[620].dn"
		;
connectAttr "ab_rig_CRN.phl[2910]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "ab_rig_CRN.phl[2911]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn"
		;
connectAttr "ab_rig_CRN.phl[2912]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn"
		;
connectAttr "ab_rig_CRN.phl[2913]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "ab_rig_CRN.phl[2914]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn"
		;
connectAttr "ab_rig_CRN.phl[2915]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "ab_rig_CRN.phl[2916]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "ab_rig_CRN.phl[2917]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn"
		;
connectAttr "ab_rig_CRN.phl[2918]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "ab_rig_CRN.phl[2919]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn"
		;
connectAttr "ab_rig_CRN.phl[2920]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn"
		;
connectAttr "ab_rig_CRN.phl[2921]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "ab_rig_CRN.phl[2922]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[852].dn"
		;
connectAttr "ab_rig_CRN.phl[2923]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn"
		;
connectAttr "ab_rig_CRN.phl[2924]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "ab_rig_CRN.phl[2925]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "ab_rig_CRN.phl[2926]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "ab_rig_CRN.phl[2927]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "ab_rig_CRN.phl[2928]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn"
		;
connectAttr "ab_rig_CRN.phl[2929]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "ab_rig_CRN.phl[2930]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "ab_rig_CRN.phl[2931]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "ab_rig_CRN.phl[2932]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "ab_rig_CRN.phl[2933]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "ab_rig_CRN.phl[2934]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[834].dn"
		;
connectAttr "ab_rig_CRN.phl[2935]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "ab_rig_CRN.phl[2936]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "ab_rig_CRN.phl[2937]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "ab_rig_CRN.phl[2938]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "ab_rig_CRN.phl[2939]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn"
		;
connectAttr "ab_rig_CRN.phl[2940]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[831].dn"
		;
connectAttr "ab_rig_CRN.phl[2941]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[815].dn"
		;
connectAttr "ab_rig_CRN.phl[2942]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn"
		;
connectAttr "ab_rig_CRN.phl[2943]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn"
		;
connectAttr "ab_rig_CRN.phl[2944]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "ab_rig_CRN.phl[2945]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn"
		;
connectAttr "ab_rig_CRN.phl[2946]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "ab_rig_CRN.phl[2947]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "ab_rig_CRN.phl[2948]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "ab_rig_CRN.phl[2949]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "ab_rig_CRN.phl[2950]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[799].dn"
		;
connectAttr "ab_rig_CRN.phl[2951]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "ab_rig_CRN.phl[2952]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn"
		;
connectAttr "ab_rig_CRN.phl[2953]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "ab_rig_CRN.phl[2954]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "ab_rig_CRN.phl[2955]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "ab_rig_CRN.phl[2956]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn"
		;
connectAttr "ab_rig_CRN.phl[2957]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn"
		;
connectAttr "ab_rig_CRN.phl[2958]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "ab_rig_CRN.phl[2959]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "ab_rig_CRN.phl[2960]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn"
		;
connectAttr "ab_rig_CRN.phl[2961]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn"
		;
connectAttr "ab_rig_CRN.phl[2962]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "ab_rig_CRN.phl[2963]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "ab_rig_CRN.phl[2964]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "ab_rig_CRN.phl[2965]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "ab_rig_CRN.phl[2966]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn"
		;
connectAttr "ab_rig_CRN.phl[2967]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn"
		;
connectAttr "ab_rig_CRN.phl[2968]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[795].dn"
		;
connectAttr "ab_rig_CRN.phl[2969]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "ab_rig_CRN.phl[2970]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "ab_rig_CRN.phl[2971]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "ab_rig_CRN.phl[2972]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn"
		;
connectAttr "ab_rig_CRN.phl[2973]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "ab_rig_CRN.phl[2974]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn"
		;
connectAttr "ab_rig_CRN.phl[2975]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "ab_rig_CRN.phl[2976]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[595].dn"
		;
connectAttr "ab_rig_CRN.phl[2977]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "ab_rig_CRN.phl[2978]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "ab_rig_CRN.phl[2979]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "ab_rig_CRN.phl[2980]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "ab_rig_CRN.phl[2981]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "ab_rig_CRN.phl[2982]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[800].dn"
		;
connectAttr "ab_rig_CRN.phl[2983]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[807].dn"
		;
connectAttr "ab_rig_CRN.phl[2984]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "ab_rig_CRN.phl[2985]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[772].dn"
		;
connectAttr "ab_rig_CRN.phl[2986]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn"
		;
connectAttr "ab_rig_CRN.phl[2987]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "ab_rig_CRN.phl[2988]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn"
		;
connectAttr "ab_rig_CRN.phl[2989]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn"
		;
connectAttr "ab_rig_CRN.phl[2990]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "ab_rig_CRN.phl[2991]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn"
		;
connectAttr "ab_rig_CRN.phl[2992]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "ab_rig_CRN.phl[2993]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn"
		;
connectAttr "ab_rig_CRN.phl[2994]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "ab_rig_CRN.phl[2995]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn"
		;
connectAttr "ab_rig_CRN.phl[2996]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[828].dn"
		;
connectAttr "ab_rig_CRN.phl[2997]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "ab_rig_CRN.phl[2998]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn"
		;
connectAttr "ab_rig_CRN.phl[2999]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[587].dn"
		;
connectAttr "ab_rig_CRN.phl[3000]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "ab_rig_CRN.phl[3001]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[573].dn"
		;
connectAttr "ab_rig_CRN.phl[3002]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "ab_rig_CRN.phl[3003]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "ab_rig_CRN.phl[3004]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "ab_rig_CRN.phl[3005]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[840].dn"
		;
connectAttr "ab_rig_CRN.phl[3006]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn"
		;
connectAttr "ab_rig_CRN.phl[3007]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "ab_rig_CRN.phl[3008]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[808].dn"
		;
connectAttr "ab_rig_CRN.phl[3009]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[767].dn"
		;
connectAttr "ab_rig_CRN.phl[3010]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[581].dn"
		;
connectAttr "ab_rig_CRN.phl[3011]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ab_rig_CRN.phl[3012]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "ab_rig_CRN.phl[3013]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "ab_rig_CRN.phl[3014]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[812].dn"
		;
connectAttr "ab_rig_CRN.phl[3015]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "ab_rig_CRN.phl[3016]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn"
		;
connectAttr "ab_rig_CRN.phl[3017]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "ab_rig_CRN.phl[3018]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn"
		;
connectAttr "ab_rig_CRN.phl[3019]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "ab_rig_CRN.phl[3020]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn"
		;
connectAttr "ab_rig_CRN.phl[3021]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "ab_rig_CRN.phl[3022]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn"
		;
connectAttr "ab_rig_CRN.phl[3023]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn"
		;
connectAttr "ab_rig_CRN.phl[3024]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "ab_rig_CRN.phl[3025]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[870].dn"
		;
connectAttr "ab_rig_CRN.phl[3026]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn"
		;
connectAttr "ab_rig_CRN.phl[3027]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn"
		;
connectAttr "ab_rig_CRN.phl[3028]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "ab_rig_CRN.phl[3029]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "ab_rig_CRN.phl[3030]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn"
		;
connectAttr "ab_rig_CRN.phl[3031]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[850].dn"
		;
connectAttr "ab_rig_CRN.phl[3032]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn"
		;
connectAttr "ab_rig_CRN.phl[3033]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn"
		;
connectAttr "ab_rig_CRN.phl[3034]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "ab_rig_CRN.phl[3035]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "ab_rig_CRN.phl[3036]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[785].dn"
		;
connectAttr "ab_rig_CRN.phl[3037]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "ab_rig_CRN.phl[3038]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[838].dn"
		;
connectAttr "ab_rig_CRN.phl[3039]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn"
		;
connectAttr "ab_rig_CRN.phl[3040]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn"
		;
connectAttr "ab_rig_CRN.phl[3041]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "ab_rig_CRN.phl[3042]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "ab_rig_CRN.phl[3043]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "ab_rig_CRN.phl[3044]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "ab_rig_CRN.phl[3045]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn"
		;
connectAttr "ab_rig_CRN.phl[3046]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn"
		;
connectAttr "ab_rig_CRN.phl[3047]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn"
		;
connectAttr "ab_rig_CRN.phl[3048]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "ab_rig_CRN.phl[3049]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn"
		;
connectAttr "ab_rig_CRN.phl[3050]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn"
		;
connectAttr "ab_rig_CRN.phl[3051]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn"
		;
connectAttr "ab_rig_CRN.phl[3052]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn"
		;
connectAttr "ab_rig_CRN.phl[3053]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[637].dn"
		;
connectAttr "ab_rig_CRN.phl[3054]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "ab_rig_CRN.phl[3055]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn"
		;
connectAttr "ab_rig_CRN.phl[3056]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "ab_rig_CRN.phl[3057]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn"
		;
connectAttr "ab_rig_CRN.phl[3058]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "ab_rig_CRN.phl[3059]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "ab_rig_CRN.phl[3060]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "ab_rig_CRN.phl[3061]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn"
		;
connectAttr "ab_rig_CRN.phl[3062]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "ab_rig_CRN.phl[3063]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[826].dn"
		;
connectAttr "ab_rig_CRN.phl[3064]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "ab_rig_CRN.phl[3065]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "ab_rig_CRN.phl[3066]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "ab_rig_CRN.phl[3067]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "ab_rig_CRN.phl[3068]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[636].dn"
		;
connectAttr "ab_rig_CRN.phl[3069]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[574].dn"
		;
connectAttr "ab_rig_CRN.phl[3070]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[781].dn"
		;
connectAttr "ab_rig_CRN.phl[3071]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn"
		;
connectAttr "ab_rig_CRN.phl[3072]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn"
		;
connectAttr "ab_rig_CRN.phl[3073]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn"
		;
connectAttr "ab_rig_CRN.phl[3074]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "ab_rig_CRN.phl[3075]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[833].dn"
		;
connectAttr "ab_rig_CRN.phl[3076]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "ab_rig_CRN.phl[3077]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn"
		;
connectAttr "ab_rig_CRN.phl[3078]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn"
		;
connectAttr "ab_rig_CRN.phl[3079]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "ab_rig_CRN.phl[3080]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "ab_rig_CRN.phl[3081]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "ab_rig_CRN.phl[3082]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "ab_rig_CRN.phl[3083]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "ab_rig_CRN.phl[3084]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "ab_rig_CRN.phl[3085]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn"
		;
connectAttr "ab_rig_CRN.phl[3086]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "ab_rig_CRN.phl[3087]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[638].dn"
		;
connectAttr "ab_rig_CRN.phl[3088]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "ab_rig_CRN.phl[3089]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn"
		;
connectAttr "ab_rig_CRN.phl[3090]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ab_rig_CRN.phl[3091]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[854].dn"
		;
connectAttr "ab_rig_CRN.phl[3092]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "ab_rig_CRN.phl[3093]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[615].dn"
		;
connectAttr "ab_rig_CRN.phl[3094]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "ab_rig_CRN.phl[3095]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[864].dn"
		;
connectAttr "ab_rig_CRN.phl[3096]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "ab_rig_CRN.phl[3097]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[860].dn"
		;
connectAttr "ab_rig_CRN.phl[3098]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn"
		;
connectAttr "ab_rig_CRN.phl[3099]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "ab_rig_CRN.phl[3100]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "ab_rig_CRN.phl[3101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[592].dn"
		;
connectAttr "ab_rig_CRN.phl[3102]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "ab_rig_CRN.phl[3103]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "ab_rig_CRN.phl[3104]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "ab_rig_CRN.phl[3105]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[805].dn"
		;
connectAttr "ab_rig_CRN.phl[3106]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "ab_rig_CRN.phl[3107]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "ab_rig_CRN.phl[3108]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn"
		;
connectAttr "ab_rig_CRN.phl[3109]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn"
		;
connectAttr "ab_rig_CRN.phl[3110]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn"
		;
connectAttr "ab_rig_CRN.phl[3111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn"
		;
connectAttr "ab_rig_CRN.phl[3112]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "ab_rig_CRN.phl[3113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn"
		;
connectAttr "ab_rig_CRN.phl[3114]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn"
		;
connectAttr "ab_rig_CRN.phl[3115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "ab_rig_CRN.phl[3116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "ab_rig_CRN.phl[3117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "ab_rig_CRN.phl[3118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "ab_rig_CRN.phl[3119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn"
		;
connectAttr "ab_rig_CRN.phl[3120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "ab_rig_CRN.phl[3121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "ab_rig_CRN.phl[3122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "ab_rig_CRN.phl[3123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn"
		;
connectAttr "ab_rig_CRN.phl[3124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn"
		;
connectAttr "ab_rig_CRN.phl[3125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "ab_rig_CRN.phl[3126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[777].dn"
		;
connectAttr "ab_rig_CRN.phl[3127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "ab_rig_CRN.phl[3128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn"
		;
connectAttr "ab_rig_CRN.phl[3129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "ab_rig_CRN.phl[3130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn"
		;
connectAttr "ab_rig_CRN.phl[3131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "ab_rig_CRN.phl[3132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn"
		;
connectAttr "ab_rig_CRN.phl[3133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[873].dn"
		;
connectAttr "ab_rig_CRN.phl[3134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "ab_rig_CRN.phl[3135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn"
		;
connectAttr "ab_rig_CRN.phl[3136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "ab_rig_CRN.phl[3137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[787].dn"
		;
connectAttr "ab_rig_CRN.phl[3138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "ab_rig_CRN.phl[3139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ab_rig_CRN.phl[3140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn"
		;
connectAttr "ab_rig_CRN.phl[3141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[827].dn"
		;
connectAttr "ab_rig_CRN.phl[3142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[843].dn"
		;
connectAttr "ab_rig_CRN.phl[3143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[624].dn"
		;
connectAttr "ab_rig_CRN.phl[3144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn"
		;
connectAttr "ab_rig_CRN.phl[3145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "ab_rig_CRN.phl[3146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn"
		;
connectAttr "ab_rig_CRN.phl[3147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "ab_rig_CRN.phl[3148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[802].dn"
		;
connectAttr "ab_rig_CRN.phl[3149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "ab_rig_CRN.phl[3150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn"
		;
connectAttr "ab_rig_CRN.phl[3151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "ab_rig_CRN.phl[3152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "ab_rig_CRN.phl[3153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn"
		;
connectAttr "ab_rig_CRN.phl[3154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn"
		;
connectAttr "ab_rig_CRN.phl[3155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "ab_rig_CRN.phl[3156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn"
		;
connectAttr "ab_rig_CRN.phl[3157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "ab_rig_CRN.phl[3158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "ab_rig_CRN.phl[3159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "ab_rig_CRN.phl[3160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "ab_rig_CRN.phl[3161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn"
		;
connectAttr "ab_rig_CRN.phl[3162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "ab_rig_CRN.phl[3163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "ab_rig_CRN.phl[3164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn"
		;
connectAttr "ab_rig_CRN.phl[3165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn"
		;
connectAttr "ab_rig_CRN.phl[3166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn"
		;
connectAttr "ab_rig_CRN.phl[3167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[789].dn"
		;
connectAttr "ab_rig_CRN.phl[3168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "ab_rig_CRN.phl[3169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "ab_rig_CRN.phl[3170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn"
		;
connectAttr "ab_rig_CRN.phl[3171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[866].dn"
		;
connectAttr "ab_rig_CRN.phl[3172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[770].dn"
		;
connectAttr "ab_rig_CRN.phl[3173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn"
		;
connectAttr "ab_rig_CRN.phl[3174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "ab_rig_CRN.phl[3175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "ab_rig_CRN.phl[3176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "ab_rig_CRN.phl[3177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn"
		;
connectAttr "ab_rig_CRN.phl[3178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[773].dn"
		;
connectAttr "ab_rig_CRN.phl[3179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "ab_rig_CRN.phl[3180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "ab_rig_CRN.phl[3181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "ab_rig_CRN.phl[3182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "ab_rig_CRN.phl[3183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn"
		;
connectAttr "layer1.di" "pPlane1.do";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Rig_C_body_scaleX.o" "ab_rig_CRN.phl[682]";
connectAttr "Rig_C_body_scaleY.o" "ab_rig_CRN.phl[683]";
connectAttr "Rig_C_body_scaleZ.o" "ab_rig_CRN.phl[684]";
connectAttr "Rig_C_body_under_option_translateX.o" "ab_rig_CRN.phl[2328]";
connectAttr "Rig_C_body_under_option_translateY.o" "ab_rig_CRN.phl[2329]";
connectAttr "Rig_C_body_under_option_translateZ.o" "ab_rig_CRN.phl[2330]";
connectAttr "Rig_C_body_under_option_rotateX.o" "ab_rig_CRN.phl[2331]";
connectAttr "Rig_C_body_under_option_rotateY.o" "ab_rig_CRN.phl[2332]";
connectAttr "Rig_C_body_under_option_rotateZ.o" "ab_rig_CRN.phl[2333]";
connectAttr "Rig_C_body_under_option_scaleX.o" "ab_rig_CRN.phl[2334]";
connectAttr "Rig_C_body_under_option_scaleY.o" "ab_rig_CRN.phl[2335]";
connectAttr "Rig_C_body_under_option_scaleZ.o" "ab_rig_CRN.phl[2336]";
connectAttr "sharedReferenceNode.sr" "ab_rig_CRN.sr";
connectAttr "Rig_C_body_middle_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Rig_C_body_under_option_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Rig_L_body_upper_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Rig_R_body_middle_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Rig_C_body_under_option_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Rig_R_body_upper_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "ab_rig_CRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "Rig_L_eye_sub_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Rig_C_body_middle_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Rig_C_Root_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Rig_L_body_upper_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Rig_C_eye_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Rig_L_body_under_003_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Rig_R_body_upper_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Rig_R_eye_sub_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Rig_R_body_upper_003_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "ab_rig_CRN.phl[1445]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Rig_L_eye_sub_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Rig_L_eye_sub_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Rig_C_body_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Rig_C_eye_sub_upper_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Rig_R_body_middle_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Rig_R_body_under_003_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Rig_C_eye_sub_upper_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Rig_C_eye_root_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "ab_rig_CRN.phl[1142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Rig_R_body_middle_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Rig_C_body_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Rig_C_body_under_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Rig_C_body_middle_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Rig_L_body_middle_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Rig_C_eye_root_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "ab_rig_CRN.phl[1140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Rig_C_body_under_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Rig_L_body_under_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Rig_C_body_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Rig_C_body_under_option_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Rig_R_eye_sub_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Rig_C_body_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Rig_C_body_under_option_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Rig_R_body_upper_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Rig_R_body_middle_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Rig_C_body_upper_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Rig_L_body_middle_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Rig_C_eye_root_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "ab_rig_CRN.phl[2182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Rig_C_body_middle_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Rig_R_body_middle_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Rig_C_body_upper_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Rig_C_body_middle_option_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Rig_C_eye_sub_upper_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Rig_R_body_under_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "pPlaneShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn";
connectAttr "Rig_C_body_middle_option_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Rig_C_body_under_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Rig_L_body_middle_003_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Rig_C_eye_sub_under_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Rig_C_body_upper_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Rig_C_body_middle_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Rig_L_body_middle_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Rig_L_body_middle_003_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Rig_C_body_middle_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Rig_C_eye_sub_upper_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Rig_L_body_middle_003_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Rig_R_body_middle_003_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Rig_R_eye_sub_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Rig_R_body_upper_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Rig_C_body_middle_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Rig_R_body_under_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Rig_C_body_upper_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Rig_L_body_under_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Rig_C_body_middle_option_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "polyPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn";
connectAttr "Rig_C_body_upper_option_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Rig_C_body_upper_option_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Rig_L_body_upper_003_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Rig_C_body_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Rig_C_body_under_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Rig_L_body_under_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "ab_rig_CRN.phl[1151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Rig_C_eye_sub_upper_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Rig_R_body_upper_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Rig_C_body_under_option_translateX1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Rig_C_body_middle_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "sharedReferenceNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Rig_C_body_middle_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Rig_C_body_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "Rig_C_body_under_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn";
connectAttr "ab_rig_CRN.phl[1139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Rig_L_body_middle_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Rig_L_body_under_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "Rig_C_body_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Rig_R_eye_sub_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "Rig_L_body_upper_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "Rig_R_body_upper_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "Rig_L_body_middle_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "Rig_C_body_middle_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "Rig_C_body_under_option_translateY1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Rig_L_body_middle_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "Rig_R_body_under_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "ab_rig_CRN.phl[1146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Rig_R_body_under_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "ab_rig_CRN.phl[2178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Rig_C_body_upper_option_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "Rig_R_body_under_003_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "Rig_L_body_middle_003_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "Rig_R_body_under_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "Rig_C_eye_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn"
		;
connectAttr "Rig_R_body_middle_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "Rig_R_body_upper_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "Rig_C_Root_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "Rig_L_body_upper_003_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "Rig_C_body_upper_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn"
		;
connectAttr "Rig_R_body_under_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn"
		;
connectAttr "Rig_C_eye_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "Rig_R_body_upper_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn"
		;
connectAttr "Rig_L_body_upper_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "Rig_R_body_middle_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "Rig_C_body_upper_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn"
		;
connectAttr "Rig_C_Root_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "Rig_L_body_upper_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "Rig_R_body_upper_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn"
		;
connectAttr "Rig_C_Root_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn"
		;
connectAttr "Rig_R_body_under_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn"
		;
connectAttr "Rig_R_body_under_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn"
		;
connectAttr "Rig_L_eye_sub_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn"
		;
connectAttr "Rig_R_body_upper_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn"
		;
connectAttr "Rig_C_body_under_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn"
		;
connectAttr "Rig_L_body_upper_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn"
		;
connectAttr "Rig_L_body_upper_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn"
		;
connectAttr "Rig_C_body_middle_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn"
		;
connectAttr "Rig_C_body_under_option_scaleX1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "Rig_L_body_middle_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn"
		;
connectAttr "Rig_L_body_middle_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn"
		;
connectAttr "Rig_L_body_upper_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn"
		;
connectAttr "Rig_C_body_upper_option_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn"
		;
connectAttr "Rig_C_body_under_option_scaleZ1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn"
		;
connectAttr "ab_rig_CRN.phl[2180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn"
		;
connectAttr "Rig_C_Root_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn"
		;
connectAttr "Rig_L_body_under_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn"
		;
connectAttr "Rig_C_body_under_option_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn"
		;
connectAttr "Rig_R_body_middle_003_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn"
		;
connectAttr "Rig_C_eye_root_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn"
		;
connectAttr "Rig_L_body_upper_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn"
		;
connectAttr "Rig_C_Root_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn"
		;
connectAttr "Rig_C_body_upper_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn"
		;
connectAttr "Rig_L_body_upper_003_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn"
		;
connectAttr "Rig_C_eye_root_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn"
		;
connectAttr "ab_rig_CRN.phl[1143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn"
		;
connectAttr "Rig_R_body_under_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn"
		;
connectAttr "Rig_C_Root_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn"
		;
connectAttr "Rig_C_eye_root_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn"
		;
connectAttr "Rig_C_body_under_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn"
		;
connectAttr "Rig_C_body_upper_option_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn"
		;
connectAttr "Rig_R_body_upper_003_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn"
		;
connectAttr "Rig_C_eye_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn"
		;
connectAttr "Rig_C_Root_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn"
		;
connectAttr "Rig_L_body_middle_003_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn"
		;
connectAttr "Rig_C_body_upper_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn"
		;
connectAttr "Rig_R_body_middle_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[534].dn"
		;
connectAttr "Rig_C_body_upper_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[535].dn"
		;
connectAttr "Rig_L_body_upper_003_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[537].dn"
		;
connectAttr "Rig_C_body_upper_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[539].dn"
		;
connectAttr "Rig_C_body_middle_option_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[541].dn"
		;
connectAttr "Rig_C_body_under_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[544].dn"
		;
connectAttr "pPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn";
connectAttr "ab_rig_CRN.phl[652]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn"
		;
connectAttr "Rig_R_body_middle_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[548].dn"
		;
connectAttr "Rig_L_body_under_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[549].dn"
		;
connectAttr "Rig_R_body_upper_003_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[550].dn"
		;
connectAttr "Rig_L_body_middle_003_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[551].dn"
		;
connectAttr "Rig_C_eye_sub_under_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[555].dn"
		;
connectAttr "Rig_R_body_middle_003_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[558].dn"
		;
connectAttr "Rig_C_body_under_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[561].dn"
		;
connectAttr "Rig_C_eye_sub_under_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[562].dn"
		;
connectAttr "Rig_R_eye_sub_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[564].dn"
		;
connectAttr "Rig_C_body_upper_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[565].dn"
		;
connectAttr "Rig_L_body_under_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[567].dn"
		;
connectAttr "Rig_C_Root_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[570].dn"
		;
connectAttr "Rig_C_body_under_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[571].dn"
		;
connectAttr "Rig_C_eye_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[572].dn"
		;
connectAttr "Rig_C_body_upper_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[578].dn"
		;
connectAttr "Rig_L_body_middle_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[582].dn"
		;
connectAttr "Rig_C_body_under_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[585].dn"
		;
connectAttr "Rig_C_body_upper_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[586].dn"
		;
connectAttr "Rig_R_body_under_003_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[588].dn"
		;
connectAttr "Rig_C_body_upper_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[591].dn"
		;
connectAttr "Rig_C_body_upper_option_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[593].dn"
		;
connectAttr "Rig_L_body_under_003_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[598].dn"
		;
connectAttr "Rig_L_eye_sub_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[599].dn"
		;
connectAttr "Rig_C_eye_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[600].dn"
		;
connectAttr "Rig_C_body_under_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[605].dn"
		;
connectAttr "Rig_C_body_under_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[610].dn"
		;
connectAttr "Rig_L_body_under_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[614].dn"
		;
connectAttr "Rig_L_body_under_003_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[616].dn"
		;
connectAttr "Rig_L_body_upper_003_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[617].dn"
		;
connectAttr "Rig_C_eye_root_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[618].dn"
		;
connectAttr "Rig_C_body_under_option_scaleY1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "Rig_L_body_upper_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[621].dn"
		;
connectAttr "Rig_C_Root_002_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[622].dn"
		;
connectAttr "Rig_C_body_under_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[625].dn"
		;
connectAttr "Rig_R_body_upper_003_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[627].dn"
		;
connectAttr "Rig_R_body_upper_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[640].dn"
		;
connectAttr "ab_rig_CRN.phl[1148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn"
		;
connectAttr "Rig_C_eye_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[647].dn"
		;
connectAttr "Rig_L_body_upper_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[654].dn"
		;
connectAttr "ab_rig_CRN.phl[653]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn"
		;
connectAttr "Rig_C_body_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[663].dn"
		;
connectAttr "Rig_C_body_under_option_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[667].dn"
		;
connectAttr "Rig_C_body_upper_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[668].dn"
		;
connectAttr "Rig_R_body_under_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[670].dn"
		;
connectAttr "Rig_C_body_upper_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[681].dn"
		;
connectAttr "Rig_L_body_under_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[690].dn"
		;
connectAttr "Rig_L_body_middle_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[691].dn"
		;
connectAttr "Rig_C_eye_sub_upper_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[696].dn"
		;
connectAttr "Rig_L_body_middle_002_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[697].dn"
		;
connectAttr "Rig_C_body_under_option_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[699].dn"
		;
connectAttr "Rig_L_body_upper_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[700].dn"
		;
connectAttr "Rig_R_body_under_003_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[701].dn"
		;
connectAttr "Rig_L_body_under_003_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[702].dn"
		;
connectAttr "Rig_R_body_under_003_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[703].dn"
		;
connectAttr "Rig_C_body_upper_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[707].dn"
		;
connectAttr "ab_rig_CRN.phl[2176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn"
		;
connectAttr "Rig_R_body_middle_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[712].dn"
		;
connectAttr "Rig_C_body_upper_option_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[716].dn"
		;
connectAttr "Rig_C_body_under_option_rotateY1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn"
		;
connectAttr "Rig_L_body_under_003_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[720].dn"
		;
connectAttr "Rig_L_body_middle_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[722].dn"
		;
connectAttr "Rig_C_body_middle_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[734].dn"
		;
connectAttr "Rig_C_body_under_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[736].dn"
		;
connectAttr "Rig_C_body_upper_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[738].dn"
		;
connectAttr "Rig_L_body_upper_003_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[739].dn"
		;
connectAttr "Rig_R_eye_sub_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[741].dn"
		;
connectAttr "Rig_R_body_under_003_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[743].dn"
		;
connectAttr "Rig_C_body_middle_option_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[745].dn"
		;
connectAttr "Rig_R_body_middle_003_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[747].dn"
		;
connectAttr "Rig_L_eye_sub_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[748].dn"
		;
connectAttr "ab_rig_CRN.phl[1149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn"
		;
connectAttr "Rig_C_body_upper_option_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[757].dn"
		;
connectAttr "Rig_R_body_under_002_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[760].dn"
		;
connectAttr "Rig_C_body_middle_option_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[768].dn"
		;
connectAttr "Rig_R_body_upper_003_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[769].dn"
		;
connectAttr "Rig_C_eye_root_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[771].dn"
		;
connectAttr "Rig_C_eye_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[774].dn"
		;
connectAttr "Rig_C_body_under_option_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[778].dn"
		;
connectAttr "Rig_R_body_middle_001_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[779].dn"
		;
connectAttr "Rig_R_body_under_001_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[780].dn"
		;
connectAttr "ab_rig_CRN.phl[1145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[786].dn"
		;
connectAttr "Rig_C_body_under_option_rotateZ1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[790].dn"
		;
connectAttr "Rig_R_body_middle_001_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[792].dn"
		;
connectAttr "Rig_R_body_upper_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[794].dn"
		;
connectAttr "Rig_C_body_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[797].dn"
		;
connectAttr "Rig_C_body_upper_option_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[798].dn"
		;
connectAttr "Rig_C_eye_sub_under_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[803].dn"
		;
connectAttr "Rig_C_eye_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[804].dn"
		;
connectAttr "Rig_L_body_under_001_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[811].dn"
		;
connectAttr "Rig_C_body_under_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[816].dn"
		;
connectAttr "Rig_L_body_under_001_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[818].dn"
		;
connectAttr "Rig_R_body_middle_003_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[821].dn"
		;
connectAttr "Rig_C_eye_root_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[822].dn"
		;
connectAttr "Rig_C_body_under_option_rotateX1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[824].dn"
		;
connectAttr "Rig_C_eye_sub_under_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[829].dn"
		;
connectAttr "Rig_C_body_middle_option_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[830].dn"
		;
connectAttr "Rig_C_Root_002_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[832].dn"
		;
connectAttr "Rig_C_body_under_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[835].dn"
		;
connectAttr "Rig_C_body_middle_option_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[839].dn"
		;
connectAttr "Rig_C_body_middle_option_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[846].dn"
		;
connectAttr "Rig_L_body_under_003_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[851].dn"
		;
connectAttr "Rig_C_body_under_option_translateZ1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[853].dn"
		;
connectAttr "Rig_C_Root_002_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[858].dn"
		;
connectAttr "Rig_C_eye_sub_under_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[859].dn"
		;
connectAttr "Rig_C_body_under_option_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[862].dn"
		;
connectAttr "Rig_R_body_middle_003_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[868].dn"
		;
connectAttr "Rig_L_body_under_001_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[869].dn"
		;
connectAttr "Rig_R_body_upper_003_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[871].dn"
		;
connectAttr "Rig_C_body_under_002_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[872].dn"
		;
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
// End of ab_rig_C_jump.ma
