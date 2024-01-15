//Maya ASCII 2023 scene
//Name: ab_rig_A_run.ma
//Last modified: Tue, Mar 28, 2023 12:15:24 PM
//Codeset: 932
file -rdi 1 -ns "ab_rig_A" -rfn "ab_rig_ARN" -op "v=0;" -typ "mayaAscii" "D:/ab_rig/ab_rig_A//rig/ab_rig_A.ma";
file -r -ns "ab_rig_A" -dr 1 -rfn "ab_rig_ARN" -op "v=0;" -typ "mayaAscii" "D:/ab_rig/ab_rig_A//rig/ab_rig_A.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.1.0";
requires "Mayatomr" "10.0.1.8m - 3.7.1.26 ";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "1545334E-4E8C-96EE-C88B-1F8E90C02803";
createNode transform -s -n "persp";
	rename -uid "99627EB5-4315-0131-DFB6-469EF198F8ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -166.35874669547707 79.099707630748043 687.9588619852766 ;
	setAttr ".r" -type "double3" -0.93835272959577476 -733.79999999986649 7.675998251621276e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "826AEDB1-471E-F930-16C5-29AB64ACF0B7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 659.06716516008225;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 10.094121730407828 86.267431725401565 56.865101901976928 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3F76E4C5-4279-BE4D-CF29-099BDD05AEB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.6192550531925 -31.732469998361481 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B54007A2-435C-5EA8-278B-FB95841E473C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 969.86950036838903;
	setAttr ".ow" 336.83502734622641;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 30.749754684803563 -31.732469998361481 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "0E8A70BC-4E23-9613-F210-69967DFEFBC4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.286016824115208 68.365936121342088 1001.654108667356 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "25559535-418F-A5BD-3C51-1FA607D3AC96";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 833.44578950348898;
	setAttr ".ow" 350.68797943072798;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -4.8691009471839379 50.639976823589045 168.208319163867 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "55BEB2D4-453D-0CCF-4791-329DD2667FB2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.912487095025 65.730451288931476 16.629745864684899 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F8720E8D-4223-6F67-C58F-E08C2A675ABF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1006.7815880422089;
	setAttr ".ow" 634.71277806754824;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -4.869100947183945 58.859121772685853 13.486139045290564 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "left";
	rename -uid "1FBE1D92-477C-DBA0-BBD7-E89E5F2C05C4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "CDC8B024-4742-AB59-CFEE-5BA9076E915D";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F980DA0A-42F6-BD9A-6A8C-4B87499D3B12";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8212E827-4A8F-1CAC-ADD8-1C9875EF5D7E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C0D94B39-40A9-FCD4-2D13-00847F04B9CB";
createNode displayLayerManager -n "layerManager";
	rename -uid "4B53059B-4201-D105-CB39-1ABC7A171843";
createNode displayLayer -n "defaultLayer";
	rename -uid "755D86AB-4DD6-5543-01EA-85B0A9966C4C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "000BACF8-4553-B268-ADD8-8AB2B2902F11";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1AB1824D-496D-98F2-9536-B6A20292C95B";
	setAttr ".g" yes;
createNode reference -n "ab_rig_ARN";
	rename -uid "ECFEC3F4-4CBA-C985-DF04-3588C7030B89";
	setAttr -s 277 ".phl";
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".phl[782]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[784]" 0;
	setAttr ".phl[785]" 0;
	setAttr ".phl[786]" 0;
	setAttr ".phl[787]" 0;
	setAttr ".phl[788]" 0;
	setAttr ".phl[789]" 0;
	setAttr ".phl[790]" 0;
	setAttr ".phl[791]" 0;
	setAttr ".phl[792]" 0;
	setAttr ".phl[793]" 0;
	setAttr ".phl[794]" 0;
	setAttr ".phl[795]" 0;
	setAttr ".phl[796]" 0;
	setAttr ".phl[797]" 0;
	setAttr ".phl[798]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_ARN"
		"ab_rig_ARN" 22
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword1_parentConstraint1" 
		"CTRL_R_swordW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_BackWeapon1_offset|ab_rig_A:Rig_C_BackWeapon1|ab_rig_A:Rig_C_BackWeapon2_offset|ab_rig_A:Rig_C_BackWeapon2" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_C_BackWeapon2_EndW2" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK" 
		"parent_switch" " -k 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK" 
		"parent_switch" " -k 1"
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword.parent_switch" 
		"ab_rig_ARN.placeHolderList[250]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_BackWeapon1_offset|ab_rig_A:Rig_C_BackWeapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[336]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_BackWeapon1_offset|ab_rig_A:Rig_C_BackWeapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[337]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_BackWeapon1_offset|ab_rig_A:Rig_C_BackWeapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[338]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[440]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[468]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateZ" 
		"ab_rig_ARN.placeHolderList[526]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateX" 
		"ab_rig_ARN.placeHolderList[527]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateY" 
		"ab_rig_ARN.placeHolderList[528]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateZ" 
		"ab_rig_ARN.placeHolderList[529]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateZ" 
		"ab_rig_ARN.placeHolderList[532]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateX" 
		"ab_rig_ARN.placeHolderList[533]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateY" 
		"ab_rig_ARN.placeHolderList[534]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateZ" 
		"ab_rig_ARN.placeHolderList[535]" ""
		"ab_rig_ARN" 1400
		1 |ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword 
		"blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|ab_rig_A:All_Grp" "visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp" "visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_ToeTip_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_ToeTip_FK" 
		"translate" " -type \"double3\" 0 -4.76483947666450813 12.85791061801002044"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_ToeTip_FK" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_ToeTip_FK" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_ToeTip_FK" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_ToeTip_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_ToeTip_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_Toe_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_Toe_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_Toe_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Toe_FK|ab_rig_A:Jnt_L_Toe_parentConstraint_FK" 
		"L_FK_toe_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Ankle_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Ankle_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Ankle_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Ankle_FK|ab_rig_A:Jnt_L_Ankle_parentConstraint_FK" 
		"L_FK_ankle_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Knee_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Knee_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Knee_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Knee_FK|ab_rig_A:Jnt_L_Knee_parentConstraint_FK" 
		"L_FK_knee_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Thigh_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Thigh_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Thigh_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_FK|ab_rig_A:Jnt_L_Thigh_parentConstraint_FK" 
		"L_FK_thigh_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK" 
		"translate" " -type \"double3\" 7.73429677106044622 -0.90227137225259924 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK" 
		"rotate" " -type \"double3\" 20.70208965005772939 -1.08210610449078115 0.47716594688701502"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"translate" " -type \"double3\" 0 -36.00707375200849469 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"rotate" " -type \"double3\" 27.35101027049206479 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"translate" " -type \"double3\" 0 -30.65927035642021536 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"rotate" " -type \"double3\" 36.14282283315136368 6.87576498707443218 -10.99675204243762039"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"translate" " -type \"double3\" 0 -6.75722106597899952 7.43008778587791419"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"rotate" " -type \"double3\" 11.56050177207619534 -2.260930629256694e-06 -1.6229403523125879e-07"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:Jnt_L_ToeTip_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:Jnt_L_ToeTip_IK" 
		"translate" " -type \"double3\" 0 -4.76483947666450813 12.85791061801002044"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:Jnt_L_ToeTip_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:Jnt_L_ToeTip_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:effector3" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:effector3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:effector3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK|ab_rig_A:effector3" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:effector2" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:effector2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:effector2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:effector2" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:effector1" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:effector1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:effector1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:effector1" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV" 
		"translate" " -type \"double3\" -2.76456129100211e-08 7.0096096852785017 -7.19246913509368913"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1|ab_rig_A:ikHandle1_poleVectorConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1|ab_rig_A:ikHandle1_poleVectorConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:Jnt_L_Leg5_REV|ab_rig_A:ikHandle1|ab_rig_A:ikHandle1_poleVectorConstraint1" 
		"L_IK_leg_pole_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"translate" " -type \"double3\" -2.76456129100211e-08 -6.2576432924288383e-08 -2.5120745483775409e-09"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"poleVector" " -type \"double3\" 1.2906515948481953e-08 1.43230360236264498 1.39588910399749966"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:ikHandle2" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:joint9_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:joint9_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:joint9_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg4_REV|ab_rig_A:joint9_parentConstraint1" 
		"L_IK_leg_ctrl_06W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:joint8_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:joint8_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:joint8_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:joint8_parentConstraint1" 
		"L_IK_leg_ctrl_05W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV" 
		"translate" " -type \"double3\" 0 5.20573011785745621 -12.68581604957580566"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV" 
		"translate" " -type \"double3\" -2.7645616462734779e-08 -5.20573011699717902 12.68581630151881612"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV" 
		"rotate" " -type \"double3\" 1.9776801790296743 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV" 
		"scale" " -type \"double3\" 1 0.99999999999999989 0.99999999999999989"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"translateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"translateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"translateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"rotate" " -type \"double3\" -1.97768017902967475 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"scale" " -type \"double3\" 1 1.00000000000000022 1.00000000000000022"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"poleVector" " -type \"double3\" -1.2318480125826953e-08 1.8753715891569378 0.69496863424401301"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg7_REV|ab_rig_A:ikHandle3" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg6_orientConstraint_REV" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg6_orientConstraint_REV" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg6_orientConstraint_REV" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:Jnt_L_Leg3_REV|ab_rig_A:Jnt_L_Leg6_REV|ab_rig_A:Jnt_L_Leg6_orientConstraint_REV" 
		"L_IK_leg_ctrl_006W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:joint7_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:joint7_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:joint7_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:Jnt_L_Leg2_REV|ab_rig_A:joint7_parentConstraint1" 
		"L_IK_leg_ctrl_02W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:joint6_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:joint6_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:joint6_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Leg1_REV|ab_rig_A:joint6_parentConstraint1" 
		"L_IK_leg_ctrl_01W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:L_Leg_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:L_Leg_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:L_Leg_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:L_Leg_parentConstraint1" 
		"waist_JNTW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK" 
		"translate" " -type \"double3\" -7.7343 -0.90226174357079003 2.9397700229694124e-06"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK" 
		"rotate" " -type \"double3\" -98.33253675564256469 4.64832105473998958 -4.6843637850520583"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"translate" " -type \"double3\" 0 36.00710320603396042 4.3552733441920566e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"rotate" " -type \"double3\" 89.34840745407819895 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"translate" " -type \"double3\" 0 30.65926207204695686 -6.564887630844396e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"rotate" " -type \"double3\" -1.57004947138188133 2.46659698822977358 1.00426630761536129"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"translate" " -type \"double3\" 0 6.75721163909731626 -7.43007832233602272"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"rotate" " -type \"double3\" 10.06323282978630829 9.4739155282565244e-07 -3.5441129290171332e-06"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:Jnt_R_ToeTip_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:Jnt_R_ToeTip_IK" 
		"translate" " -type \"double3\" 0 4.76483601545214874 -12.85795422050411752"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:Jnt_R_ToeTip_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:Jnt_R_ToeTip_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:effector6" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:effector6" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:effector6" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK|ab_rig_A:effector6" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:effector5" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:effector5" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:effector5" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:effector5" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:effector4" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:effector4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:effector4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:effector4" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_ToeTip_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_ToeTip_FK" 
		"translate" " -type \"double3\" 0 4.76483601545214874 -12.85795422050411752"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_ToeTip_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_ToeTip_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_Toe_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_Toe_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_Toe_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Toe_FK|ab_rig_A:Jnt_R_Toe_parentConstraint_FK" 
		"L_FK_toe_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Ankle_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Ankle_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Ankle_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Ankle_FK|ab_rig_A:Jnt_R_Ankle_parentConstraint_FK" 
		"L_FK_ankle_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Knee_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Knee_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Knee_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Knee_FK|ab_rig_A:Jnt_R_Knee_parentConstraint_FK" 
		"L_FK_knee_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Thigh1_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Thigh1_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Thigh1_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_FK|ab_rig_A:Jnt_R_Thigh1_parentConstraint_FK" 
		"L_FK_thigh_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV" 
		"translate" " -type \"double3\" 0 -7.00959999999999717 7.19246"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"rotate" " -type \"double3\" 180 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4|ab_rig_A:ikHandle4_poleVectorConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4|ab_rig_A:ikHandle4_poleVectorConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4|ab_rig_A:ikHandle4_poleVectorConstraint1" 
		"L_IK_leg_pole_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:Jnt_R_Leg5_REV|ab_rig_A:ikHandle4_pole" 
		"scale" " -type \"double3\" 1 1 -1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:joint15_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:joint15_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:joint15_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg4_REV|ab_rig_A:joint15_parentConstraint1" 
		"L_IK_leg_ctrl_06W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV" 
		"translate" " -type \"double3\" 0 -5.20572809999999908 12.68586000000000169"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV" 
		"translate" " -type \"double3\" 0 5.20572809999999997 -12.68586000000000169"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV" 
		"rotate" " -type \"double3\" 1.9776801790296743 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV" 
		"scale" " -type \"double3\" 1 0.99999999999999989 0.99999999999999989"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"rotate" " -type \"double3\" 178.02231982097032414 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"poleVector" " -type \"double3\" 2.6558323797942762e-06 -8.69624432348563481 -3.27516642337493025"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg7_REV|ab_rig_A:ikHandle6" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg6_orientConstraint_REV" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg6_orientConstraint_REV" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg6_orientConstraint_REV" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:Jnt_R_Leg6_REV|ab_rig_A:Jnt_R_Leg6_orientConstraint_REV" 
		"R_IK_leg_ctrl_006W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"translate" " -type \"double3\" 0 -5.20572809999998487 12.68586000000000169"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"rotate" " -type \"double3\" 180 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5|ab_rig_A:ikHandle5_poleVectorConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5|ab_rig_A:ikHandle5_poleVectorConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:ikHandle5|ab_rig_A:ikHandle5_poleVectorConstraint1" 
		"locator1W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:joint14_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:joint14_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:joint14_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:Jnt_R_Leg3_REV|ab_rig_A:joint14_parentConstraint1" 
		"L_IK_leg_ctrl_05W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:joint13_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:joint13_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:joint13_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:Jnt_R_Leg2_REV|ab_rig_A:joint13_parentConstraint1" 
		"L_IK_leg_ctrl_02W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:joint12_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:joint12_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:joint12_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Leg1_REV|ab_rig_A:joint12_parentConstraint1" 
		"L_IK_leg_ctrl_01W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:R_Leg_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:R_Leg_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:R_Leg_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:R_Leg_parentConstraint1" 
		"waist_JNTW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK" 
		"translate" " -type \"double3\" 13.61320865349512843 112.96467441455206426 -4.49669234664609796"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK" 
		"rotate" " -type \"double3\" -51.51688483990221101 34.30441507613689112 -19.89851065337832026"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK" 
		"translate" " -type \"double3\" 19.50963169173477496 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK" 
		"rotate" " -type \"double3\" 0 4.67239549406126908 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK" 
		"translate" " -type \"double3\" 21.33533915369259759 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_HandTip_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_HandTip_IK" 
		"translate" " -type \"double3\" 8.81926135523471189 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_HandTip_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_HandTip_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_Hand_orientConstraint_IK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_Hand_orientConstraint_IK" 
		"offset" " -type \"double3\" 0.37387292150726265 -0.13516223774065469 1.43053764005041106"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_Hand_orientConstraint_IK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:Jnt_L_Hand_IK|ab_rig_A:Jnt_L_Hand_orientConstraint_IK" 
		"L_IK_hand_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:effector7" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:effector7" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:effector7" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK|ab_rig_A:effector7" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_HandTip_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_HandTip_FK" 
		"translate" " -type \"double3\" 8.81926135523471189 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_HandTip_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_HandTip_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_Hand_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_Hand_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_Hand_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Hand_FK|ab_rig_A:Jnt_L_Hand_parentConstraint_FK" 
		"L_FK_hand_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Elbow_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Elbow_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Elbow_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Elbow_FK|ab_rig_A:Jnt_L_Elbow_parentConstraint_FK" 
		"L_FK_elbow_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Shoulder_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Shoulder_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Shoulder_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_FK|ab_rig_A:Jnt_L_Shoulder_parentConstraint_FK" 
		"L_FK_shoulder_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:L_Arm_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:L_Arm_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:L_Arm_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:L_Arm_parentConstraint1" 
		"L_clavicle_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK" 
		"translate" " -type \"double3\" -13.6132 112.9649999999999892 -4.49669000000000096"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK" 
		"rotate" " -type \"double3\" 5.46400479698870267 -45.3187247854464772 -25.81591370829389831"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK" 
		"translate" " -type \"double3\" -19.50990047752174661 0.00023711547991922544 -2.3938250610200384e-05"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK" 
		"rotate" " -type \"double3\" -7.0927763313783068e-06 4.67228315931411675 -0.00078608806659142736"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK" 
		"translate" " -type \"double3\" -21.33532322443347695 -3.2388245585934783e-05 -4.8189998125280908e-07"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_HandTip_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_HandTip_IK" 
		"translate" " -type \"double3\" -8.81924769594433045 4.979786352521387e-05 -9.6052607823082781e-07"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_HandTip_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_HandTip_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_Hand_orientConstraint_IK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_Hand_orientConstraint_IK" 
		"offset" " -type \"double3\" 0.37387290997434219 -0.13441094852113322 1.43054254253111024"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_Hand_orientConstraint_IK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:Jnt_R_Hand_IK|ab_rig_A:Jnt_R_Hand_orientConstraint_IK" 
		"L_IK_hand_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:effector8" 
		"visibility" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:effector8" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:effector8" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK|ab_rig_A:effector8" 
		"hideDisplay" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_HandTip_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_HandTip_FK" 
		"translate" " -type \"double3\" -8.81924769594433045 4.979786352521387e-05 -9.6052607823082781e-07"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_HandTip_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_HandTip_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_Hand_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_Hand_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_Hand_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Hand_FK|ab_rig_A:Jnt_R_Hand_parentConstraint_FK" 
		"L_FK_hand_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Elbow_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Elbow_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Elbow_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Elbow_FK|ab_rig_A:Jnt_R_Elbow_parentConstraint_FK" 
		"L_FK_elbow_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Shoulder_parentConstraint_FK" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Shoulder_parentConstraint_FK" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Shoulder_parentConstraint_FK" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_FK|ab_rig_A:Jnt_R_Shoulder_parentConstraint_FK" 
		"L_FK_shoulder_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:R_Arm_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:R_Arm_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:R_Arm_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:R_Arm_parentConstraint1" 
		"R_clavicle_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1" "scale" " -type \"double3\" 1 1 1"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2" 
		"translate" " -type \"double3\" 0 7.97873498311423646 -0.45906887017546749"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_C_HeadTip" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_C_HeadTip" 
		"translate" " -type \"double3\" 0 17.49554198754285039 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_C_HeadTip" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_C_HeadTip" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_Head_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_Head_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_Head_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_C_Head|ab_rig_A:Jnt_Head_parentConstraint1" 
		"head_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_Neck_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_Neck_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_Neck_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_C_Neck|ab_rig_A:Jnt_Neck_parentConstraint1" 
		"neck_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder" 
		"translate" " -type \"double3\" 7.61223091247586314 -1.64025104283909684 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow" 
		"translate" " -type \"double3\" 19.50963169173477496 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand" 
		"translate" " -type \"double3\" 21.33533915369259759 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip" 
		"translate" " -type \"double3\" 5 0 -0.00012651198877773896"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip" 
		"rotate" " -type \"double3\" 0 -0.0015730436102026223 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:Jnt_L_FingerIndex4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:Jnt_L_FingerIndex4" 
		"translate" " -type \"double3\" 2.98961298741525949 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:Jnt_L_FingerIndex4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:Jnt_L_FingerIndex4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:joint22_parentConstraint2" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:joint22_parentConstraint2" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:joint22_parentConstraint2" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:Jnt_L_FingerIndex3|ab_rig_A:joint22_parentConstraint2" 
		"L_index_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:joint21_parentConstraint2" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:joint21_parentConstraint2" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:joint21_parentConstraint2" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:Jnt_L_FingerIndex2|ab_rig_A:joint21_parentConstraint2" 
		"L_index_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:joint20_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:joint20_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:joint20_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerIndex1|ab_rig_A:joint20_parentConstraint1" 
		"L_index_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:Jnt_L_FingerMiddle4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:Jnt_L_FingerMiddle4" 
		"translate" " -type \"double3\" 3.41087318522577521 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:Jnt_L_FingerMiddle4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:Jnt_L_FingerMiddle4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:joint22_parentConstraint3" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:joint22_parentConstraint3" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:joint22_parentConstraint3" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:Jnt_L_FingerMiddle3|ab_rig_A:joint22_parentConstraint3" 
		"L_middle_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:joint21_parentConstraint3" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:joint21_parentConstraint3" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:joint21_parentConstraint3" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:Jnt_L_FingerMiddle2|ab_rig_A:joint21_parentConstraint3" 
		"L_middle_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:joint24_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:joint24_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:joint24_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerMiddle1|ab_rig_A:joint24_parentConstraint1" 
		"L_middle_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:Jnt_L_FingerPinky4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:Jnt_L_FingerPinky4" 
		"translate" " -type \"double3\" 2.85897884906973676 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:Jnt_L_FingerPinky4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:Jnt_L_FingerPinky4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:joint22_parentConstraint4" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:joint22_parentConstraint4" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:joint22_parentConstraint4" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:Jnt_L_FingerPinky3|ab_rig_A:joint22_parentConstraint4" 
		"L_middle_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:joint21_parentConstraint4" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:joint21_parentConstraint4" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:joint21_parentConstraint4" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:Jnt_L_FingerPinky2|ab_rig_A:joint21_parentConstraint4" 
		"L_middle_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:joint25_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:joint25_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:joint25_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerPinky1|ab_rig_A:joint25_parentConstraint1" 
		"L_middle_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:Jnt_L_FingerRing4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:Jnt_L_FingerRing4" 
		"translate" " -type \"double3\" 2.52082986164811906 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:Jnt_L_FingerRing4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:Jnt_L_FingerRing4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:joint22_parentConstraint5" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:joint22_parentConstraint5" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:joint22_parentConstraint5" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:Jnt_L_FingerRing3|ab_rig_A:joint22_parentConstraint5" 
		"L_middle_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:joint21_parentConstraint5" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:joint21_parentConstraint5" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:joint21_parentConstraint5" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:Jnt_L_FingerRing2|ab_rig_A:joint21_parentConstraint5" 
		"L_middle_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:joint26_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:joint26_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:joint26_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerRing1|ab_rig_A:joint26_parentConstraint1" 
		"L_middle_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:Jnt_L_FingerThumb4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:Jnt_L_FingerThumb4" 
		"translate" " -type \"double3\" 3.41434316470234656 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:Jnt_L_FingerThumb4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:Jnt_L_FingerThumb4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:joint22_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:joint22_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:joint22_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:Jnt_L_FingerThumb3|ab_rig_A:joint22_parentConstraint1" 
		"L_middle_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:joint21_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:joint21_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:joint21_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:Jnt_L_FingerThumb2|ab_rig_A:joint21_parentConstraint1" 
		"L_middle_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:joint27_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:joint27_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:joint27_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Shoulder|ab_rig_A:Jnt_L_Elbow|ab_rig_A:Jnt_L_Hand|ab_rig_A:Jnt_L_HandTip|ab_rig_A:Jnt_L_FingerThumb1|ab_rig_A:joint27_parentConstraint1" 
		"L_middle_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Clavicle_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Clavicle_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Clavicle_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_L_Clavicle|ab_rig_A:Jnt_L_Clavicle_parentConstraint1" 
		"L_clavicle_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder" 
		"translate" " -type \"double3\" -7.61222000000000065 1.64000000000000057 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow" 
		"translate" " -type \"double3\" -19.50990047752174661 0.00023711547991922544 -2.3938250610200384e-05"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand" 
		"translate" " -type \"double3\" -21.33532322443347695 -3.2388245585934783e-05 -4.8189998125280908e-07"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip" 
		"translate" " -type \"double3\" -5 4.979786352521387e-05 -9.6052607823082781e-07"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:Jnt_R_FingerMiddle4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:Jnt_R_FingerMiddle4" 
		"translate" " -type \"double3\" -3.41090662994270843 -8.8366284067831202e-06 2.5193251531163696e-05"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:Jnt_R_FingerMiddle4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:Jnt_R_FingerMiddle4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:joint34_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:joint34_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:joint34_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:Jnt_R_FingerMiddle3|ab_rig_A:joint34_parentConstraint1" 
		"L_middle_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:joint33_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:joint33_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:joint33_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:Jnt_R_FingerMiddle2|ab_rig_A:joint33_parentConstraint1" 
		"L_middle_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:joint32_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:joint32_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:joint32_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerMiddle1|ab_rig_A:joint32_parentConstraint1" 
		"L_middle_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:Jnt_R_FingerPinky4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:Jnt_R_FingerPinky4" 
		"translate" " -type \"double3\" -2.52078827307425968 1.9990846240602878e-06 4.9266576233719661e-05"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:Jnt_R_FingerPinky4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:Jnt_R_FingerPinky4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:joint42_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:joint42_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:joint42_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:Jnt_R_FingerPinky3|ab_rig_A:joint42_parentConstraint1" 
		"L_little_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:joint41_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:joint41_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:joint41_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:Jnt_R_FingerPinky2|ab_rig_A:joint41_parentConstraint1" 
		"L_little_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:joint40_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:joint40_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:joint40_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerPinky1|ab_rig_A:joint40_parentConstraint1" 
		"L_little_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:Jnt_R_FingerRing4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:Jnt_R_FingerRing4" 
		"translate" " -type \"double3\" -2.85899073721901686 -2.2327477866568302e-06 2.4306797619999543e-05"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:Jnt_R_FingerRing4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:Jnt_R_FingerRing4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:joint38_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:joint38_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:joint38_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:Jnt_R_FingerRing3|ab_rig_A:joint38_parentConstraint1" 
		"L_ring_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:joint37_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:joint37_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:joint37_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:Jnt_R_FingerRing2|ab_rig_A:joint37_parentConstraint1" 
		"L_ring_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:joint36_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:joint36_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:joint36_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerRing1|ab_rig_A:joint36_parentConstraint1" 
		"L_ring_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:Jnt_R_FingerIndex4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:Jnt_R_FingerIndex4" 
		"translate" " -type \"double3\" -2.98962842741089219 -9.4717907455077466e-06 -1.8082849770451048e-05"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:Jnt_R_FingerIndex4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:Jnt_R_FingerIndex4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:joint30_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:joint30_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:joint30_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:Jnt_R_FingerIndex3|ab_rig_A:joint30_parentConstraint1" 
		"L_index_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:joint29_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:joint29_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:joint29_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:Jnt_R_FingerIndex2|ab_rig_A:joint29_parentConstraint1" 
		"L_index_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:joint28_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:joint28_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:joint28_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerIndex1|ab_rig_A:joint28_parentConstraint1" 
		"L_index_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:Jnt_R_FingerThumb4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:Jnt_R_FingerThumb4" 
		"translate" " -type \"double3\" -3.41433781683295479 9.1778834914180152e-06 -5.4028179903298224e-06"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:Jnt_R_FingerThumb4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:Jnt_R_FingerThumb4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:joint46_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:joint46_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:joint46_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:Jnt_R_FingerThumb3|ab_rig_A:joint46_parentConstraint1" 
		"L_thumb_fin_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:joint45_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:joint45_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:joint45_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:Jnt_R_FingerThumb2|ab_rig_A:joint45_parentConstraint1" 
		"L_thumb_fin_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:joint44_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:joint44_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:joint44_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Shoulder|ab_rig_A:Jnt_R_Elbow|ab_rig_A:Jnt_R_Hand|ab_rig_A:Jnt_R_HandTip|ab_rig_A:Jnt_R_FingerThumb1|ab_rig_A:joint44_parentConstraint1" 
		"L_thumb_fin_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Clavicle_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Clavicle_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Clavicle_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_R_Clavicle|ab_rig_A:Jnt_R_Clavicle_parentConstraint1" 
		"R_clavicle_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_Chest_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_Chest_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_Chest_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_C_Chest|ab_rig_A:Jnt_Chest_parentConstraint1" 
		"spine_003_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_Spine2_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_Spine2_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_Spine2_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Spine2|ab_rig_A:Jnt_Spine2_orientConstraint1" 
		"spine_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3" 
		"translate" " -type \"double3\" 0 0 -6.67661605013654835"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4" 
		"translate" " -type \"double3\" 0 0 -6.67677688598632457"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5" 
		"translate" " -type \"double3\" 0 0 -6.6767730712890625"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6" 
		"translate" " -type \"double3\" 0 0 -6.67678070068359375"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6|ab_rig_A:Jnt_C_Tail7" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6|ab_rig_A:Jnt_C_Tail7" 
		"translate" " -type \"double3\" 0 0 -6.67677688598632812"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6|ab_rig_A:Jnt_C_Tail7" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6|ab_rig_A:Jnt_C_Tail7|ab_rig_A:Jnt_C_TailTip" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6|ab_rig_A:Jnt_C_Tail7|ab_rig_A:Jnt_C_TailTip" 
		"translate" " -type \"double3\" 0 0 -10.5506134033203125"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:Jnt_C_Tail6|ab_rig_A:Jnt_C_Tail7|ab_rig_A:Jnt_C_TailTip" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:joint5_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:joint5_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:joint5_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:Jnt_C_Tail4|ab_rig_A:Jnt_C_Tail5|ab_rig_A:joint5_orientConstraint1" 
		"nurbsCircle1W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:joint3_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:joint3_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:joint3_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail3|ab_rig_A:joint3_orientConstraint1" 
		"nurbsCircle1W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail2_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail2_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail2_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail2|ab_rig_A:Jnt_C_Tail2_parentConstraint1" 
		"tail_ctrl_001W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:joint1_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:joint1_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:joint1_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:joint1_orientConstraint1" 
		"nurbsCircle1W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail1_pointConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail1_pointConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Tail1|ab_rig_A:Jnt_C_Tail1_pointConstraint1" 
		"nurbsCircle1W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh" 
		"translate" " -type \"double3\" -7.7343 -0.90226174357079003 2.9397700229694124e-06"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee" 
		"translate" " -type \"double3\" 0 36.00710320603396042 4.3552733441920566e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle" 
		"translate" " -type \"double3\" 0 30.65926207204695686 -6.564887630844396e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle|ab_rig_A:Jnt_R_Toe" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle|ab_rig_A:Jnt_R_Toe" 
		"translate" " -type \"double3\" 0 6.75721163909731626 -7.43007832233602272"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle|ab_rig_A:Jnt_R_Toe" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle|ab_rig_A:Jnt_R_Toe|ab_rig_A:Jnt_R_ToeTip" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle|ab_rig_A:Jnt_R_Toe|ab_rig_A:Jnt_R_ToeTip" 
		"translate" " -type \"double3\" 0 4.76483601545214874 -12.85795422050411752"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle|ab_rig_A:Jnt_R_Toe|ab_rig_A:Jnt_R_ToeTip" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_R_Thigh|ab_rig_A:Jnt_R_Knee|ab_rig_A:Jnt_R_Ankle|ab_rig_A:Jnt_R_Toe|ab_rig_A:Jnt_R_ToeTip" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh" 
		"translate" " -type \"double3\" 7.73429677106044622 -0.90227137225259924 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee" 
		"translate" " -type \"double3\" 0 -36.00707375200849469 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle" 
		"translate" " -type \"double3\" 0 -30.65927035642022247 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle|ab_rig_A:Jnt_L_Toe" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle|ab_rig_A:Jnt_L_Toe" 
		"translate" " -type \"double3\" 0 -6.75722106597899952 7.43008778587791419"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle|ab_rig_A:Jnt_L_Toe" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle|ab_rig_A:Jnt_L_Toe|ab_rig_A:Jnt_L_ToeTip" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle|ab_rig_A:Jnt_L_Toe|ab_rig_A:Jnt_L_ToeTip" 
		"translate" " -type \"double3\" 0 -4.76483947666450813 12.85791061801002044"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle|ab_rig_A:Jnt_L_Toe|ab_rig_A:Jnt_L_ToeTip" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_L_Thigh|ab_rig_A:Jnt_L_Knee|ab_rig_A:Jnt_L_Ankle|ab_rig_A:Jnt_L_Toe|ab_rig_A:Jnt_L_ToeTip" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_Waist_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_Waist_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_Waist_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_C_Waist|ab_rig_A:Jnt_Waist_parentConstraint1" 
		"spine_001_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_Spine1_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_Spine1_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_Spine1_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Spine1|ab_rig_A:Jnt_Spine1_parentConstraint1" 
		"spine_002_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1" "scale" " -type \"double3\" 1 1 1"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword2|ab_rig_A:Jnt_C_Sword2_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword2|ab_rig_A:Jnt_C_Sword2_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword2|ab_rig_A:Jnt_C_Sword2_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword2|ab_rig_A:Jnt_C_Sword2_parentConstraint1" 
		"CTRL_R_sword_tipW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword1_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword1_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword1_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp" "visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1" 
		"translate" " -type \"double3\" 0 -0.032395259220038497 -6.93235240114973195"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3" 
		"rotate" " -type \"double3\" -12.3806687323634943 -4.55821540413732507 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1_offset3_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1_offset3_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1_offset3_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_L_Leg_Grp_FK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_L_Leg_Grp_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_L_Leg_Grp_FK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_L_Leg_Grp_FK|ab_rig_A:Rig_L_Thigh_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_L_Leg_Grp_FK|ab_rig_A:Rig_L_Thigh_FK|ab_rig_A:Rig_L_Knee_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_L_Leg_Grp_FK|ab_rig_A:Rig_L_Thigh_FK|ab_rig_A:Rig_L_Knee_FK|ab_rig_A:Rig_L_Ankle_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_L_Leg_Grp_FK|ab_rig_A:Rig_L_Thigh_FK|ab_rig_A:Rig_L_Knee_FK|ab_rig_A:Rig_L_Ankle_FK|ab_rig_A:Rig_L_Toe_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_R_Leg_Grp_FK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_R_Leg_Grp_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_R_Leg_Grp_FK" 
		"scale" " -type \"double3\" -1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_R_Leg_Grp_FK|ab_rig_A:Rig_R_Thigh_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_R_Leg_Grp_FK|ab_rig_A:Rig_R_Thigh_FK|ab_rig_A:Rig_R_Knee_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_R_Leg_Grp_FK|ab_rig_A:Rig_R_Thigh_FK|ab_rig_A:Rig_R_Knee_FK|ab_rig_A:Rig_R_Ankle_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_R_Leg_Grp_FK|ab_rig_A:Rig_R_Thigh_FK|ab_rig_A:Rig_R_Knee_FK|ab_rig_A:Rig_R_Ankle_FK|ab_rig_A:Rig_R_Toe_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4" 
		"rotate" " -type \"double3\" 10.73778446014993015 -6.79425838028741325 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:group10_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:group10_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:group10_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:group10_parentConstraint1" 
		"joint4W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset" 
		"scale" " -type \"double3\" -1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Neck_offset2_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Neck_offset2_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Neck_offset2_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Arm_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Arm_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Arm_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Arm_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Arm_orientConstraint1" 
		"offset" " -type \"double3\" 180 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Arm_orientConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:group48_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:group48_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:group48_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:group48_parentConstraint1" 
		"spine_002_JNTW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK" 
		"rotate" " -type \"double3\" 12.13492107786349905 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK" 
		"rotate" " -type \"double3\" 23.69541997344266449 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK" 
		"rotate" " -type \"double3\" 10.06325093578632668 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK" 
		"parent_switch" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7" 
		"translate" " -type \"double3\" -1.1402875063737383e-05 -2.8765400372776639e-07 4.1622163049481742e-07"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7" 
		"rotate" " -type \"double3\" 0 -0.5406796470869415 45.1783470621266332"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7" 
		"scale" " -type \"double3\" 1 0.99999999999999989 0.99999999999999989"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7|ab_rig_A:ikHandle7_poleVectorConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7|ab_rig_A:ikHandle7_poleVectorConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK|ab_rig_A:ikHandle7|ab_rig_A:ikHandle7_poleVectorConstraint1" 
		"L_IK_hand_pole_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:group49_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:group49_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:group49_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_HandPole_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK" 
		"parent_switch" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8" 
		"translate" " -type \"double3\" 2.1887741265658178e-05 2.5016401025368395e-05 3.9703879721741941e-06"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8" 
		"rotate" " -type \"double3\" 0 179.45932035291306761 45.1783470621266332"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8" 
		"scale" " -type \"double3\" 1 1.00000000000000022 -0.99999999999999989"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8" 
		"offset" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8" 
		"roll" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8" 
		"twist" " 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8" 
		"ikBlend" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8|ab_rig_A:ikHandle8_poleVectorConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8|ab_rig_A:ikHandle8_poleVectorConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK|ab_rig_A:ikHandle8|ab_rig_A:ikHandle8_poleVectorConstraint1" 
		"L_IK_hand_pole_ctrlW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:group50_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:group50_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:group50_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_HandPole_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1" 
		"rotate" " -type \"double3\" 0 0 -18.3565798305806247"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2" 
		"rotate" " -type \"double3\" 0 0 -7.70807224324083684"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3" 
		"rotate" " -type \"double3\" 0 0 -27.13923024769989922"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1" 
		"rotate" " -type \"double3\" 0 0 -27.13923024769989922"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2" 
		"rotate" " -type \"double3\" 0 0 -18.6528049870666095"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3" 
		"rotate" " -type \"double3\" 0 0 -22.42680120819169431"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1" 
		"rotate" " -type \"double3\" 0 0 -18.37136625204653839"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2" 
		"rotate" " -type \"double3\" 0 0 -35.3356112275017864"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3" 
		"rotate" " -type \"double3\" 0 0 -35.90721577024220323"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1" 
		"rotate" " -type \"double3\" 0 0 -28.20631701005391179"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2" 
		"rotate" " -type \"double3\" 0 0 -8.20144476565503844"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3" 
		"rotate" " -type \"double3\" 0 0 -18.25092297676883391"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2" 
		"rotate" " -type \"double3\" 0 0 -6.67205149801287156"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3" 
		"rotate" " -type \"double3\" 0 0 -18.3565798305806247"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:group41_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:group41_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:group41_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:group41_parentConstraint1" 
		"L_hand_JNTW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_Grp_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_Grp_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_Grp_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_Grp_parentConstraint1" 
		"L_hand_tip_JNTW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:R_Weapon1_Grp_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:R_Weapon1_Grp_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:R_Weapon1_Grp_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:R_Weapon1_Grp_parentConstraint1" 
		"R_hand_tip_JNTW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1" 
		"rotate" " -type \"double3\" 0 0 -18.7749915344787901"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2" 
		"rotate" " -type \"double3\" 0 0 -28.70739262646675627"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3" 
		"rotate" " -type \"double3\" 0 0 -12.16950623398198594"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2" 
		"rotate" " -type \"double3\" 0 0 -28.33407112447155285"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3" 
		"rotate" " -type \"double3\" 0 0 -23.69781462828127161"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1" 
		"rotate" " -type \"double3\" 0 0 -23.69781462828127161"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2" 
		"rotate" " -type \"double3\" 0 0 -23.47655165300182745"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3" 
		"rotate" " -type \"double3\" 0 0 -23.65678959638960421"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1" 
		"rotate" " -type \"double3\" 0 0 -26.15735134392964412"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2" 
		"rotate" " -type \"double3\" 0 0 -28.33407112447155285"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3" 
		"rotate" " -type \"double3\" 0 0 -28.70739262646675627"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1" 
		"rotate" " -type \"double3\" 0 0 -17.48533688460512892"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2" 
		"rotate" " -type \"double3\" 0 0 -16.06520128720256935"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3" 
		"rotate" " -type \"double3\" 0 0 -12.81273702179872309"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:group45_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:group45_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:group45_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:group45_parentConstraint1" 
		"R_hand_tip_JNTW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword" 
		"blendParent1" " -k 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_R_Weapon2W0" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_L_Weapon2W1" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_C_Weapon_set_targetW2" " -k 1 1"
		3 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateX" 
		"|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateX" 
		""
		3 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateY" 
		"|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateY" 
		""
		3 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateZ" 
		"|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateZ" 
		""
		3 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateX" 
		"|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateX" 
		""
		3 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateY" 
		"|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateY" 
		""
		3 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateZ" 
		"|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateZ" 
		""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateZ" 
		"ab_rig_ARN.placeHolderList[536]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateX" 
		"ab_rig_ARN.placeHolderList[537]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateY" 
		"ab_rig_ARN.placeHolderList[538]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateZ" 
		"ab_rig_ARN.placeHolderList[539]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateY" 
		"ab_rig_ARN.placeHolderList[540]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateX" 
		"ab_rig_ARN.placeHolderList[541]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateX" 
		"ab_rig_ARN.placeHolderList[542]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateY" 
		"ab_rig_ARN.placeHolderList[543]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateZ" 
		"ab_rig_ARN.placeHolderList[544]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateZ" 
		"ab_rig_ARN.placeHolderList[545]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateY" 
		"ab_rig_ARN.placeHolderList[546]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateX" 
		"ab_rig_ARN.placeHolderList[547]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateZ" 
		"ab_rig_ARN.placeHolderList[548]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateY" 
		"ab_rig_ARN.placeHolderList[549]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateX" 
		"ab_rig_ARN.placeHolderList[550]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateZ" 
		"ab_rig_ARN.placeHolderList[551]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateX" 
		"ab_rig_ARN.placeHolderList[552]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateY" 
		"ab_rig_ARN.placeHolderList[553]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateY" 
		"ab_rig_ARN.placeHolderList[554]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateZ" 
		"ab_rig_ARN.placeHolderList[555]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateX" 
		"ab_rig_ARN.placeHolderList[556]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.parent_swaitch" 
		"ab_rig_ARN.placeHolderList[557]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateY" 
		"ab_rig_ARN.placeHolderList[558]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateZ" 
		"ab_rig_ARN.placeHolderList[559]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateX" 
		"ab_rig_ARN.placeHolderList[560]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateY" 
		"ab_rig_ARN.placeHolderList[561]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateZ" 
		"ab_rig_ARN.placeHolderList[562]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateX" 
		"ab_rig_ARN.placeHolderList[563]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateX" 
		"ab_rig_ARN.placeHolderList[564]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateY" 
		"ab_rig_ARN.placeHolderList[565]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateZ" 
		"ab_rig_ARN.placeHolderList[566]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateX" 
		"ab_rig_ARN.placeHolderList[567]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateY" 
		"ab_rig_ARN.placeHolderList[568]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateZ" 
		"ab_rig_ARN.placeHolderList[569]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateX" 
		"ab_rig_ARN.placeHolderList[570]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateY" 
		"ab_rig_ARN.placeHolderList[571]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateZ" 
		"ab_rig_ARN.placeHolderList[572]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateX" 
		"ab_rig_ARN.placeHolderList[573]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateY" 
		"ab_rig_ARN.placeHolderList[574]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateZ" 
		"ab_rig_ARN.placeHolderList[575]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateX" 
		"ab_rig_ARN.placeHolderList[576]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateY" 
		"ab_rig_ARN.placeHolderList[577]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateZ" 
		"ab_rig_ARN.placeHolderList[578]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.parent_switch" 
		"ab_rig_ARN.placeHolderList[579]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateX" 
		"ab_rig_ARN.placeHolderList[580]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateY" 
		"ab_rig_ARN.placeHolderList[581]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateZ" 
		"ab_rig_ARN.placeHolderList[582]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.L_Arm_FKIK" 
		"ab_rig_ARN.placeHolderList[583]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.R_Arm_FKIK" 
		"ab_rig_ARN.placeHolderList[584]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.L_Leg_FKIK" 
		"ab_rig_ARN.placeHolderList[585]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.R_Leg_FKIK" 
		"ab_rig_ARN.placeHolderList[586]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.sword" 
		"ab_rig_ARN.placeHolderList[587]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.tail" 
		"ab_rig_ARN.placeHolderList[588]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye.translateY" 
		"ab_rig_ARN.placeHolderList[589]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye.translateX" 
		"ab_rig_ARN.placeHolderList[590]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateY" 
		"ab_rig_ARN.placeHolderList[591]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateX" 
		"ab_rig_ARN.placeHolderList[592]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateY" 
		"ab_rig_ARN.placeHolderList[593]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateX" 
		"ab_rig_ARN.placeHolderList[594]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.parent_switch" 
		"ab_rig_ARN.placeHolderList[595]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateX" 
		"ab_rig_ARN.placeHolderList[596]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateY" 
		"ab_rig_ARN.placeHolderList[597]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateZ" 
		"ab_rig_ARN.placeHolderList[598]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[599]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[600]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[601]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[602]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[603]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[604]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[605]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[606]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[607]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.parent_switch" 
		"ab_rig_ARN.placeHolderList[608]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateX" 
		"ab_rig_ARN.placeHolderList[609]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateY" 
		"ab_rig_ARN.placeHolderList[610]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateZ" 
		"ab_rig_ARN.placeHolderList[611]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[612]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[613]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[614]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[615]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[616]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[617]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[618]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[619]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[620]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Weapon_set_speace|ab_rig_A:Rig_C_Weapon_set_offset|ab_rig_A:Rig_C_Weapon_set.rotateZ" 
		"ab_rig_ARN.placeHolderList[621]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[622]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[623]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[624]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[625]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateY" 
		"ab_rig_ARN.placeHolderList[626]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateX" 
		"ab_rig_ARN.placeHolderList[627]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[628]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[629]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[630]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[631]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[632]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[633]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[634]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[635]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[636]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[637]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[638]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[639]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[640]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[641]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[642]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[643]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[644]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[645]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[646]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[647]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[648]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[649]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateY" 
		"ab_rig_ARN.placeHolderList[650]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateX" 
		"ab_rig_ARN.placeHolderList[651]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[652]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[653]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[654]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[655]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[656]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[657]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[658]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[659]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[660]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[661]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[662]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[663]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[664]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[665]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[666]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[667]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[668]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[669]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateX" 
		"ab_rig_ARN.placeHolderList[670]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateY" 
		"ab_rig_ARN.placeHolderList[671]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateZ" 
		"ab_rig_ARN.placeHolderList[672]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateX" 
		"ab_rig_ARN.placeHolderList[673]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateY" 
		"ab_rig_ARN.placeHolderList[674]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateZ" 
		"ab_rig_ARN.placeHolderList[675]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateX" 
		"ab_rig_ARN.placeHolderList[676]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateY" 
		"ab_rig_ARN.placeHolderList[677]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateZ" 
		"ab_rig_ARN.placeHolderList[678]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateX" 
		"ab_rig_ARN.placeHolderList[679]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateY" 
		"ab_rig_ARN.placeHolderList[680]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateZ" 
		"ab_rig_ARN.placeHolderList[681]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateX" 
		"ab_rig_ARN.placeHolderList[682]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateY" 
		"ab_rig_ARN.placeHolderList[683]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateZ" 
		"ab_rig_ARN.placeHolderList[684]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateX" 
		"ab_rig_ARN.placeHolderList[685]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateY" 
		"ab_rig_ARN.placeHolderList[686]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateZ" 
		"ab_rig_ARN.placeHolderList[687]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateX" 
		"ab_rig_ARN.placeHolderList[688]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateY" 
		"ab_rig_ARN.placeHolderList[689]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateZ" 
		"ab_rig_ARN.placeHolderList[690]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateX" 
		"ab_rig_ARN.placeHolderList[691]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateY" 
		"ab_rig_ARN.placeHolderList[692]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateZ" 
		"ab_rig_ARN.placeHolderList[693]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateX" 
		"ab_rig_ARN.placeHolderList[694]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateY" 
		"ab_rig_ARN.placeHolderList[695]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateZ" 
		"ab_rig_ARN.placeHolderList[696]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateX" 
		"ab_rig_ARN.placeHolderList[697]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateY" 
		"ab_rig_ARN.placeHolderList[698]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateZ" 
		"ab_rig_ARN.placeHolderList[699]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateX" 
		"ab_rig_ARN.placeHolderList[700]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateY" 
		"ab_rig_ARN.placeHolderList[701]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateZ" 
		"ab_rig_ARN.placeHolderList[702]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateX" 
		"ab_rig_ARN.placeHolderList[703]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateY" 
		"ab_rig_ARN.placeHolderList[704]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateZ" 
		"ab_rig_ARN.placeHolderList[705]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateX" 
		"ab_rig_ARN.placeHolderList[706]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateY" 
		"ab_rig_ARN.placeHolderList[707]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateZ" 
		"ab_rig_ARN.placeHolderList[708]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateX" 
		"ab_rig_ARN.placeHolderList[709]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateY" 
		"ab_rig_ARN.placeHolderList[710]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateZ" 
		"ab_rig_ARN.placeHolderList[711]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateX" 
		"ab_rig_ARN.placeHolderList[712]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateY" 
		"ab_rig_ARN.placeHolderList[713]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateZ" 
		"ab_rig_ARN.placeHolderList[714]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[715]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[716]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[717]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateZ" 
		"ab_rig_ARN.placeHolderList[718]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateY" 
		"ab_rig_ARN.placeHolderList[719]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateX" 
		"ab_rig_ARN.placeHolderList[720]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateZ" 
		"ab_rig_ARN.placeHolderList[721]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateY" 
		"ab_rig_ARN.placeHolderList[722]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateX" 
		"ab_rig_ARN.placeHolderList[723]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateX" 
		"ab_rig_ARN.placeHolderList[724]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateY" 
		"ab_rig_ARN.placeHolderList[725]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateZ" 
		"ab_rig_ARN.placeHolderList[726]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[727]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[728]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[729]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateZ" 
		"ab_rig_ARN.placeHolderList[730]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateY" 
		"ab_rig_ARN.placeHolderList[731]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateX" 
		"ab_rig_ARN.placeHolderList[732]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateZ" 
		"ab_rig_ARN.placeHolderList[733]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateY" 
		"ab_rig_ARN.placeHolderList[734]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateX" 
		"ab_rig_ARN.placeHolderList[735]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateX" 
		"ab_rig_ARN.placeHolderList[736]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateY" 
		"ab_rig_ARN.placeHolderList[737]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateZ" 
		"ab_rig_ARN.placeHolderList[738]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateX" 
		"ab_rig_ARN.placeHolderList[739]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateY" 
		"ab_rig_ARN.placeHolderList[740]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateZ" 
		"ab_rig_ARN.placeHolderList[741]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateX" 
		"ab_rig_ARN.placeHolderList[742]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateY" 
		"ab_rig_ARN.placeHolderList[743]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateZ" 
		"ab_rig_ARN.placeHolderList[744]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateX" 
		"ab_rig_ARN.placeHolderList[745]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateY" 
		"ab_rig_ARN.placeHolderList[746]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateZ" 
		"ab_rig_ARN.placeHolderList[747]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateX" 
		"ab_rig_ARN.placeHolderList[748]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateY" 
		"ab_rig_ARN.placeHolderList[749]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateZ" 
		"ab_rig_ARN.placeHolderList[750]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateX" 
		"ab_rig_ARN.placeHolderList[751]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateY" 
		"ab_rig_ARN.placeHolderList[752]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateZ" 
		"ab_rig_ARN.placeHolderList[753]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateX" 
		"ab_rig_ARN.placeHolderList[754]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateY" 
		"ab_rig_ARN.placeHolderList[755]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateZ" 
		"ab_rig_ARN.placeHolderList[756]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateX" 
		"ab_rig_ARN.placeHolderList[757]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateY" 
		"ab_rig_ARN.placeHolderList[758]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateZ" 
		"ab_rig_ARN.placeHolderList[759]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateX" 
		"ab_rig_ARN.placeHolderList[760]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateY" 
		"ab_rig_ARN.placeHolderList[761]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateZ" 
		"ab_rig_ARN.placeHolderList[762]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateX" 
		"ab_rig_ARN.placeHolderList[763]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateY" 
		"ab_rig_ARN.placeHolderList[764]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateZ" 
		"ab_rig_ARN.placeHolderList[765]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateX" 
		"ab_rig_ARN.placeHolderList[766]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateY" 
		"ab_rig_ARN.placeHolderList[767]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateZ" 
		"ab_rig_ARN.placeHolderList[768]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateX" 
		"ab_rig_ARN.placeHolderList[769]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateY" 
		"ab_rig_ARN.placeHolderList[770]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateZ" 
		"ab_rig_ARN.placeHolderList[771]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateX" 
		"ab_rig_ARN.placeHolderList[772]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateY" 
		"ab_rig_ARN.placeHolderList[773]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateZ" 
		"ab_rig_ARN.placeHolderList[774]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateX" 
		"ab_rig_ARN.placeHolderList[775]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateY" 
		"ab_rig_ARN.placeHolderList[776]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateZ" 
		"ab_rig_ARN.placeHolderList[777]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateX" 
		"ab_rig_ARN.placeHolderList[778]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateY" 
		"ab_rig_ARN.placeHolderList[779]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateZ" 
		"ab_rig_ARN.placeHolderList[780]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateX" 
		"ab_rig_ARN.placeHolderList[781]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateY" 
		"ab_rig_ARN.placeHolderList[782]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateZ" 
		"ab_rig_ARN.placeHolderList[783]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateX" 
		"ab_rig_ARN.placeHolderList[784]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateY" 
		"ab_rig_ARN.placeHolderList[785]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateZ" 
		"ab_rig_ARN.placeHolderList[786]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateX" 
		"ab_rig_ARN.placeHolderList[787]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateY" 
		"ab_rig_ARN.placeHolderList[788]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateZ" 
		"ab_rig_ARN.placeHolderList[789]" ""
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.blendParent1" 
		"ab_rig_ARN.placeHolderList[790]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.blendParent1" 
		"ab_rig_ARN.placeHolderList[791]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_SwordTip_offset|ab_rig_A:Rig_R_SwordTip.translateZ" 
		"ab_rig_ARN.placeHolderList[792]" ""
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateX" 
		"ab_rig_ARN.placeHolderList[793]" "ab_rig_A:Rig_R_Sword.tx"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateY" 
		"ab_rig_ARN.placeHolderList[794]" "ab_rig_A:Rig_R_Sword.ty"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateZ" 
		"ab_rig_ARN.placeHolderList[795]" "ab_rig_A:Rig_R_Sword.tz"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateX" 
		"ab_rig_ARN.placeHolderList[796]" "ab_rig_A:Rig_R_Sword.rx"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateY" 
		"ab_rig_ARN.placeHolderList[797]" "ab_rig_A:Rig_R_Sword.ry"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateZ" 
		"ab_rig_ARN.placeHolderList[798]" "ab_rig_A:Rig_R_Sword.rz";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A277EC0C-428A-9A6E-D523-FCADDC0BDF1D";
	setAttr ".version" -type "string" "5.1.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6D03A666-427C-44EC-05C8-029A69EAF205";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "CA358845-496B-4AD4-80D9-4AB7A212495E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "7E0DE7E2-4DE2-EA1A-7563-C28F69275167";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTA -n "Rig_C_root1_rotateZ";
	rename -uid "D5109E33-469D-AE41-E996-6B88AF8F4AB3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_root1_rotateX";
	rename -uid "45891814-403C-E300-55C0-13995895A4D8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_root1_rotateY";
	rename -uid "C03FB469-4DCB-800F-EED1-699160D1654E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_root1_translateZ";
	rename -uid "E9A008D3-450D-5720-5D42-D89EE23E70AD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 780;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
	setAttr -s 2 ".kix[0:1]"  0 0.001282050228427267;
	setAttr -s 2 ".kiy[0:1]"  0 0.99999917817326822;
	setAttr -s 2 ".kox[0:1]"  0.001282050228427267 1;
	setAttr -s 2 ".koy[0:1]"  0.99999917817326822 0;
	setAttr ".sr" yes;
createNode animCurveTL -n "Rig_C_root1_translateY";
	rename -uid "F2E6559A-4DFA-6B6A-C1F2-0B94CD634C41";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_root1_translateX";
	rename -uid "EAC1DDAC-481A-2E1C-D61F-F88B42C3AECA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_root2_rotateZ";
	rename -uid "70049726-40A0-C7EC-A6A2-C8A3C25C6FB5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_root2_rotateX";
	rename -uid "A20D7D14-4623-E59C-39A7-928C597AE31C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_root2_rotateY";
	rename -uid "03B0531C-4EFF-408B-2E7C-42AC608EB6BD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_root2_translateZ";
	rename -uid "1564DCB1-4607-ABEA-2A9E-70B665C5DE58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig_C_root2_translateY";
	rename -uid "C8533057-43A3-2921-5082-4FAB20873E72";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_C_root2_translateX";
	rename -uid "AE350C7C-4813-7FCD-B403-6B8CD51EA154";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_Waist_rotateZ";
	rename -uid "95FF4CF2-41B7-FBBE-62AB-C18421A45A49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateX";
	rename -uid "80C7866A-4811-6B7A-EA81-E099F1F1B9DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 34.317557830371676 8 34.317557830371676
		 16 34.317557830371676;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateY";
	rename -uid "7FB2598A-400C-7759-C4FD-248A28726C49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateZ";
	rename -uid "4A93ECA4-418C-14C4-8D5F-59A869F8EA6E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.80869248975603059 3 2.1273913555588466
		 8 0.80869248975603059 11 2.1273913555588466 16 0.80869248975603059;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateY";
	rename -uid "924537F9-4E24-580A-D30A-B8BA823C0D6C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -9.9348224374578056 1 -3.8071623453204566
		 2 -0.0096327961726829781 4 0.68517765811065545 5 -3.0468389873028929 6 -10.399502809323405
		 7 -11.150972110136886 8 -9.9348224374578056 9 -3.8071623453204566 10 -0.0096327961726829781
		 12 0.68517765811065545 13 -3.0468389873028929 14 -10.399502809323405 15 -11.150972110136886
		 16 -9.9348224374578056;
	setAttr -s 15 ".kix[0:14]"  0.0090775662775394467 0.0067167646390851122 
		0.030592177997201771 0.032907163680543278 0.0060141978080269793 0.0082259768024045068 
		0.14201370117866924 0.0090775662775394467 0.0067167646390851104 0.022254600830270206 
		0.032907163680543278 0.0060141978080269793 0.0082259768024045068 0.01826260576795365 
		0.0090775662775394467;
	setAttr -s 15 ".kiy[0:14]"  0.99995879804643795 0.99997744228196628 
		0.99953194978719284 -0.99945841263081181 -0.99998191454882113 -0.99996616608045608 
		0.98986469210571182 0.99995879804643795 0.99997744228196628 0.99975233570214039 -0.99945841263081181 
		-0.99998191454882113 -0.99996616608045608 0.99983322470828317 0.99995879804643795;
	setAttr -s 15 ".kox[0:14]"  0.0090775662775394467 0.0067167646390851122 
		0.022254600830270199 0.032907163680543278 0.0060141978080269793 0.0082259768024045068 
		0.14201370117866924 0.0090775662775394467 0.0067167646390851104 0.022254600830270206 
		0.032907163680543278 0.0060141978080269793 0.0082259768024045068 0.01826260576795365 
		0.0090775662775394467;
	setAttr -s 15 ".koy[0:14]"  0.99995879804643795 0.99997744228196628 
		0.99975233570214039 -0.99945841263081181 -0.99998191454882113 -0.99996616608045608 
		0.98986469210571182 0.99995879804643795 0.99997744228196628 0.99975233570214039 -0.99945841263081181 
		-0.99998191454882113 -0.99996616608045608 0.99983322470828317 0.99995879804643795;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateX";
	rename -uid "85055A8F-4660-8346-C963-BEBC06194013";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.049286040604747172 1 -0.38714273081490025
		 3 -0.80977472322580413 6 -0.872227427139731 7 -0.56385929349449304 9 0.38714273081490025
		 11 0.80977472322580413 14 0.872227427139731 15 0.56385929349449304 16 0.049286040604747172;
	setAttr -s 10 ".kix[0:9]"  0.033333333333333548 0.12550149620379292 
		0.32493818869259394 0.19709099185385959 0.079155621153336422 0.096612062241504162 
		0.32493818869259394 0.19709099185385959 0.079155621153336422 0.033333333333333548;
	setAttr -s 10 ".kiy[0:9]"  -0.54242873264132241 -0.99209343030311881 
		-0.94573525551772475 0.98038520028102294 0.99686227114874271 0.99532211340321575 
		0.94573525551772475 -0.98038520028102294 -0.99686227114874271 -0.54242873264132241;
	setAttr -s 10 ".kox[0:9]"  0.033333333333333548 0.12550149620379342 
		0.32493818869259394 0.47664004194916504 0.079155621153336422 0.096612062241504162 
		0.32493818869259394 0.47664004194916504 0.079155621153336173 0.033333333333333548;
	setAttr -s 10 ".koy[0:9]"  -0.54242873264132252 -0.99209343030311881 
		-0.94573525551772475 0.87909855557309291 0.99686227114874271 0.99532211340321575 
		0.94573525551772475 -0.87909855557309291 -0.99686227114874282 -0.54242873264132252;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateY";
	rename -uid "1FFD7633-453F-66CE-B8DB-0A833AE09DB5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.4202252900157113 2 5.0207588690737204
		 5 1.9713946552654376 6 0 8 -3.4202252900157113 10 -5.0207588690737204 13 -1.9713946552654376
		 14 0 16 3.4202252900157113;
	setAttr -s 9 ".kix[0:8]"  0.96312743652023558 0.98704360512066225 
		0.8356775110699044 0.76310026302918399 0.83567751099781784 0.98704360831822424 0.8356774944704034 
		0.7631003260769198 0.74499095429712192;
	setAttr -s 9 ".kiy[0:8]"  0.26904561141553601 -0.16045224083946644 
		-0.54922044526037972 -0.64628011617625236 -0.54922044537006465 0.16045222116923122 
		0.54922047051768641 0.6462800417321416 0.66707456705788415;
	setAttr -s 9 ".kox[0:8]"  0.92230491044604201 0.98704360512792921 
		0.83567747794298697 0.76310030482434188 0.8356775427170885 0.98704360345456355 0.83567752780599303 
		0.7631002630291841 0.85864919936971118;
	setAttr -s 9 ".koy[0:8]"  0.38646300232637876 -0.16045224079476297 
		-0.54922049566530962 -0.64628006682629213 -0.5492203971069618 0.16045225108869721 
		0.54922041979524383 0.64628011617625225 0.51256370572032695;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateZ";
	rename -uid "A0D7E5D8-47DB-9DEA-99AE-E5AFA46E16D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.9372541117626489 3 -1.9359253510801271
		 6 -1.111437290469812 8 1.9372541117626489 11 1.9359253510801271 14 1.111437290469812
		 16 -1.9372541117626489;
	setAttr -s 7 ".kix[0:6]"  1 0.99999975797477669 0.9266769840154323 
		1 0.9999997579747768 0.9266769840154323 1;
	setAttr -s 7 ".kiy[0:6]"  0 0.00069573729804558776 0.37585870655881076 
		0 -0.00069573729804558808 -0.37585870655881076 0;
	setAttr -s 7 ".kox[0:6]"  1 0.99999975797477669 0.9266769840154323 
		1 0.9999997579747768 0.9266769840154323 1;
	setAttr -s 7 ".koy[0:6]"  0 0.00069573729804558776 0.37585870655881082 
		0 -0.00069573729804558808 -0.37585870655881082 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateX";
	rename -uid "C260F21F-461D-EF91-A25C-339108032CBA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.3733630055069135 1 -4.4240178033041477
		 3 -7.3733630055069135 5 -14.009389710463134 7 -19.648035910260525 8 -7.3733630055069135
		 9 -4.4240178033041477 11 -7.3733630055069135 13 -14.009389710463134 15 -19.59125440593273
		 16 -7.3733630055069135;
	setAttr -s 11 ".kix[0:10]"  0.54354402795058032 1 0.6232582562275808 
		0.41371105713165662 1 0.24335788024146751 1 0.6232582562275808 0.41371105713165662 
		1 0.28762443856496434;
	setAttr -s 11 ".kiy[0:10]"  0.83938065839001719 0 -0.78201607786806748 
		-0.91040823876270316 0 0.96993656603119138 0 -0.78201607786806748 -0.91040823876270316 
		0 0.95774327580003882;
	setAttr -s 11 ".kox[0:10]"  0.28762443856496434 1 0.62325833130760533 
		0.4137109895864593 1 0.28762448748869263 1 0.62325833130760533 0.4137109895864593 
		1 0.41072261684179612;
	setAttr -s 11 ".koy[0:10]"  0.95774327580003882 0 -0.78201601803010357 
		-0.91040826945683695 0 0.95774326110751984 0 -0.78201601803010357 -0.91040826945683695 
		0 0.91176034790652483;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Tail1_parent_swaitch";
	rename -uid "7A5255E5-4134-2654-F6A1-958EFA811778";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateY";
	rename -uid "5312DC9D-4B0D-498F-5313-BC8553E34B89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.9713946552654376 3 3.4202252900157113
		 5 5.0207588690737204 8 1.9713946552654376 9 0 11 -3.4202252900157113 13 -5.0207588690737204
		 16 -1.9713946552654376;
	setAttr -s 8 ".kix[0:7]"  0.72825860540421183 0.80683445779730922 
		0.98868531220107292 0.83567750282137698 0.72825860540421161 0.8356775028213772 0.98868531220107292 
		0.72825860540421183;
	setAttr -s 8 ".kiy[0:7]"  0.68530241766297062 0.59077758734647512 
		-0.1500045113917145 -0.54922045781109374 -0.68530241766297062 -0.54922045781109374 
		0.15000451139171447 0.68530241766297062;
	setAttr -s 8 ".kox[0:7]"  0.72825860540421183 0.80683445779730922 
		0.98868531220107292 0.83567750282137698 0.72825860540421161 0.8356775028213772 0.98868531220107292 
		0.72825860540421183;
	setAttr -s 8 ".koy[0:7]"  0.68530241766297062 0.59077758734647512 
		-0.1500045113917145 -0.54922045781109374 -0.68530241766297062 -0.54922045781109374 
		0.15000451139171447 0.68530241766297062;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateZ";
	rename -uid "23794994-4F14-5055-56E5-D9B8CE31B8D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateX";
	rename -uid "5D2D602A-4254-07B3-161A-7B865D83611B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -21.205009368745529 1 -32.984192741262547
		 3 -30.24918030870473 6 8.034585578570427 7 -2.8691315881414234 8 -21.205009368745529
		 9 -32.984192741262547 11 -30.24918030870473 14 8.034585578570427 15 -2.8691315881414234
		 16 -21.205009368745529;
	setAttr -s 11 ".kix[0:10]"  0.14244290427762585 0.38906441831273458 
		0.21614477438580268 0.26874979714884395 0.12953452927999268 0.14244290427762585 0.38906441831273447 
		0.21614477438580268 0.26874979714884406 0.11393042532590376 0.14244290427762585;
	setAttr -s 11 ".kiy[0:10]"  -0.98980302031311007 -0.92121055052738809 
		0.97636132476952942 0.96321002202658534 -0.99157491180657187 -0.98980302031311007 
		-0.92121055052738821 0.97636132476952942 0.96321002202658546 -0.99348873077909583 
		-0.98980302031311007;
	setAttr -s 11 ".kox[0:10]"  0.14244290427762585 0.38906441831273458 
		0.21614477438580268 0.26874979714884395 0.12953452927999268 0.14244290427762585 0.38906441831273447 
		0.21614477438580268 0.26874979714884406 0.11393042532590376 0.14244290427762585;
	setAttr -s 11 ".koy[0:10]"  -0.98980302031311007 -0.92121055052738809 
		0.97636132476952942 0.96321002202658534 -0.99157491180657187 -0.98980302031311007 
		-0.92121055052738821 0.97636132476952942 0.96321002202658546 -0.99348873077909583 
		-0.98980302031311007;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateY";
	rename -uid "7A4219F3-4665-220D-5C8B-7586DEDDE946";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.986868283661785 3 -0.55421833748453675
		 5 3.6966015014009139 7 5.6858213082139457 10 1.895925381216683 13 -4.8050381763699841
		 15 -6.7942579831830185 16 -5.986868283661785;
	setAttr -s 8 ".kix[0:7]"  0.03333333333333334 0.70215671870879326 
		0.77447421857033738 0.98268185823794363 0.73758255250124194 0.73959284772275147 0.97938232588306551 
		0.03333333333333334;
	setAttr -s 8 ".kiy[0:7]"  0.020322524252862836 0.71202243108774377 
		0.63260547323736094 -0.18530074336068367 -0.67525697200825174 -0.67305454429589218 
		-0.20201549383123307 0.020322524252862836;
	setAttr -s 8 ".kox[0:7]"  0.066666666666666652 0.70215671870879326 
		0.77447421857033738 0.98268185823794363 0.73758255250124194 0.73959284772275147 0.97938232588306551 
		0.066666666666666652;
	setAttr -s 8 ".koy[0:7]"  0.040645048505725673 0.71202243108774377 
		0.63260547323736094 -0.18530074336068367 -0.67525697200825174 -0.67305454429589218 
		-0.20201549383123307 0.040645048505725673;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateZ";
	rename -uid "F373EFCE-4E62-A91C-557B-5CA3A4716D87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateX";
	rename -uid "04CECBB2-47AA-E05D-2450-30924F79E7F5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.5628541282755823 1 -14.515277337937256
		 2 -18.357698630495129 4 -11.24273140565211 7 5.741184832686506 8 -2.5628541282755823
		 9 -14.515277337937256 10 -18.357698630495129 12 -11.24273140565211 15 5.741184832686506
		 16 -2.5628541282755823;
	setAttr -s 11 ".kix[0:10]"  0.15778682331393792 0.23505744371793616 
		0.86834096184027421 0.42472773114355311 1 0.18530220723636168 0.2350574437179361 
		0.86834096184027421 0.42472773114355311 1 0.22413993019420356;
	setAttr -s 11 ".kiy[0:10]"  -0.98747319882035089 -0.97198148035484155 
		0.49596771466528694 0.90532113329892494 0 -0.98268158219910307 -0.97198148035484155 
		0.49596771466528694 0.90532113329892494 0 -0.974556972009609;
	setAttr -s 11 ".kox[0:10]"  0.18530220723636168 0.23505744371793616 
		0.86834096184027409 0.42472773114355311 1 0.18530220723636168 0.2350574437179361 
		0.86834096184027421 0.42472773114355311 1 0.18530220723636168;
	setAttr -s 11 ".koy[0:10]"  -0.98268158219910295 -0.97198148035484155 
		0.49596771466528694 0.90532113329892494 0 -0.98268158219910307 -0.97198148035484155 
		0.49596771466528694 0.90532113329892494 0 -0.98268158219910295;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail3_rotateY";
	rename -uid "F2D73769-44E4-5D36-7A6C-BEABCD0F33E5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -6.2500105110448478 1 -6.7942583802874132
		 3 -4.5582154041373251 5 -0.11084403286142129 7 4.4420101015052174 9 6.5725703145645724
		 11 4.5582154041373251 13 -0.11084403286142129 15 -4.6636981672280555 16 -6.2500105110448478;
	setAttr -s 10 ".kix[0:9]"  0.033333333333333326 0.97737894359311828 
		0.75263007991727271 0.66358113958396581 0.64273034025747011 0.97737893809192466 0.7526300799172726 
		0.66358106612163481 0.75263007982396002 0.033333333333333326;
	setAttr -s 10 ".kiy[0:9]"  -0.022401750125102038 0.21149562789996396 
		0.65844359120863183 0.74810431838644365 0.76609249422802506 -0.21149565332247711 
		-0.65844359120863172 -0.74810438354876296 -0.6584435913152924 -0.022401750125102038;
	setAttr -s 10 ".kox[0:9]"  0.033333333333333326 0.97737893522551234 
		0.75263003703600384 0.66358106612163514 0.78291814635767487 0.977378938104427 0.75263003703600373 
		0.66358111482076176 0.75263012088309733 0.033333333333333326;
	setAttr -s 10 ".koy[0:9]"  -0.022401750125101996 0.21149566656894836 
		0.65844364022381119 0.74810438354876263 0.62212472712781841 -0.21149565326470066 
		-0.65844364022381108 -0.74810434035182205 -0.65844354438288355 -0.022401750125101996;
createNode animCurveTA -n "Rig_C_Tail3_rotateZ";
	rename -uid "0B06F193-4C11-25B6-E9D9-44973616C021";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_C_Tail3_rotateX";
	rename -uid "5F30D19A-42EB-45DC-61C0-F59AE49BBEAF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 13.176976787243609 1 7.0799632397710361
		 3 -12.380668732363494 4 -17.268217673245513 6 -6.6193477855191727 7 11.162720136151661
		 8 13.176976787243609 9 7.0799632397710361 11 -12.380668732363494 12 -17.268217673245513
		 14 -6.6193477855191727 15 11.162720136151661 16 13.176976787243609;
	setAttr -s 13 ".kix[0:12]"  0.68319198248539759 0.21875290535896977 
		0.22906184316886752 0.99998979689362433 0.1975544723781345 0.22005017448446948 0.68319198248539759 
		0.21875290535896977 0.22906184316886752 0.99998979689362433 0.19755447237813448 0.22005017448446948 
		0.68319198248539759;
	setAttr -s 13 ".kiy[0:12]"  -0.73023880687599185 -0.97578028592353205 
		-0.97341187171930532 0.0045173121043055034 0.98029191083237899 0.9754885548838359 
		-0.73023880687599185 -0.97578028592353205 -0.97341187171930532 0.0045173121043055034 
		0.98029191083237899 0.9754885548838359 -0.73023880687599185;
	setAttr -s 13 ".kox[0:12]"  0.68319198248539759 0.21875290535896977 
		0.22906184316886752 0.99998979689362433 0.1975544723781345 0.22005017448446948 0.68319198248539759 
		0.21875290535896977 0.22906184316886752 0.99998979689362433 0.19755447237813448 0.22005017448446948 
		0.68319198248539759;
	setAttr -s 13 ".koy[0:12]"  -0.73023880687599185 -0.97578028592353205 
		-0.97341187171930532 0.0045173121043055034 0.98029191083237899 0.9754885548838359 
		-0.73023880687599185 -0.97578028592353205 -0.97341187171930532 0.0045173121043055034 
		0.98029191083237899 0.9754885548838359 -0.73023880687599185;
createNode animCurveTA -n "Rig_C_Tail4_rotateY";
	rename -uid "E0896901-45C8-075D-1DEF-6FB8907F219F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.507839327324529 3 -6.7942583802874132
		 5 -4.8364304019020397 8 2.2160474910158006 11 6.5725703145645724 13 4.5564160120588895
		 16 -2.507839327324529;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 1 0.06666666666666668 
		0.602682152540021 1 0.066666666666666763 0.61345605041560192;
	setAttr -s 7 ".kiy[0:6]"  -0.042911460984726854 0 0.062335072981027417 
		0.79798134251981545 0 -0.063822899281917686 -0.78972886119762054;
	setAttr -s 7 ".kox[0:6]"  0.6134560504156058 1 0.10000000000000006 
		0.033333333333333381 1 0.099999999999999978 0.033333333333333326;
	setAttr -s 7 ".koy[0:6]"  -0.78972886119761743 0 0.093502609471541154 
		0.044135002126560463 0 -0.095734348922876439 -0.042911460984726868;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateZ";
	rename -uid "4C60DE20-4916-0F05-FCA5-9F8531D04DB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateX";
	rename -uid "98527866-488D-0A4F-B63B-0CB6B9A0D502";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.1392665774821169 1 8.4354527170112465
		 3 10.73778446014993 5 -9.6133890535921172 7 -12.585409801280754 8 -2.1392665774821169
		 9 8.4354527170112465 11 10.73778446014993 13 -9.6133890535921172 15 -12.585409801280754
		 16 -2.1392665774821169;
	setAttr -s 11 ".kix[0:10]"  0.033333333333333381 0.40652023323595748 
		0.32415647148384896 0.31127429583723021 0.43920181002739728 0.17878320664742556 0.40652023323595732 
		0.32415647148384907 0.31127429583723021 0.43920181002739711 0.033333333333333381;
	setAttr -s 11 ".kiy[0:10]"  0.22540116830837004 0.91364177880052244 
		-0.94600347884938596 -0.95032011067378586 0.89838842939379959 0.98388849216812357 
		0.91364177880052255 -0.94600347884938596 -0.95032011067378575 0.89838842939379959 
		0.22540116830837004;
	setAttr -s 11 ".kox[0:10]"  0.033333333333333381 0.40652023323595748 
		0.32415647148384896 0.31127429583723021 0.43920181002739728 0.17878320664742556 0.40652023323595732 
		0.32415647148384907 0.31127429583723021 0.43920181002739711 0.033333333333333381;
	setAttr -s 11 ".koy[0:10]"  0.22540116830837009 0.91364177880052244 
		-0.94600347884938596 -0.95032011067378586 0.89838842939379959 0.98388849216812357 
		0.91364177880052255 -0.94600347884938596 -0.95032011067378575 0.89838842939379959 
		0.22540116830837009;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateY";
	rename -uid "62707F13-40C2-7B1A-E2C6-818B99EBEACE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0154421636124091 2 -3.3122444195917624
		 5 -2.0185653608400553 10 3.3122444195917624 13 2.0185653608400553 16 -2.0154421636124091;
	setAttr -s 6 ".kix[0:5]"  0.10000000000000014 1 0.84521661363487788 
		1 0.84521661363487788 0.10000000000000014;
	setAttr -s 6 ".kiy[0:5]"  -0.060153367422828272 0 0.53442387300305894 
		0 -0.53442387300305882 -0.060153367422828272;
	setAttr -s 6 ".kox[0:5]"  0.06666666666666643 1 0.845216616091505 
		1 0.845216616091505 0.06666666666666643;
	setAttr -s 6 ".koy[0:5]"  -0.040102244948552176 0 0.53442386911778694 
		0 -0.53442386911778694 -0.040102244948552176;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateZ";
	rename -uid "245C0655-4626-6C9F-AEC7-E79F6AD07698";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateX";
	rename -uid "C6E1BF0B-4A52-1141-F4B6-F8AD65CF1C18";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.1757600466886995 8 8.1757600466886995
		 16 8.1757600466886995;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateY";
	rename -uid "FBA43C95-407B-E6CE-25B4-8E95D413B444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.9093754478836558 3 -13.24897767836705
		 6 -8.0742614433602213 11 13.24897767836705 14 8.0742614433602213 16 -2.9093754478836558;
	setAttr -s 6 ".kix[0:5]"  0.48469590712504518 1 0.36768943321251274 
		1 0.36768943321251285 0.32846870524996391;
	setAttr -s 6 ".kiy[0:5]"  -0.87468272968901672 0 0.92994864412173917 
		0 -0.92994864412173917 -0.94451485412957492;
	setAttr -s 6 ".kox[0:5]"  0.40872097989996686 1 0.36768943644843888 
		1 0.36768943644843949 0.32846870524996391;
	setAttr -s 6 ".koy[0:5]"  -0.91265938914230815 0 0.92994864284229672 
		0 -0.92994864284229639 -0.94451485412957492;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateZ";
	rename -uid "A00DA451-4CF9-2769-0E14-51B7807951C4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.22134257852619119 8 0.22134257852619119
		 16 -0.22134257852619119;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateX";
	rename -uid "843E02B5-4E12-405F-9D2C-5DB875CB60F8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.004925245011082 2 10.891838763588735
		 4 9.1180117264334282 6 8.7854191569668085 8 10.004925245011082 10 10.891838763588735
		 12 9.1180117264334282 14 8.7854191569668085 16 10.004925245011082;
	setAttr -s 9 ".kix[0:8]"  0.97408635095720153 0.99332814659667645 
		0.96402532794714124 0.99332814659667645 0.96402532794714113 0.99332814659667645 0.96402532794714124 
		0.99332814659667645 0.95262691953497713;
	setAttr -s 9 ".kiy[0:8]"  0.2261764374971087 -0.11532212788017657 
		-0.26581039685536567 0.11532212788017657 0.26581039685536573 -0.11532212788017653 
		-0.26581039685536567 0.11532212788017658 0.30414133585768993;
	setAttr -s 9 ".kox[0:8]"  0.97408635095720153 0.99332814659667645 
		0.96402532794714124 0.99332814659667645 0.96402532794714113 0.99332814659667645 0.96402532794714124 
		0.99332814659667645 0.95262691953497713;
	setAttr -s 9 ".koy[0:8]"  0.2261764374971087 -0.11532212788017657 
		-0.26581039685536567 0.11532212788017657 0.26581039685536573 -0.11532212788017653 
		-0.26581039685536567 0.11532212788017658 0.30414133585768993;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateY";
	rename -uid "7A6E2ECD-4AED-B4E1-EDE0-26ABAC60E7B1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.12267868698490729 8 -0.12267868698490729
		 16 0.12267868698490729;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateZ";
	rename -uid "AC2A3ACB-44C9-F6F2-D320-1EACBD103C44";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3224186118418133 8 1.3224186118418133
		 16 -1.3224186118418133;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateX";
	rename -uid "A741407F-44A5-612E-9D70-39A05235084F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -16.839093965870102 8 -16.839093965870102
		 16 -16.839093965870102;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateY";
	rename -uid "D1B497A1-4282-3DBE-5466-6C8FAF5828FE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.52880270445817679 8 -0.52880270445817679
		 16 0.52880270445817679;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Head_parent_switch";
	rename -uid "41CE7A82-47C5-1A15-32C3-1BA0483ED22A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateZ";
	rename -uid "0802F4C6-44F3-5619-2561-288D2C58A576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7968816384179487 8 2.7968816384179487
		 16 -2.7968816384179487;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateX";
	rename -uid "9D28E855-4947-220F-BCB9-208913039766";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.026770620215411 2 16.025163122156457
		 4 13.029985616333306 6 9.3568872758588224 7 14.035829773782071 8 15.026770620215411
		 10 16.025163122156457 12 13.029985616333306 14 9.3568872758588224 15 10.401501652889735
		 16 14.733640723110224;
	setAttr -s 11 ".kix[0:10]"  0.7136724557512335 0.96749688587411975 
		0.75336942024582165 0.90891891417137272 0.5587237239206142 0.7136724557512335 0.96749688587411975 
		0.75336942024582165 0.90891891417137272 0.5587237239206142 0.7136724557512335;
	setAttr -s 11 ".kiy[0:10]"  0.70047956851146176 -0.25288292908751342 
		-0.65759753393582199 -0.41697290974538492 0.82935384506752086 0.70047956851146176 
		-0.25288292908751342 -0.65759753393582199 -0.41697290974538492 0.82935384506752086 
		0.70047956851146176;
	setAttr -s 11 ".kox[0:10]"  0.7136724557512335 0.96749688587411975 
		0.75336942024582165 0.90891891417137272 0.5587237239206142 0.7136724557512335 0.96749688587411975 
		0.75336942024582165 0.90891891417137272 0.5587237239206142 0.7136724557512335;
	setAttr -s 11 ".koy[0:10]"  0.70047956851146176 -0.25288292908751342 
		-0.65759753393582199 -0.41697290974538492 0.82935384506752086 0.70047956851146176 
		-0.25288292908751342 -0.65759753393582199 -0.41697290974538492 0.82935384506752086 
		0.70047956851146176;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_sword";
	rename -uid "C8312F38-4D46-3AF9-7D01-57AFFC1D9EFA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_R_Leg_FKIK";
	rename -uid "E203EAAE-4362-EDA2-BFB7-08970E03A7A1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_R_Arm_FKIK";
	rename -uid "3E5A69AD-4448-2D05-8774-97891AD04E46";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_L_Leg_FKIK";
	rename -uid "6058D2E9-430F-64EB-BD71-28878CE929C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_L_Arm_FKIK";
	rename -uid "A18AA32C-4F45-D4BF-4C62-3486E4DB52A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_tail";
	rename -uid "136237B9-488F-3DBB-60CB-EDAD6F9157E5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_eye_translateY";
	rename -uid "BEEA6C17-4009-C2FE-C07E-FFAD60D925F0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.18848141463308621 1 -0.15047673736186495
		 2 0.041012640517427146 3 0.15968543892829506 5 0.18139826562464939 6 0.064772745455476011
		 7 -0.14152580652246968 8 -0.18848141463308621 9 -0.15047673736186495 10 0.041012640517427146
		 11 0.15968543892829506 13 0.18139826562464939 14 0.064772745455476011 15 -0.14152580652246968
		 16 -0.18848141463308621;
	setAttr -s 15 ".kix[0:14]"  0.99110665416028465 0.27896208896322278 
		0.21014187144135918 0.69971284858939309 0.72531556504039429 0.20218327613323639 0.25456770475814372 
		0.99110665416028465 0.27896208896322289 0.21014187144135921 0.58017951137822443 0.72531556504039441 
		0.20218327613323633 0.25456770475814372 0.99110665416028465;
	setAttr -s 15 ".kiy[0:14]"  -0.13306990673779737 0.96030211544142452 
		0.97767090263908496 0.71442419438238314 -0.68841653895743493 -0.97934770273485161 
		-0.96705495381295192 -0.13306990673779737 0.96030211544142452 0.97767090263908518 
		0.81448863379234759 -0.68841653895743482 -0.97934770273485183 -0.96705495381295192 
		-0.13306990673779737;
	setAttr -s 15 ".kox[0:14]"  0.99110665416028465 0.27896208896322278 
		0.21014187144135918 0.58017951137822432 0.72531556504039429 0.20218327613323639 0.25456770475814372 
		0.99110665416028465 0.27896208896322289 0.21014187144135921 0.58017951137822443 0.72531556504039441 
		0.20218327613323633 0.25456770475814372 0.99110665416028465;
	setAttr -s 15 ".koy[0:14]"  -0.13306990673779737 0.96030211544142452 
		0.97767090263908496 0.81448863379234759 -0.68841653895743493 -0.97934770273485161 
		-0.96705495381295192 -0.13306990673779737 0.96030211544142452 0.97767090263908518 
		0.81448863379234759 -0.68841653895743482 -0.97934770273485183 -0.96705495381295192 
		-0.13306990673779737;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_eye_translateX";
	rename -uid "4E83625A-492B-BAD9-8F2F-22AB20D40B89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.021181425335073875 16 -0.021181425335073875;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_eye_translateY";
	rename -uid "677FDA8E-4064-46B3-FF07-46AB32448B5F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_eye_translateX";
	rename -uid "B77F9DB3-49DD-3D7A-57EA-F78CC20520DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_eye_translateY";
	rename -uid "ADD89AB4-456B-6319-260A-259954B773B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_eye_translateX";
	rename -uid "D3B58CA8-4866-8EF2-E331-0484C1CA0A53";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateY";
	rename -uid "7F4A5F3F-47D3-9C68-92CB-FDB5E0DD80DD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.27406059874482586 2 -5.7428105987448248
		 10 29.257189401255175 16 -0.27406059874482586;
	setAttr -s 4 ".kix[0:3]"  0.19999999999999996 1 1 0.19999999999999996;
	setAttr -s 4 ".kiy[0:3]"  -0.51541754472957546 0 0 -0.51541754472957546;
	setAttr -s 4 ".kox[0:3]"  0.06666666666666643 1 1 0.06666666666666643;
	setAttr -s 4 ".koy[0:3]"  -0.17180584824319178 0 0 -0.17180584824319178;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_L_Clavicle_parent_switch";
	rename -uid "D568ECFF-4C23-BBB3-E533-4F89FD992613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 10 0 16 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  0 1 0 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateZ";
	rename -uid "8CE15F8D-4279-D1AF-BBA1-439BF2E82412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.7099778727941075 2 8.7627529013944834
		 10 2.0249927183520846 16 7.7099778727941075;
	setAttr -s 4 ".kix[0:3]"  0.19999999999999996 1 1 0.19999999999999996;
	setAttr -s 4 ".kiy[0:3]"  0.099221708872011594 0 0 0.099221708872011594;
	setAttr -s 4 ".kox[0:3]"  0.06666666666666643 1 1 0.06666666666666643;
	setAttr -s 4 ".koy[0:3]"  0.033073902957337226 0 0 0.033073902957337226;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateX";
	rename -uid "9FEFC93E-4BA9-3CF8-3D5F-AA815E4306B1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -21.09375 2 -25 10 0 16 -21.09375;
	setAttr -s 4 ".kix[0:3]"  0.19999999999999996 1 1 0.19999999999999996;
	setAttr -s 4 ".kiy[0:3]"  -0.3681553890925538 0 0 -0.3681553890925538;
	setAttr -s 4 ".kox[0:3]"  0.06666666666666643 1 1 0.06666666666666643;
	setAttr -s 4 ".koy[0:3]"  -0.12271846303085132 0 0 -0.12271846303085132;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateY";
	rename -uid "0DC23B8C-4B23-20A1-941F-E1BDEDFEDD10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.4499377876347141 4 -42.525809969056994
		 12 27.625934393787535 16 -7.4499377876347141;
	setAttr -s 4 ".kix[0:3]"  0.13333333333333336 0.54698329704757753 
		1 0.13333333333333336;
	setAttr -s 4 ".kiy[0:3]"  -0.91828418636175657 0.83714351980467572 
		0 -0.91828418636175657;
	setAttr -s 4 ".kox[0:3]"  0.13333333333333319 0.54698329704757753 
		1 0.13333333333333319;
	setAttr -s 4 ".koy[0:3]"  -0.91828418636175635 0.83714351980467572 
		0 -0.91828418636175635;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateZ";
	rename -uid "34B66E11-4410-AE79-D12C-8F80829376C9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.29788157464146864 2 0.97421679242001524
		 10 -7.1672127567734769 16 -0.29788157464146864;
	setAttr -s 4 ".kix[0:3]"  0.19999999999999996 0.94098413568428996 
		1 0.19999999999999996;
	setAttr -s 4 ".kiy[0:3]"  0.11989244653811781 -0.33845067054223715 
		0 0.11989244653811781;
	setAttr -s 4 ".kox[0:3]"  0.06666666666666643 0.94098413568428996 
		1 0.06666666666666643;
	setAttr -s 4 ".koy[0:3]"  0.039964148846039271 -0.33845067054223715 
		0 0.039964148846039271;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateX";
	rename -uid "E49917D6-44D9-343C-2594-689A8C92E348";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -14.416065436628259 2 -38.51587344100377
		 5 -14.945603854462101 10 24.904825001042266 14 17.611329873002994 16 -14.416065436628259;
	setAttr -s 6 ".kix[0:5]"  0.066666666666666763 0.99846601190811324 
		0.23421218457866644 0.46688412176080313 0.23421218457866644 0.066666666666666763;
	setAttr -s 6 ".kiy[0:5]"  -0.66552212321625936 -0.055368068995654225 
		0.97218550318079133 0.88431850418706237 -0.97218550318079133 -0.66552212321625936;
	setAttr -s 6 ".kox[0:5]"  0.066666666666666763 0.99846601190811324 
		0.23421218457866644 0.46688412176080313 0.23421218457866641 0.066666666666666763;
	setAttr -s 6 ".koy[0:5]"  -0.66552212321625925 -0.055368068995654225 
		0.97218550318079133 0.88431850418706237 -0.97218550318079144 -0.66552212321625925;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateY";
	rename -uid "800A8843-47CC-E659-578E-249438056100";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -71.099122566435582 3 -94.902124671134743
		 6 -92.768602007834247 11 -61.483734897275021 14 -57.557047835537873 16 -71.099122566435582;
	setAttr -s 6 ".kix[0:5]"  0.23402394065238977 0.46747593827161699 
		0.41580244686836804 0.39805779295739591 0.70466407164942246 0.27147063878274508;
	setAttr -s 6 ".kiy[0:5]"  -0.97223083431946689 -0.88400579587300843 
		0.90945496050012176 0.91736034003323208 -0.70954108135220595 -0.96244672178717949;
	setAttr -s 6 ".kox[0:5]"  0.23402394065238977 0.46747593827161699 
		0.41580244686836804 0.39805779295739591 0.70466407164942246 0.27147063878274508;
	setAttr -s 6 ".koy[0:5]"  -0.97223083431946689 -0.88400579587300843 
		0.90945496050012176 0.91736034003323208 -0.70954108135220595 -0.96244672178717949;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateZ";
	rename -uid "F1B77AFF-4B10-9F5D-76A5-B8A8A85861DD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateX";
	rename -uid "7584B3A5-4F43-5BBF-3B4B-D2B5FE1409B1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateY";
	rename -uid "148ACDA9-4454-CAA7-F695-74AD83967F76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.77388410309028977 3 -15.573287163926189
		 6 -19.511295929679953 8 -9.8597703620179171 11 8.2442083433208619 14 -8.4880957197216773
		 16 0.77388410309028977;
	setAttr -s 7 ".kix[0:6]"  0.40132891842193774 0.36837586406650619 
		0.98802943780822639 0.42785343244353513 0.88148636585431717 0.99993612329202441 0.40132891842193774;
	setAttr -s 7 ".kiy[0:6]"  0.91593400375697254 -0.92967694538116574 
		0.154265453113651 0.90384812902737455 0.47220947344684749 -0.011302625169293997 0.91593400375697254;
	setAttr -s 7 ".kox[0:6]"  0.40132891842193774 0.36837586406650619 
		0.98802943780822639 0.42785343244353513 0.88148636585431717 0.99993612329202441 0.40132891842193774;
	setAttr -s 7 ".koy[0:6]"  0.91593400375697254 -0.92967694538116574 
		0.154265453113651 0.90384812902737455 0.47220947344684749 -0.011302625169293997 0.91593400375697254;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateZ";
	rename -uid "6DD6FBA9-43D4-06A5-8A71-CBAA584B4F41";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.8383900368516404 3 25.29922755651673
		 6 14.966126433605014 8 -3.9687150540648077 11 -2.0100557141701185 14 5.6587020927901213
		 16 8.8383900368516404;
	setAttr -s 7 ".kix[0:6]"  0.6906225261225134 0.54808995028377194 
		0.22468293510458517 0.34490320284851445 0.47981536022792737 0.49835218264299352 0.6906225261225134;
	setAttr -s 7 ".kiy[0:6]"  0.72321540803010986 0.8364193962348867 
		-0.97443192613583263 -0.93863825868373618 0.87736948892091315 0.86697468362978414 
		0.72321540803010986;
	setAttr -s 7 ".kox[0:6]"  0.6906225261225134 0.54808995028377194 
		0.22468293510458517 0.34490320284851445 0.47981536022792737 0.49835218264299352 0.6906225261225134;
	setAttr -s 7 ".koy[0:6]"  0.72321540803010986 0.8364193962348867 
		-0.97443192613583263 -0.93863825868373618 0.87736948892091315 0.86697468362978414 
		0.72321540803010986;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateX";
	rename -uid "9DC47CD1-483E-2C57-9A46-0989F1EA861E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.9643164525940549 5 8.0904622923904128
		 8 0.36051831535535461 11 -29.980232661972529 14 -7.4844948918792804 16 4.9643164525940549;
	setAttr -s 6 ".kix[0:5]"  0.96820121901813339 0.95747828889657716 
		0.28822341911514399 0.81982825975571205 0.31862553272416105 0.96820121901813339;
	setAttr -s 6 ".kiy[0:5]"  -0.25017273930586575 -0.28850533147878343 
		-0.9575631888672288 0.57260948691575209 0.94788067281501454 -0.25017273930586575;
	setAttr -s 6 ".kox[0:5]"  0.96820121901813339 0.95747828889657716 
		0.28822341911514399 0.81982825975571205 0.31862553272416105 0.96820121901813339;
	setAttr -s 6 ".koy[0:5]"  -0.25017273930586575 -0.28850533147878343 
		-0.9575631888672288 0.57260948691575209 0.94788067281501454 -0.25017273930586575;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateY";
	rename -uid "436DAEF7-47E3-2A68-6C29-31A1607D54BC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.788439401255175 2 29.257189401255175
		 10 -5.7428105987448248 16 23.788439401255175;
	setAttr -s 4 ".kix[0:3]"  0.57261626476809802 1 0.97971775641460535 
		0.36175460568906925;
	setAttr -s 4 ".kiy[0:3]"  0.81982352571942674 0 -0.2003824287853905 
		0.93227335329437888;
	setAttr -s 4 ".kox[0:3]"  0.40007967113934623 1 0.97971775641460535 
		0.36175460568906925;
	setAttr -s 4 ".koy[0:3]"  0.91648036353270146 0 -0.2003824287853905 
		0.93227335329437888;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Clavicle_parent_switch";
	rename -uid "15EDD6FD-465E-51D1-3C72-C88223CC393E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateZ";
	rename -uid "C56A915B-44E7-9651-5F63-7DB15304C4D2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.0777678583498815 2 2.0249928736717147
		 10 8.762752775611979 16 3.0777678583498815;
	setAttr -s 4 ".kix[0:3]"  0.96405344403979143 1 0.99922575628434274 
		0.89581726383268911;
	setAttr -s 4 ".kiy[0:3]"  -0.26570840603002527 0 0.039343207520275869 
		-0.44442258023115144;
	setAttr -s 4 ".kox[0:3]"  0.91498236818813561 1 0.99922575628434274 
		0.89581726383268911;
	setAttr -s 4 ".koy[0:3]"  -0.40349382387445704 0 0.039343207520275869 
		-0.44442258023115144;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateX";
	rename -uid "FDD88EF2-4BC2-20A0-7345-97ACC78C50B6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.9062499999999987 2 0 10 -25 16 -3.9062499999999987;
	setAttr -s 4 ".kix[0:3]"  0.6991432884952572 1 0.98949620128047222 
		0.47735770802760313;
	setAttr -s 4 ".kiy[0:3]"  0.71498158168727499 0 -0.14455887261429212 
		0.87870906367615975;
	setAttr -s 4 ".kox[0:3]"  0.52147726381462001 1 0.98949620128047222 
		0.47735770802760313;
	setAttr -s 4 ".koy[0:3]"  0.8532651776115191 0 -0.14455887261429212 
		0.87870906367615975;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateY";
	rename -uid "07A3B63B-4D06-D6A1-46FA-61821597D25B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.4499377876347435 4 27.625934393787535
		 12 -42.525809969056994 16 -7.4499377876347435;
	setAttr -s 4 ".kix[0:3]"  0.13333333333333336 1 1 0.13333333333333336;
	setAttr -s 4 ".kiy[0:3]"  0.91828418636175657 0 0 0.91828418636175657;
	setAttr -s 4 ".kox[0:3]"  0.13333333333333319 1 1 0.13333333333333319;
	setAttr -s 4 ".koy[0:3]"  0.91828418636175635 0 0 0.91828418636175635;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateZ";
	rename -uid "9A7ED2F5-4C17-3AB0-FCD8-AB82BD2D0A3B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.8951143897119929 2 -7.1672127567734769
		 10 0.97421679242001524 16 -5.8951143897119929;
	setAttr -s 4 ".kix[0:3]"  0.19999999999999996 1 1 0.19999999999999996;
	setAttr -s 4 ".kiy[0:3]"  -0.11989244653811781 0 0 -0.11989244653811781;
	setAttr -s 4 ".kox[0:3]"  0.06666666666666643 1 1 0.06666666666666643;
	setAttr -s 4 ".koy[0:3]"  -0.039964148846039257 0 0 -0.039964148846039257;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateX";
	rename -uid "230218E1-4B3E-E7D1-1C57-3F8FFAE9A841";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.38793753829785 2 24.904825001042266
		 6 17.611329873002994 10 -38.51587344100377 13 -14.945603854462101 16 12.38793753829785;
	setAttr -s 6 ".kix[0:5]"  0.10000000000000014 0.46688412176080352 
		0.23421218457866644 1 0.21744668871945613 0.10000000000000014;
	setAttr -s 6 ".kiy[0:5]"  0.43456004977105611 0.88431850418706215 
		-0.97218550318079133 0 0.97607219895095043 0.43456004977105611;
	setAttr -s 6 ".kox[0:5]"  0.06666666666666643 0.46688412176080296 
		0.23421218457866644 1 0.21744668871945627 0.06666666666666643;
	setAttr -s 6 ".koy[0:5]"  0.28970669984737074 0.88431850418706237 
		-0.97218550318079133 0 0.97607219895095054 0.28970669984737074;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateY";
	rename -uid "6095990F-4945-6708-0A0E-A8AFD729B238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -80.861366955607807 3 -61.483734897275021
		 6 -57.557047835537873 8 -71.099122566435582 11 -94.902124671134743 14 -92.768602007834247
		 16 -80.861366955607807;
	setAttr -s 7 ".kix[0:6]"  1 0.39805779295739591 0.70466407164942246 
		0.27147063878274508 0.46747593827161699 0.41580244686836804 1;
	setAttr -s 7 ".kiy[0:6]"  0 0.91736034003323208 -0.70954108135220595 
		-0.96244672178717949 -0.88400579587300843 0.90945496050012176 0;
	setAttr -s 7 ".kox[0:6]"  0.29193979493254107 0.39805779295739591 
		0.70466407164942246 0.27147063878274508 0.46747593827161699 0.41580244686836804 1;
	setAttr -s 7 ".koy[0:6]"  0.9564366974006937 0.91736034003323208 
		-0.70954108135220595 -0.96244672178717949 -0.88400579587300843 0.90945496050012176 
		0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateZ";
	rename -uid "4FA1C3ED-49A6-799C-8ACF-569AE0CD8C96";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateX";
	rename -uid "3900F599-43DB-B16D-AEA7-C7B8979D9252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateY";
	rename -uid "F9D0E1FC-4BE9-97F0-A909-609CBE7016FA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.8597703620179171 3 8.2442083433208619
		 6 -8.4880957197216773 8 0.77388410309028977 11 -15.573287163926189 14 -19.511295929679953
		 16 -9.8597703620179171;
	setAttr -s 7 ".kix[0:6]"  0.42785343244353502 0.88148636585431717 
		0.9999361232920243 1 0.36837586406650635 0.98802943780822639 0.42785343244353502;
	setAttr -s 7 ".kiy[0:6]"  0.90384812902737455 0.47220947344684744 
		-0.011302625169293996 0 -0.92967694538116563 0.15426545311365097 0.90384812902737455;
	setAttr -s 7 ".kox[0:6]"  0.42785343244353502 0.88148636585431717 
		0.9999361232920243 1 0.36837586406650635 0.98802943780822639 0.42785343244353502;
	setAttr -s 7 ".koy[0:6]"  0.90384812902737455 0.47220947344684744 
		-0.011302625169293996 0 -0.92967694538116563 0.15426545311365097 0.90384812902737455;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateZ";
	rename -uid "1D6B49BE-4673-586A-FAA4-4CB94EFE9089";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.9687150540648077 3 -2.0100557141701185
		 6 5.6587020927901213 8 8.8383900368516404 11 25.29922755651673 14 14.966126433605014
		 16 -3.9687150540648077;
	setAttr -s 7 ".kix[0:6]"  0.34490320284851445 0.47981536022792753 
		0.49835218264299364 1 0.54808995028377183 0.22468293510458501 0.34490320284851445;
	setAttr -s 7 ".kiy[0:6]"  -0.93863825868373629 0.87736948892091304 
		0.86697468362978414 0 0.83641939623488681 -0.97443192613583274 -0.93863825868373629;
	setAttr -s 7 ".kox[0:6]"  0.34490320284851445 0.47981536022792753 
		0.49835218264299364 1 0.54808995028377183 0.22468293510458501 0.34490320284851445;
	setAttr -s 7 ".koy[0:6]"  -0.93863825868373629 0.87736948892091304 
		0.86697468362978414 0 0.83641939623488681 -0.97443192613583274 -0.93863825868373629;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateX";
	rename -uid "63DF806E-4EA0-887F-3D02-52858D75C9C8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.36051831535535461 3 -29.980232661972529
		 6 -7.4844948918792804 8 4.9643164525940549 13 8.0904622923904128 16 0.36051831535535461;
	setAttr -s 6 ".kix[0:5]"  0.18556134461564622 0.81982825975571205 
		0.318625532724161 1 0.95747828889657716 0.59547538757915985;
	setAttr -s 6 ".kiy[0:5]"  -0.98263268182186647 0.57260948691575198 
		0.94788067281501442 0 -0.28850533147878343 -0.80337355121229226;
	setAttr -s 6 ".kox[0:5]"  0.28822341911514393 0.81982825975571205 
		0.318625532724161 1 0.95747828889657716 0.59547538757915985;
	setAttr -s 6 ".koy[0:5]"  -0.9575631888672288 0.57260948691575198 
		0.94788067281501442 0 -0.28850533147878343 -0.80337355121229226;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_L_Leg1_IK_parent_switch";
	rename -uid "C9B599E3-4016-F494-2600-A7AD9AB2A6F1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateZ";
	rename -uid "A9630D88-4E86-D525-2B80-3FB94B4CE2FD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -10.435645445158102 3 -16.363649704407802
		 8 -9.6636964073206286 11 -1.998233896068647 12 -1.1439496093516748 13 -4.618093128570294
		 14 0 16 0;
	setAttr -s 9 ".kix[0:8]"  1 0.36055198078501427 1 0.73701648531972141 
		0.66759557238369038 0.82466605296206197 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.93273912170124107 0 0.67587476677781455 
		0.7445241109149473 -0.56561992635688996 0 0 0;
	setAttr -s 9 ".kox[0:8]"  0.99999999999148304 0.36055193965195148 
		1 0.5880143739720155 0.66759557238369027 0.82466605296206197 1 1 0.99999999999148304;
	setAttr -s 9 ".koy[0:8]"  -4.1272206052811575e-06 -0.93273913760129934 
		0 0.80885047814926747 0.7445241109149473 -0.56561992635688996 0 0 -4.1272206052811575e-06;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateX";
	rename -uid "1AF6D95F-4015-BE8F-10E7-49B54FBF943E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 50.622306798509314 3 99.306896398231416
		 5 110.63929055388034 8 109.89090965415592 9 91.996498959093884 11 16.631156044926573
		 12 -22.576892679967795 13 -22.576892679967795 14 0 15 0 16 0;
	setAttr -s 12 ".kix[0:11]"  1 0.057599880966762169 0.12626911447723552 
		0.66988216408777346 0.63569304631365364 0.061321150500103373 0.04299056994086526 
		0.096962748384049571 0.16681642948473024 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0.99833974863901664 0.99199602354502148 
		0.74246743109518387 -0.77194193490732643 -0.99811808745325492 -0.99907547807768737 
		-0.99528801129412359 0.98598797094790469 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0.057599880966762169 0.12626911447723552 
		0.66988216408777346 0.48124495562528963 0.061321150500103373 0.042990578311525161 
		0.096962748384049571 0.16681642948473024 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0.99833974863901664 0.99199602354502148 
		0.74246743109518387 -0.87658615816428054 -0.99811808745325492 -0.99907547771749483 
		-0.99528801129412359 0.98598797094790469 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateY";
	rename -uid "D0D123D9-459C-C4E3-837C-C9A82B5E4ACE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5 1 2.5 8 1.9993578050651375 11 3.1289252000649803
		 13 3.8956778307944604 14 2.5 16 2.5;
	setAttr -s 7 ".kix[0:6]"  1 1 1 0.9815679261446284 0.99194200183471226 
		1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0.19111359544557102 0.12669279772798378 
		0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.98156793320664038 0.99194199974233943 
		1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0.19111355917475939 0.1266928141102277 
		0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateZ";
	rename -uid "F69F5DE8-48E2-9581-10D0-06804983F7DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -44.340849167708129 1 -55.83061073036302
		 3 -54.296514466915802 5 -39.936433989454599 8 -9.8550560009826924 11 28.052001730299484
		 12 43.963197058084383 13 34.262226919342126 16 -44.340849167708129;
	setAttr -s 9 ".ktl[4:8]" no yes yes no yes;
	setAttr -s 9 ".kix[0:8]"  1 0.007736124129968781 0.014484026630152129 
		0.0042589549876911768 0.005215064978123499 0.0026474692573478522 0.010734365283087724 
		0.0013582061548428302 0.0012722138121264049;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99997007574399233 0.99989510098438683 
		0.99999093061007949 0.99998640145617679 0.99999649544712466 0.999942385041243 -0.9999990776375951 
		-0.99999919073568055;
	setAttr -s 9 ".kox[0:8]"  0.0029011213919609979 0.0077361226954940354 
		0.014484026630152129 0.004258954704418943 0.0027813950920418961 0.0026474686121671144 
		0.010734365283087724 0.0012722138121264051 1;
	setAttr -s 9 ".koy[0:8]"  -0.99999579173847986 -0.99997007575508989 
		0.99989510098438683 0.99999093061128586 0.99999613191318992 0.99999649544883296 0.999942385041243 
		-0.99999919073568067 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateY";
	rename -uid "15B376E6-4004-3538-B7F8-4F9A9013A060";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 1 24.998035209097811 3 38.401023954078134
		 4 35.907901359267584 6 25.886211161359704 7 23.035131137137487 8 27.851592498133506
		 9 36.680266536402897 11 26.149450795662244 12 15.075298812592887 13 1.3960828558155276
		 14 0 15 0 16 0;
	setAttr -s 14 ".kix[0:13]"  1 0.0023521711798411551 1 0.0079902759537671814 
		0.0069050220365110904 0.0092272212345390122 0.0076017661084498778 1 0.0046285155393337241 
		0.0026932264347197953 0.0060927776547229587 1 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0.99999723364154403 0 -0.99996807723555992 
		-0.99997616005116607 0.99995742828796919 0.99997110615858908 0 -0.99998928836458156 
		-0.99999637325910906 -0.99998143885796698 0 0 0;
	setAttr -s 14 ".kox[0:13]"  0.99999985599709384 0.0023521708714021551 
		1 0.0079902759537671814 0.0069050211291226647 0.0092272230432257872 0.0050679255871770084 
		1 0.0046285155393337241 0.0026932264347197953 0.0060927752773338589 1 1 0.99999985599709384;
	setAttr -s 14 ".koy[0:13]"  0.00053666171054026943 0.99999723364226956 
		0 -0.99996807723555992 -0.99997616005743173 0.9999574282712792 0.99998715798266269 
		0 -0.99998928836458156 -0.99999637325910906 -0.99998143887245217 0 0 0.00053666171054026943;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateX";
	rename -uid "2AB28A50-41F3-1D5C-C062-0FA74969029A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.1125449558599261 1 -5.112544955859744
		 3 -4.5577741050247091 8 1.78085599449299 11 -0.38060131145194021 14 -5.112544955859744
		 16 -5.1125449558599261;
	setAttr -s 7 ".kix[0:6]"  1 1 0.040024481295223936 1 0.023297590920014963 
		1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0.99919869940720429 0 -0.99972857429270456 
		0 0;
	setAttr -s 7 ".kox[0:6]"  0.99999999925997185 1 0.040024481295223929 
		1 0.023297592453353843 1 0.99999999925997185;
	setAttr -s 7 ".koy[0:6]"  -3.8471500647807667e-05 0 0.99919869940720407 
		0 -0.99972857425697181 0 -3.8471500647807667e-05;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateY";
	rename -uid "D34B6B34-418C-8EAE-F8A5-F698AA67AE9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateZ";
	rename -uid "D33BAF76-4515-12E0-BD20-5FB3DF272C9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateX";
	rename -uid "1192C77E-48AD-C48E-C9CA-A4882301A440";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateY";
	rename -uid "9262DBA9-4A7C-34FE-7E29-54B2C2B1DD09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateZ";
	rename -uid "FF85374E-4172-D7D4-82E0-EFB255A1B69D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateX";
	rename -uid "C305CE9B-4933-6DB1-077B-ECAE3C797378";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateY";
	rename -uid "9BB0F18D-41B9-D593-D8C4-64AFBAAAA00C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateZ";
	rename -uid "5DA41FC8-432D-D44C-1A5F-44BBD15F1A8C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateX";
	rename -uid "7C28CCF0-4426-D431-48D4-73AB712861C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateY";
	rename -uid "78ACC722-418B-9E4C-3A56-10BCAD16D4BB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 14 0 15 0 16 0;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateZ";
	rename -uid "49085CDD-45CF-7341-5996-0FB5E55652B7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 14 0 15 0 16 0;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateX";
	rename -uid "61064A22-4E9B-4480-1145-DA9E8E67AA78";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 42.882983743493845 1 45.809807591583876
		 3 12.134921077863499 8 0 14 0 15 5.4734177922892044 16 42.882983743493845;
	setAttr -s 7 ".kix[0:6]"  0.54648079093323032 1 0.22936108478280967 
		1 1 0.1155323440047344 0.094274832918039703;
	setAttr -s 7 ".kiy[0:6]"  0.83747163840991712 0 -0.97334140607869579 
		0 0 0.99330371865244294 0.99554620981563469;
	setAttr -s 7 ".kox[0:6]"  0.54648079093323032 1 0.22936109902979457 
		1 1 0.1155323440047344 0.05098629763788344;
	setAttr -s 7 ".koy[0:6]"  0.83747163840991712 0 -0.97334140272149361 
		0 0 0.99330371865244294 0.9986993528851319;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateY";
	rename -uid "DB3FA14B-4645-9BEF-6E95-9B8A207FEA3A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 14 0 16 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateZ";
	rename -uid "F8E9219B-482C-5219-7C74-9B859B352C22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 14 0 16 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateX";
	rename -uid "B5EBF7AF-42B1-BCEE-0C59-1A8D01B187F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 36.832008303489751 3 23.695419973442664
		 5 15.062321734024264 8 15.062321734024264 11 10.063251665546025 12 2.672529035341237
		 13 -12.840704982928763 14 0 16 0;
	setAttr -s 10 ".kix[0:9]"  1 0.067977985263393007 0.3311244049394782 
		1 1 0.52484216889042123 0.16449923774916342 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99768682136205933 -0.94358710697713355 
		0 0 -0.85119956400035746 -0.98637721018885272 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0.067977985263393007 0.3311244049394782 
		1 1 0.52484216889042123 0.16449923774916342 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0.99768682136205933 -0.94358710697713344 
		0 0 -0.85119956400035746 -0.98637721018885272 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateZ";
	rename -uid "0B7985BA-4618-C926-D0A6-2588D0A3E0BE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -31.487763270324969 8 31.030371766271159
		 11 43.656779273718833 16 0;
	setAttr -s 5 ".kix[0:4]"  0.0046925019526231366 0.008593413363708299 
		0.003732224387098033 0.008593413363708299 0.0046925019526231366;
	setAttr -s 5 ".kiy[0:4]"  -0.99998899015210385 0.9999630759416871 
		0.99999303522630822 -0.9999630759416871 -0.99998899015210385;
	setAttr -s 5 ".kox[0:4]"  0.0046925019526231366 0.008593413363708299 
		0.0024881591364357466 0.008593413363708299 0.0046925019526231366;
	setAttr -s 5 ".koy[0:4]"  -0.99998899015210385 0.9999630759416871 
		0.99999690452726497 -0.9999630759416871 -0.99998899015210385;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateY";
	rename -uid "5C7839A8-4B11-736A-A5BD-52AAB2EE6893";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.754813991221962 3 -31.681407843665255
		 8 -12.967848790019652 11 31.11957681372828 16 -12.754813991221962;
	setAttr -s 5 ".kix[0:4]"  0.0042461795029323859 0.78129528239937218 
		0.0030294144868786167 0.78129528239937218 0.0042461795029323859;
	setAttr -s 5 ".kiy[0:4]"  -0.99999098493917882 -0.62416158300594349 
		0.9999954113134053 0.62416158300594349 -0.99999098493917882;
	setAttr -s 5 ".kox[0:4]"  0.0042461795029323859 0.78129528239937218 
		0.0034732212219698508 0.78129528239937218 0.0042461795029323859;
	setAttr -s 5 ".koy[0:4]"  -0.99999098493917882 -0.62416158300594349 
		0.99999396834898124 0.62416158300594349 -0.99999098493917882;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateX";
	rename -uid "074CADBE-42E1-38BB-D8DE-3A91917BF57B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93785396994278614 8 3.7514158797711779
		 16 -0.93785396994278614;
	setAttr -s 3 ".kix[0:2]"  1 0.084992472204338324 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.99638159340113996 0;
	setAttr -s 3 ".kox[0:2]"  1 0.056775686262311213 1;
	setAttr -s 3 ".koy[0:2]"  0 0.99838695977533864 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Leg1_IK_parent_switch";
	rename -uid "FEFC4E68-4F78-7BD3-1107-8FB857E51334";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateZ";
	rename -uid "A12F4A90-4D82-4CC7-AE28-82A6FC4D4873";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.6636964073206286 3 -1.9982335422279898
		 4 -1.1439496093516748 5 -4.6180938672215683 6 0 8 0 9 -10.435645445158102 11 -16.363649704407802
		 16 -9.6636964073206286;
	setAttr -s 9 ".kix[0:8]"  0.7370164853197213 0.66759557238369027 
		0.82466594294303353 1 1 1.4172335638384936e-08 0.36055203895297039 1 0.794791072979387;
	setAttr -s 9 ".kiy[0:8]"  0.67587476677781455 0.74452411091494741 
		-0.56562008676308284 0 0 0 -0.93273909921631126 0 0.60688314386896158;
	setAttr -s 9 ".kox[0:8]"  0.58801437397201539 0.66759557238369027 
		0.82466594294303353 1 1 0.99999999999148304 0.36055193965195137 1 0.89117769477563635;
	setAttr -s 9 ".koy[0:8]"  0.80885047814926758 0.74452411091494741 
		-0.56562008676308284 0 0 -4.1272198399433784e-06 -0.93273913760129934 0 0.45365440186818751;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateX";
	rename -uid "4B0B58F4-40DC-D29C-F924-1E9AF2E6CD4C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 109.89090965415592 1 91.996494200254659
		 3 16.631156044926573 4 -22.576892679967795 5 -22.576892679967795 6 0 7 0 8 0 9 50.622306798509314
		 11 99.306896398231416 13 110.63929055388034 16 109.89090965415592;
	setAttr -s 12 ".kix[0:11]"  0.63569304631365364 0.061321150500103387 
		0.04299056994086526 0.096962748384049502 0.16681642948473033 1 1 0.075241357323131627 
		0.057599880966762163 0.12626911447723554 0.6698821898905144 1;
	setAttr -s 12 ".kiy[0:11]"  -0.77194193490732643 -0.99811808745325492 
		-0.99907547807768737 -0.99528801129412359 0.98598797094790469 0 0 0.99716535145790786 
		0.99833974863901664 0.99199602354502148 0.74246740781497522 0;
	setAttr -s 12 ".kox[0:11]"  0.48124495562528952 0.061321150500103387 
		0.042990592698600484 0.096962748384049502 0.16681642948473033 1 1 1 0.057599880966762183 
		0.12626911447723554 0.66988216408777346 0.99157720852063203;
	setAttr -s 12 ".koy[0:11]"  -0.87658615816428054 -0.99811808745325492 
		-0.99907547709841382 -0.99528801129412359 0.98598797094790469 0 0 0 0.99833974863901653 
		0.99199602354502148 0.74246743109518365 -0.12951694693139995;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateY";
	rename -uid "E56A5FE0-45DC-E809-FDD8-2C8AB9BB8327";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.9993578050651375 3 3.1289252000649803
		 5 3.8956778307944604 6 2.5 8 2.5 9 2.5 16 1.9993578050652401;
	setAttr -s 7 ".kix[0:6]"  1 0.9815679261446284 0.99194200183471226 
		1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0.19111359544557099 0.12669279772798378 
		0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 0.98156793320664038 0.99194199974233943 
		1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0.19111355917475939 0.1266928141102277 
		0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateZ";
	rename -uid "2F69DC84-4012-EE4D-E707-C0B9D47C28A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.8550560009826924 3 28.052001730299484
		 4 43.963197058084383 5 34.262226919342126 8 -44.340849167708129 9 -55.83061073036302
		 11 -54.296514466915802 13 -39.936433989454599 16 -9.8550560009826924;
	setAttr -s 9 ".ktl[3:8]" no yes yes yes yes yes;
	setAttr -s 9 ".kix[0:8]"  0.005215064978123499 0.0026474692573478522 
		0.010734365283087714 0.0013582061548428302 0.0012722138121264049 0.007736124129968781 
		0.014484026630152124 0.0042589549876911768 0.0027813949096808397;
	setAttr -s 9 ".kiy[0:8]"  0.99998640145617679 0.99999649544712466 
		0.99994238504124278 -0.9999990776375951 -0.99999919073568055 -0.99997007574399233 
		0.99989510098438683 0.99999093061007949 0.99999613191369718;
	setAttr -s 9 ".kox[0:8]"  0.0027813950920418961 0.0026474686121671144 
		0.010734365283087714 0.0012722138121264049 0.0029011213919609971 0.0077361226954940354 
		0.014484026630152122 0.004258954704418943 0.0041720728277441473;
	setAttr -s 9 ".koy[0:8]"  0.99999613191318992 0.99999649544883296 
		0.99994238504124278 -0.99999919073568055 -0.99999579173847986 -0.99997007575508989 
		0.99989510098438683 0.99999093061128586 0.99999129686628774;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateY";
	rename -uid "B239E9B7-48AB-6D38-954B-4A90F91483EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 27.851592498133506 1 36.680267530459581
		 3 26.149448993698385 4 15.075298812592887 5 1.3960828558155276 6 0 7 0 8 0 9 24.998035209097811
		 11 38.401023705727106 12 35.907900472446926 14 25.886211161359704 15 23.035131137137487
		 16 27.851592498133506;
	setAttr -s 14 ".kix[0:13]"  0.0076017661084498761 1 0.0046285153263776989 
		0.0026932266307764206 0.0060927776547229605 1 1 1.4172335638384936e-08 0.0023521716160174629 
		1 0.0079902761123206226 0.0069050224854766374 0.0092272212345390122 0.0050679255871770067;
	setAttr -s 14 ".kiy[0:13]"  0.9999711061585892 0 -0.99998928836556722 
		-0.99999637325858093 -0.99998143885796698 0 0 0 0.99999723364051807 0 -0.99996807723429304 
		-0.99997616004806589 0.99995742828796919 0.99998715798266269;
	setAttr -s 14 ".kox[0:13]"  0.0050679255871770067 1 0.0046285153263776989 
		0.0026932266307764206 0.0060927752773338581 1 1 0.99999985599714725 0.0023521711798411599 
		1 0.0079902761123206226 0.006905021129122663 0.0092272230432257872 0.0076017661084498761;
	setAttr -s 14 ".koy[0:13]"  0.99998715798266269 0 -0.99998928836556722 
		-0.99999637325858093 -0.99998143887245217 0 0 0.00053666161102357236 0.99999723364154403 
		0 -0.99996807723429304 -0.99997616005743173 0.9999574282712792 0.9999711061585892;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateX";
	rename -uid "ED730E10-4E68-073F-C16C-2BBA7E3D097D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.78085599449299 3 -0.38060131145194021
		 6 -5.112544955859744 8 -5.112544955859744 9 -5.112544955859744 11 -4.2548900045531779
		 16 1.78085599449299;
	setAttr -s 7 ".kix[0:6]"  1 0.02329759092001496 1 1 1 0.032220207925932949 
		1;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99972857429270456 0 0 0 0.99948079431333225 
		0;
	setAttr -s 7 ".kox[0:6]"  1 0.023297592453353846 1 1 1 0.033829423237079485 
		1;
	setAttr -s 7 ".koy[0:6]"  0 -0.99972857425697181 0 0 0 0.99942762125300821 
		0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateY";
	rename -uid "99A03FEC-4358-FDA2-B5E5-79B5AFE3C319";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateZ";
	rename -uid "25995B2E-4ADE-58A5-3D6C-8AB2A3DD6A4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateX";
	rename -uid "F255D708-4F7D-10FE-8124-93AB859E3C78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateY";
	rename -uid "8B6B754F-4728-10C2-7C5A-9291E782B21C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateZ";
	rename -uid "E8F2FA13-4D5D-BF5A-1691-F389FAED468A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateX";
	rename -uid "696DB27A-45E6-55B8-A63B-D3B856B2EA37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateY";
	rename -uid "5F8FA7A2-4B47-6CD2-921F-5495BC6CA69B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateZ";
	rename -uid "495BB8A4-45DD-E7A4-8084-DF8FE3D01764";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateX";
	rename -uid "8BC718EF-4A1F-2416-BA14-C4AA77C73C87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateY";
	rename -uid "E788E114-49FA-F039-E70C-B58B9975BD0B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateZ";
	rename -uid "24739F38-4B08-7D1F-3BA3-D09DE08ADBC8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateX";
	rename -uid "D0765B54-4CA9-BBBE-E0BD-7BA856AF1D7F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 7 4.6903320624267879 8 42.882987162098047
		 9 44.804738407915416 11 12.134921077863499 16 0;
	setAttr -s 7 ".kix[0:6]"  1 1 0.13449696948295531 0.31446497776229643 
		1 0.22936108478280973 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0.99091400494689796 0.94926907553177897 
		0 -0.97334140607869579 0;
	setAttr -s 7 ".kox[0:6]"  1 1 0.13449696948295531 0.31446497776229643 
		1 0.2293610990297946 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0.99091400494689796 0.94926907553177897 
		0 -0.9733414027214935 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateY";
	rename -uid "640258AC-475A-4CAB-ED7F-7D9BFC4413CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 8 0 16 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateZ";
	rename -uid "76613A49-40B8-20DF-9BF1-8EAD6EF0BFDC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 8 0 16 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateX";
	rename -uid "659F2738-4431-9E0E-1D70-65BC48F53187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.062321734024264 3 10.063250935786327
		 4 2.672529035341237 5 -12.84070683619108 6 0 8 0 9 36.832008303489751 11 23.695419973442675
		 13 15.062321734024264 16 15.062321734024264;
	setAttr -s 10 ".kix[0:9]"  1 0.52484216889042112 0.16449922989837068 
		1 1 1 0.067978001843821551 0.33112440493947826 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.85119956400035746 -0.98637721149813817 
		0 0 0 0.9976868202323419 -0.94358710697713344 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0.52484216889042123 0.16449922989837068 
		1 1 1 0.067977985263393048 0.33112440493947826 1 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.85119956400035757 -0.98637721149813817 
		0 0 0 0.99768682136205933 -0.94358710697713355 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateZ";
	rename -uid "0E7CD48A-449C-75C9-4B15-58A0DBB3C371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 31.030371766271159 3 43.656779273718833
		 8 0 11 -31.487763270324969 16 31.030371766271159;
	setAttr -s 5 ".kix[0:4]"  0.0037322243870980313 0.0085934133637082955 
		0.0046925019526231375 0.0085934133637082001 0.0024881591364357457;
	setAttr -s 5 ".kiy[0:4]"  0.99999303522630811 -0.9999630759416871 
		-0.99998899015210385 0.9999630759416871 0.99999690452726497;
	setAttr -s 5 ".kox[0:4]"  0.0024881591364357457 0.0085934133637082955 
		0.0046925019526230863 0.0085934133637082955 0.0037322243870980313;
	setAttr -s 5 ".koy[0:4]"  0.99999690452726497 -0.9999630759416871 
		-0.99998899015210385 0.9999630759416871 0.99999303522630811;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateY";
	rename -uid "ABC84DB5-4E83-9B2B-F274-8B99E16FA4E4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.967848790019652 3 31.11957681372828
		 8 -12.754813991221962 11 -31.681407843665255 16 -12.967848790019652;
	setAttr -s 5 ".kix[0:4]"  0.012467708406251764 0.78129528239937218 
		0.0042461795029323859 0.78129528239936907 0.0083121642460220416;
	setAttr -s 5 ".kiy[0:4]"  0.99992227510296861 0.62416158300594338 
		-0.99999098493917882 -0.62416158300594748 0.9999654533660387;
	setAttr -s 5 ".kox[0:4]"  0.0083121642460220434 0.78129528239937218 
		0.0042461795029323391 0.78129528239937218 0.012467708406251761;
	setAttr -s 5 ".koy[0:4]"  0.9999654533660387 0.62416158300594338 
		-0.99999098493917882 -0.62416158300594338 0.99992227510296838;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateX";
	rename -uid "E199A802-41D3-ECFE-66E2-FE9DE0EEEABB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.7514158797711779 8 -0.93785396994278614
		 16 3.7514158797711779;
	setAttr -s 3 ".kix[0:2]"  0.084992472204338365 1 0.056775686262311234;
	setAttr -s 3 ".kiy[0:2]"  0.99638159340114008 0 0.99838695977533864;
	setAttr -s 3 ".kox[0:2]"  0.056775686262311234 1 0.084992472204338365;
	setAttr -s 3 ".koy[0:2]"  0.99838695977533864 0 0.99638159340114008;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateY";
	rename -uid "75B5540D-46CE-DD9C-C12F-ACBFBEAB9959";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateZ";
	rename -uid "6FE550B3-4D28-03C6-AA9F-76B6593F4D94";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -29.679287599476154 2 -27.869626555539536
		 5 1.6882970081674742 7 -6.7567878635368119 11 -23.697814628281272 16 -29.679287599476154;
	setAttr -s 6 ".kix[0:5]"  0.90370848825190253 0.29123531539719255 
		0.41210519484194735 0.41142151617639416 0.59992983644560927 0.84747287953320893;
	setAttr -s 6 ".kiy[0:5]"  0.42814830171502605 0.95665144700956672 
		0.91113627322386892 -0.91144519090679121 -0.80005261785856596 -0.53083869344245338;
	setAttr -s 6 ".kox[0:5]"  0.90370848825190253 0.29123531539719255 
		0.41210519484194735 0.41142151617639416 0.59992983644560927 0.84747287953320893;
	setAttr -s 6 ".koy[0:5]"  0.42814830171502605 0.95665144700956672 
		0.91113627322386892 -0.91144519090679121 -0.80005261785856596 -0.53083869344245338;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateX";
	rename -uid "9A6505F7-4F10-7660-056A-939BE5D1CCD7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateY";
	rename -uid "D11E4CF4-4CBC-6F5D-2957-A6A01760617B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateZ";
	rename -uid "B02C0810-4288-F543-B5EE-A989D52BB082";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -21.093137893723625 2 -16.357760702479911
		 5 9.1479860809501243 7 -1.7099801826696723 11 -17.485336884605129 16 -21.093137893723625;
	setAttr -s 6 ".kix[0:5]"  0.62783870252015461 0.30111611255420445 
		0.54612317562536938 0.39522646222113222 0.66348492061328712 0.93546273498440569;
	setAttr -s 6 ".kiy[0:5]"  0.77834347406386639 0.95358748248928038 
		0.83770488660677034 -0.91858371614141288 -0.74818965518027603 -0.35342534070931519;
	setAttr -s 6 ".kox[0:5]"  0.62783870252015461 0.30111611255420445 
		0.54612317562536938 0.39522646222113222 0.66348492061328712 0.93546273498440569;
	setAttr -s 6 ".koy[0:5]"  0.77834347406386639 0.95358748248928038 
		0.83770488660677034 -0.91858371614141288 -0.74818965518027603 -0.35342534070931519;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateX";
	rename -uid "6BF1369F-4B5C-1686-8EA4-B49EEEB7AA5E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateY";
	rename -uid "3102AACB-485E-6288-3DDA-90B03A93C549";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateZ";
	rename -uid "2646B02C-498D-5C71-A19C-96B45FB8A956";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -34.870414603947118 2 -37.283295995862638
		 5 -4.4117607891619004 7 -12.856845660866188 11 -28.334071124471553 16 -34.870414603947118;
	setAttr -s 6 ".kix[0:5]"  0.84544617826946389 0.29915869128686418 
		0.36410571634230082 0.43200925435688864 0.61543575694056063 0.82520196472477059;
	setAttr -s 6 ".kiy[0:5]"  -0.53406063293371275 0.95420337320066662 
		0.93135762590256377 -0.90186917241360731 -0.78818705208789064 -0.56483777973359617;
	setAttr -s 6 ".kox[0:5]"  0.84544617826946389 0.29915869128686418 
		0.36410571634230082 0.43200925435688864 0.61543575694056063 0.82520196472477059;
	setAttr -s 6 ".koy[0:5]"  -0.53406063293371275 0.95420337320066662 
		0.93135762590256377 -0.90186917241360731 -0.78818705208789064 -0.56483777973359617;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateX";
	rename -uid "2515B7CE-4741-268A-3FF9-7BBA5E34DABD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateY";
	rename -uid "13CDBA7E-4C0B-28FA-D640-61B239EA3773";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateZ";
	rename -uid "426BA45D-4E4C-F1C0-FFE1-DAA7BA3A5AB3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -34.870414603947118 2 -37.283295995862638
		 5 -4.4117607891619004 7 -12.856845660866188 11 -28.334071124471553 16 -34.870414603947118;
	setAttr -s 6 ".kix[0:5]"  0.84544617826946389 0.29915869128686418 
		0.36410571634230082 0.43200925435688864 0.61543575694056063 0.82520196472477059;
	setAttr -s 6 ".kiy[0:5]"  -0.53406063293371275 0.95420337320066662 
		0.93135762590256377 -0.90186917241360731 -0.78818705208789064 -0.56483777973359617;
	setAttr -s 6 ".kox[0:5]"  0.84544617826946389 0.29915869128686418 
		0.36410571634230082 0.43200925435688864 0.61543575694056063 0.82520196472477059;
	setAttr -s 6 ".koy[0:5]"  -0.53406063293371275 0.95420337320066662 
		0.93135762590256377 -0.90186917241360731 -0.78818705208789064 -0.56483777973359617;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateX";
	rename -uid "02F7D321-4374-9BD1-8161-93A93479E38A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateY";
	rename -uid "3B1BC5FE-489A-25B1-6A92-9A82423BD189";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateZ";
	rename -uid "5B72E448-4E91-81ED-3221-A2928AAA784D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -33.985400349597533 2 -25.310701554416834
		 5 -5.01093190881432 7 -11.646355736581976 11 -28.707392626466756 16 -33.985400349597533;
	setAttr -s 6 ".kix[0:5]"  0.67084795062529012 0.31301449676710125 
		0.3383156384109075 0.4353493234972009 0.60981893242433038 0.87521185659921485;
	setAttr -s 6 ".kiy[0:5]"  -0.74159492119475068 0.94974834814999198 
		0.94103269274059764 -0.90026161005039496 -0.79254076845096744 -0.48373981236627117;
	setAttr -s 6 ".kox[0:5]"  0.67084795062529012 0.31301449676710125 
		0.3383156384109075 0.4353493234972009 0.60981893242433038 0.87521185659921485;
	setAttr -s 6 ".koy[0:5]"  -0.74159492119475068 0.94974834814999198 
		0.94103269274059764 -0.90026161005039496 -0.79254076845096744 -0.48373981236627117;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateX";
	rename -uid "AF7C7103-4C42-AFD6-C3E5-238AA4CED19E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateY";
	rename -uid "52CEF8FE-411C-627D-AB64-04AF8435F42B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateZ";
	rename -uid "D28969E7-4021-ED52-DD2A-65B5A96348B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -32.246940216297396 2 -32.246940216297396
		 5 -1.1482022440036317 7 -9.593287115707918 11 -26.157351343929644 16 -32.246940216297396;
	setAttr -s 6 ".kix[0:5]"  1 0.2935369406927073 0.38843414095219619 
		0.41655344819425089 0.60445799167868786 0.84315065469849282;
	setAttr -s 6 ".kiy[0:5]"  0 0.95594773102338915 0.921476488111731 
		-0.90911122795699728 -0.7966370166492186 -0.53767738792095665;
	setAttr -s 6 ".kox[0:5]"  1 0.2935369406927073 0.38843414095219619 
		0.41655344819425089 0.60445799167868786 0.84315065469849282;
	setAttr -s 6 ".koy[0:5]"  0 0.95594773102338915 0.921476488111731 
		-0.90911122795699728 -0.7966370166492186 -0.53767738792095665;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateX";
	rename -uid "2DA2ED47-43D5-0B3C-FDA9-C8BB035AFF5B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateY";
	rename -uid "A367F7E9-4D41-0EBE-A0C6-01ADB16880CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateZ";
	rename -uid "E36DF215-43CC-7045-2222-0F9018024B8D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -33.995360640649686 2 -26.314350445483658
		 5 -4.1742455182994274 7 -16.238652477876979 11 -31.687578523138619 16 -33.995360640649686;
	setAttr -s 6 ".kix[0:5]"  0.4452740416350533 0.30496517367208803 
		0.68789263462339101 0.38448007366521636 0.69552219199819532 0.97201763991075729;
	setAttr -s 6 ".kiy[0:5]"  0.89539434208955371 0.9523635035253889 
		0.7258124573406618 -0.9231332910010287 -0.71850461406870969 -0.23490787066916585;
	setAttr -s 6 ".kox[0:5]"  0.4452740416350533 0.30496517367208803 
		0.68789263462339101 0.38448007366521636 0.69552219199819532 0.97201763991075729;
	setAttr -s 6 ".koy[0:5]"  0.89539434208955371 0.9523635035253889 
		0.7258124573406618 -0.9231332910010287 -0.71850461406870969 -0.23490787066916585;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateX";
	rename -uid "BDD0AABF-48A9-D7C7-8D0D-719C274D84B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateY";
	rename -uid "73E5EA53-4010-B3CF-EA95-978F40D4DB75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateZ";
	rename -uid "62BD8158-4619-0323-BA8D-6196357C2F9C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -52.917508966649322 2 -47.453606867566201
		 5 -8.8747219646876747 7 -19.718095458663594 11 -49.67965911852783 16 -52.917508966649322;
	setAttr -s 6 ".kix[0:5]"  0.57295758790946483 0.3025534259841956 
		0.60539093403065869 0.27036877066653403 0.69024614995290479 0.94704174926353024;
	setAttr -s 6 ".kiy[0:5]"  0.81958501844346066 0.95313242753839089 
		0.7959282737743939 -0.96275683734173867 -0.7235746350413288 -0.32111045631039908;
	setAttr -s 6 ".kox[0:5]"  0.57295758790946483 0.3025534259841956 
		0.60539093403065869 0.27036877066653403 0.69024614995290479 0.94704174926353024;
	setAttr -s 6 ".koy[0:5]"  0.81958501844346066 0.95313242753839089 
		0.7959282737743939 -0.96275683734173867 -0.7235746350413288 -0.32111045631039908;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateX";
	rename -uid "64169C50-4928-3BD3-94A5-8384C3DB2930";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateY";
	rename -uid "29C51B59-4C73-62B4-145F-E5AB144667F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateZ";
	rename -uid "93AD9FDA-4C42-6C12-E312-68B93E543940";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -48.559303286660032 2 -46.749642242723411
		 5 -10.91029050652527 7 -19.355375378229564 11 -42.994623942158455 16 -48.559303286660032;
	setAttr -s 6 ".kix[0:5]"  0.90370848825190186 0.2931557250145535 
		0.32916186039102846 0.3363485118087115 0.60370932996759086 0.86400499473396408;
	setAttr -s 6 ".kiy[0:5]"  0.42814830171502721 0.95606470538933264 
		0.94427351422345696 -0.94173758478891822 -0.79720451887209132 -0.50348323614075052;
	setAttr -s 6 ".kox[0:5]"  0.90370848825190186 0.2931557250145535 
		0.32916186039102846 0.3363485118087115 0.60370932996759086 0.86400499473396408;
	setAttr -s 6 ".koy[0:5]"  0.42814830171502721 0.95606470538933264 
		0.94427351422345696 -0.94173758478891822 -0.79720451887209132 -0.50348323614075052;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateX";
	rename -uid "6964015B-40C4-26F2-4603-57B725B9A0FA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateY";
	rename -uid "7BC30707-458D-965E-D360-EAA197CC4009";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateZ";
	rename -uid "F052BA0C-427D-773A-4729-0590A1C579CF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -33.985400349597533 2 -38.207942785449688
		 5 -5.01093190881432 7 -11.646355736581976 11 -28.707392626466756 16 -33.985400349597533;
	setAttr -s 6 ".kix[0:5]"  0.67084795062529012 0.31301449676710125 
		0.3383156384109075 0.4353493234972009 0.60981893242433038 0.87521185659921485;
	setAttr -s 6 ".kiy[0:5]"  -0.74159492119475068 0.94974834814999198 
		0.94103269274059764 -0.90026161005039496 -0.79254076845096744 -0.48373981236627117;
	setAttr -s 6 ".kox[0:5]"  0.67084795062529012 0.31301449676710125 
		0.3383156384109075 0.4353493234972009 0.60981893242433038 0.87521185659921485;
	setAttr -s 6 ".koy[0:5]"  -0.74159492119475068 0.94974834814999198 
		0.94103269274059764 -0.90026161005039496 -0.79254076845096744 -0.48373981236627117;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateX";
	rename -uid "ECB67269-41C7-9450-9840-E9A706203667";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateY";
	rename -uid "DEAC63F1-4B59-C6F5-4965-83A413216D74";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateZ";
	rename -uid "A5FF34A7-45C9-DCFB-488A-4A8E5C277022";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -21.870953896185583 2 -16.357760702479911
		 5 7.2958133356949837 7 -3.5621529279248123 11 -18.77499153447879 16 -21.870953896185583;
	setAttr -s 6 ".kix[0:5]"  0.56950148100801978 0.31115116604989534 
		0.59809791192272288 0.4023856055760589 0.68445453198313289 0.95125516856044623;
	setAttr -s 6 ".kiy[0:5]"  0.82199030598278477 0.95036043260743464 
		0.8014230391957039 -0.91547027500907341 -0.72905554908233894 -0.30840493557502774;
	setAttr -s 6 ".kox[0:5]"  0.56950148100801978 0.31115116604989534 
		0.59809791192272288 0.4023856055760589 0.68445453198313289 0.95125516856044623;
	setAttr -s 6 ".koy[0:5]"  0.82199030598278477 0.95036043260743464 
		0.8014230391957039 -0.91547027500907341 -0.72905554908233894 -0.30840493557502774;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateX";
	rename -uid "55524A26-42C0-1887-8419-00839CBD8014";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateY";
	rename -uid "CB039CE8-4705-E8A8-03A8-42A46962B929";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateZ";
	rename -uid "1E2645CD-4F75-EEBC-D556-C099E9F8744F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -29.560983611149307 2 -27.751322567212686
		 5 1.7649579926032726 7 -6.6801268791010138 11 -23.656789596389604 16 -29.560983611149307;
	setAttr -s 6 ".kix[0:5]"  0.90370848825190186 0.29158957035840111 
		0.4127809804014258 0.41094224024539888 0.60062803766763062 0.85055502881795064;
	setAttr -s 6 ".kiy[0:5]"  0.42814830171502721 0.95654352878382021 
		0.91083031472324083 -0.91166138186395318 -0.79952858633543011 -0.52588605510366515;
	setAttr -s 6 ".kox[0:5]"  0.90370848825190186 0.29158957035840111 
		0.4127809804014258 0.41094224024539888 0.60062803766763062 0.85055502881795064;
	setAttr -s 6 ".koy[0:5]"  0.42814830171502721 0.95654352878382021 
		0.91083031472324083 -0.91166138186395318 -0.79952858633543011 -0.52588605510366515;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateX";
	rename -uid "025FC9F2-47EE-F684-DBC9-6F96F3C85A38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateY";
	rename -uid "96888100-4BA9-332D-252B-739D6AB07D39";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateZ";
	rename -uid "922DABDB-45BF-86C4-24D9-CBACAC2A536F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateX";
	rename -uid "06C5F828-4EA7-0D0E-18BD-39A649C955FF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateY";
	rename -uid "12CB6515-4DF7-CBCD-68A2-B09DAD8EED8F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateZ";
	rename -uid "8F258697-4100-2C1C-A27B-62B3B796E8F3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -16.357760702479911 2 -16.357760702479911
		 5 13.768685659607518 7 1.7042787000299668 11 -12.812737021798723 16 -16.357760702479911;
	setAttr -s 6 ".kix[0:5]"  1 0.30215785596066436 0.4673922004179244 
		0.39587730525046627 0.68937733778742538 0.9374847923981513;
	setAttr -s 6 ".kiy[0:5]"  0 0.95325790323566395 0.8840500726703725 
		-0.91830341346835309 -0.72440243383434444 -0.34802624042189023;
	setAttr -s 6 ".kox[0:5]"  1 0.30215785596066436 0.4673922004179244 
		0.39587730525046627 0.68937733778742538 0.9374847923981513;
	setAttr -s 6 ".koy[0:5]"  0 0.95325790323566395 0.8840500726703725 
		-0.91830341346835309 -0.72440243383434444 -0.34802624042189023;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateX";
	rename -uid "EE69E667-442E-0DA5-669B-08AABD53B381";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateY";
	rename -uid "26200391-4487-A473-C0E7-039DA619ED89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateZ";
	rename -uid "4A03DB52-4F79-76F0-5169-F18AAFA3D0EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -29.679287599476154 2 -27.869626555539536
		 5 1.6882970081674742 7 -6.7567878635368119 11 -23.697814628281272 16 -29.679287599476154;
	setAttr -s 6 ".kix[0:5]"  0.90370848825190253 0.29123531539719255 
		0.41210519484194735 0.41142151617639416 0.59992983644560927 0.84747287953320893;
	setAttr -s 6 ".kiy[0:5]"  0.42814830171502605 0.95665144700956672 
		0.91113627322386892 -0.91144519090679121 -0.80005261785856596 -0.53083869344245338;
	setAttr -s 6 ".kox[0:5]"  0.90370848825190253 0.29123531539719255 
		0.41210519484194735 0.41142151617639416 0.59992983644560927 0.84747287953320893;
	setAttr -s 6 ".koy[0:5]"  0.42814830171502605 0.95665144700956672 
		0.91113627322386892 -0.91144519090679121 -0.80005261785856596 -0.53083869344245338;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateX";
	rename -uid "4398129E-48F5-5F03-87E4-56A955DE4AA8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateZ";
	rename -uid "BE58D9AC-4B80-C322-0BAE-33B5E09F1689";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateX";
	rename -uid "5381E6B1-4428-2ED0-6A34-3DACE0EE8067";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateY";
	rename -uid "B737FEB7-49D9-CED2-49BB-EBBA6A49CC6D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateZ";
	rename -uid "BCD7ADF9-48F7-6447-E2E9-898B96043C86";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateY";
	rename -uid "C21CA1F3-4847-F9AE-0A56-FF8431D9A532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateX";
	rename -uid "139055E8-49D3-AC24-E02E-BBBC4FA2265A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateZ";
	rename -uid "732D3948-4BF4-E792-0DE9-1A84E12B0DBA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateX";
	rename -uid "2C30AEF3-4A7B-D22E-0BC9-3EABFDA6EA18";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateY";
	rename -uid "2CC62FDB-4021-237B-DA64-DB85D5D91177";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateZ";
	rename -uid "43A112E7-40B0-2BA3-C5D8-0CA589ECB0A7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateY";
	rename -uid "93AFDC8F-420C-2335-F6FB-129771D4303D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateX";
	rename -uid "F679C617-455A-5400-B0EC-059FB960CE2F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateZ";
	rename -uid "DB4D26E8-4155-5320-74F0-46AE201B6687";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateX";
	rename -uid "951C8654-49A1-EF2B-715E-CFB2BB5EF25C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateY";
	rename -uid "F3082036-4EC7-BAEC-6E9F-608874D7EB51";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateZ";
	rename -uid "3C1ABFDF-4677-7646-3845-C3A7E603325E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateY";
	rename -uid "E166E460-46B3-6FB5-0D7E-3A9E4063E778";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateX";
	rename -uid "89DB6FA3-486B-E7B3-44DB-A4A404AF5AFA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateZ";
	rename -uid "4E010661-49EA-61F0-AC52-0A882B26DF7C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateX";
	rename -uid "25783B95-4E60-A3B1-FEE3-CABFCA5511BC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateY";
	rename -uid "5A4334C8-4AB3-D2DE-D054-B3B76893E1B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateZ";
	rename -uid "1B4D0647-451C-33AD-8013-5B96541BFE6C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateY";
	rename -uid "9EBCD1C2-4A5E-7FFF-5EFA-6B90926D52D0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateX";
	rename -uid "C7F397C5-4BC0-158E-49E6-A0B84EC2DE01";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateY";
	rename -uid "5EEAA6A1-4C68-98ED-6A53-D68E6C3E8496";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateZ";
	rename -uid "D4937EEA-4301-A0D1-FA36-528CD81F6EB7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.0018635632722308 3 -18.77499153447879
		 8 -21.870953896185583 10 -16.357760702479911 13 7.2958133356949837 15 -3.5621529279248123
		 16 -8.0018635632722308;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.68445453198313277 
		0.9840443183665879 0.31115116604989546 0.59809791192272288 0.4023856055760589 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.077799818631074713 -0.72905554908233883 
		0.17792352146480664 0.95036043260743475 0.8014230391957039 -0.91547027500907319 -0.077799818631074713;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.68445453198313289 
		0.9840443183665879 0.31115116604989546 0.59809791192272288 0.4023856055760589 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.23339945589322397 -0.72905554908233894 
		0.17792352146480664 0.95036043260743475 0.8014230391957039 -0.9154702750090733 -0.23339945589322397;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateX";
	rename -uid "F114A341-471A-9397-CC3E-59A5F22160A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateY";
	rename -uid "01628800-47DB-4613-01D6-13BF5E09479D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateZ";
	rename -uid "E96F05CE-4603-2C68-D7A5-30A7B539EC03";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -16.068289180135231 3 -28.707392626466756
		 8 -33.985400349597533 10 -38.207942785449688 13 -5.01093190881432 15 -11.646355736581976
		 16 -16.068289180135231;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.60981893242433027 
		0.81513684815008847 0.3130144967671013 0.3383156384109075 0.43534932349720101 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.083134740322956535 -0.79254076845096755 
		-0.57926843413735185 0.94974834814999198 0.94103269274059764 -0.90026161005039496 
		-0.083134740322956535;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.60981893242433038 
		0.81513684815008847 0.3130144967671013 0.3383156384109075 0.43534932349720096 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24940422096886944 -0.79254076845096744 
		-0.57926843413735185 0.94974834814999198 0.94103269274059764 -0.90026161005039496 
		-0.24940422096886944;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateX";
	rename -uid "E5D56DF6-470F-DC6F-DDCC-DA961D2BF89F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateY";
	rename -uid "B0F3AEAC-4B61-BEC1-CAEE-67A3430DC1C2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateZ";
	rename -uid "0109B143-408E-6F27-69EC-6B8796CC11F6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3439184324383833 3 -12.169506233981986
		 8 -14.47728835149306 10 -6.7962781563270216 13 15.343826770857207 15 3.279419811279658
		 16 -1.3439184324383833;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.69552219199819532 
		0.92786222987653544 0.30496517367208803 0.68789263462339101 0.38448007366521636 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.080080064864472042 -0.71850461406870969 
		0.37292315879889165 0.95236350352538868 0.7258124573406618 -0.9231332910010287 -0.080080064864472042;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.69552219199819532 
		0.92786222987653544 0.30496517367208803 0.68789263462339101 0.3844800736652163 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24024019459341608 -0.71850461406870969 
		0.37292315879889165 0.95236350352538868 0.7258124573406618 -0.92313329100102859 -0.24024019459341608;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateX";
	rename -uid "AF4A25CA-4737-3FCD-E239-E98C5476D95B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateY";
	rename -uid "1BE2BF99-4512-5CF0-D0F3-C8A3675B7BC6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateZ";
	rename -uid "24E39043-4347-27B2-D857-DB8B984470CF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateX";
	rename -uid "CE2F8852-40FD-AC52-15F2-098980785D7E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateY";
	rename -uid "CCE1CC01-4D2D-E434-C033-759478594501";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateZ";
	rename -uid "E795A11A-48BE-EA11-7C46-2080E29A8F73";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -17.059262713842287 3 -28.334071124471553
		 8 -34.870414603947118 10 -37.283295995862638 13 -4.4117607891619004 15 -12.856845660866188
		 16 -17.059262713842287;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.61543575694056074 
		0.83100029452966218 0.29915869128686418 0.36410571634230082 0.43200925435688875 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.075680649844051595 -0.78818705208789031 
		-0.55627197528872041 0.95420337320066662 0.93135762590256377 -0.90186917241360731 
		-0.075680649844051595;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.61543575694056063 
		0.83100029452966218 0.29915869128686418 0.36410571634230082 0.43200925435688886 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.22704194953215479 -0.78818705208789064 
		-0.55627197528872041 0.95420337320066662 0.93135762590256377 -0.9018691724136072 
		-0.22704194953215479;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateX";
	rename -uid "7BA20EC7-44CC-CB7A-4FF0-3896B388AEA6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateY";
	rename -uid "1F272BBC-4FAF-A6DF-2A12-B6B4EEE3C4F0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateZ";
	rename -uid "E21EF04A-441C-0ABA-0220-48828B429C1E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.306219183613136 3 -23.697814628281272
		 8 -29.679287599476154 10 -27.869626555539536 13 1.6882970081674742 15 -6.7567878635368119
		 16 -11.306219183613136;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.59992983644560915 
		0.9546019777689102 0.29123531539719261 0.41210519484194735 0.41142151617639428 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.083113619833306673 -0.80005261785856596 
		-0.29788431318161912 0.95665144700956672 0.91113627322386892 -0.9114451909067911 
		-0.083113619833306673;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.59992983644560927 
		0.9546019777689102 0.29123531539719261 0.41210519484194735 0.4114215161763945 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24934085949992019 -0.80005261785856596 
		-0.29788431318161912 0.95665144700956672 0.91113627322386892 -0.91144519090679121 
		-0.24934085949992019;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateX";
	rename -uid "1A1BA5B1-46C3-6272-1D45-568FC7871F44";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateY";
	rename -uid "486B84C6-4BC9-49BF-936E-F7A0459E235D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateZ";
	rename -uid "184C8299-4D24-9148-232C-F2BCD1704B66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.306219183613136 3 -23.697814628281272
		 8 -29.679287599476154 10 -27.869626555539536 13 1.6882970081674742 15 -6.7567878635368119
		 16 -11.306219183613136;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.59992983644560915 
		0.9546019777689102 0.29123531539719261 0.41210519484194735 0.41142151617639428 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.083113619833306673 -0.80005261785856596 
		-0.29788431318161912 0.95665144700956672 0.91113627322386892 -0.9114451909067911 
		-0.083113619833306673;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.59992983644560927 
		0.9546019777689102 0.29123531539719261 0.41210519484194735 0.4114215161763945 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24934085949992019 -0.80005261785856596 
		-0.29788431318161912 0.95665144700956672 0.91113627322386892 -0.91144519090679121 
		-0.24934085949992019;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateX";
	rename -uid "70F626D0-4CDA-9356-56A2-31BE72A82169";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateY";
	rename -uid "E51D235C-4F46-3A29-A7D2-6A8B384C46BE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateZ";
	rename -uid "9BF8DAD7-4DC1-3B33-66A6-9B8650155B7A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.945487012982316 3 -23.476551653001827
		 8 -29.041230997503387 10 -27.231569953566765 13 2.1017576862458203 15 -6.3433271854584659
		 16 -10.945487012982316;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.6037093299675913 
		0.96274505052238291 0.29315572501455356 0.41577364727488458 0.40884844426907141 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.084298004656779224 -0.79720451887209098 
		-0.27041073886710637 0.95606470538933264 0.90946812711152214 -0.9126022954270715 
		-0.084298004656779224;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.60370932996759086 
		0.96274505052238291 0.29315572501455356 0.41577364727488458 0.40884844426907158 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.25289401397033784 -0.79720451887209132 
		-0.27041073886710637 0.95606470538933264 0.90946812711152214 -0.9126022954270715 
		-0.25289401397033784;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateX";
	rename -uid "77977CDF-4C29-0BAC-92B5-0F91A2A7C90A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateY";
	rename -uid "C26B79B8-4C27-5C17-C955-0EA7D90638D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateZ";
	rename -uid "EA6E2B75-46F1-EDAE-4C57-658B47B002D2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.239334749894432 3 -23.656789596389604
		 8 -29.560983611149307 10 -27.751322567212686 13 1.7649579926032726 15 -6.6801268791010138
		 16 -11.239334749894432;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.60062803766763073 
		0.95616036505127078 0.29158957035840116 0.4127809804014258 0.41094224024539905 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.083333220175811351 -0.79952858633543011 
		-0.29284356968357833 0.95654352878382021 0.91083031472324083 -0.9116613818639534 
		-0.083333220175811351;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.60062803766763062 
		0.95616036505127078 0.29158957035840116 0.4127809804014258 0.41094224024539922 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24999966052743422 -0.79952858633543011 
		-0.29284356968357833 0.95654352878382021 0.91083031472324083 -0.91166138186395318 
		-0.24999966052743422;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateX";
	rename -uid "2862ECA3-4AEE-3862-3C99-4198D1656458";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateY";
	rename -uid "389ABDFB-4A87-9FD2-1402-5C81239A30C0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateZ";
	rename -uid "87899D80-4975-0381-A997-44825CB5E96F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -14.054078773223345 3 -26.157351343929644
		 8 -32.246940216297396 10 -32.246940216297396 13 -1.1482022440036317 15 -9.593287115707918
		 16 -14.054078773223345;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.60445799167868808 
		0.91003889011462058 0.2935369406927073 0.38843414095219619 0.416553448194251 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.081220533798544381 -0.79663701664921838 
		-0.41452288052524855 0.95594773102338915 0.921476488111731 -0.90911122795699728 -0.081220533798544381;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.60445799167868786 
		0.91003889011462058 0.2935369406927073 0.38843414095219619 0.416553448194251 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24366160139563298 -0.7966370166492186 
		-0.41452288052524855 0.95594773102338915 0.921476488111731 -0.90911122795699728 -0.24366160139563298;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateX";
	rename -uid "01A7009B-40F9-B15B-AA6D-27806C9C212E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateY";
	rename -uid "5880B6C1-4452-E4DC-C8B8-1688BAF6817A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateZ";
	rename -uid "51C03C69-4D69-59C5-1C62-9DBCBECB2B68";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -17.059262713842287 3 -28.334071124471553
		 8 -34.870414603947118 10 -37.283295995862638 13 -4.4117607891619004 15 -12.856845660866188
		 16 -17.059262713842287;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.61543575694056074 
		0.83100029452966218 0.29915869128686418 0.36410571634230082 0.43200925435688875 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.075680649844051595 -0.78818705208789031 
		-0.55627197528872041 0.95420337320066662 0.93135762590256377 -0.90186917241360731 
		-0.075680649844051595;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.61543575694056063 
		0.83100029452966218 0.29915869128686418 0.36410571634230082 0.43200925435688886 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.22704194953215479 -0.78818705208789064 
		-0.55627197528872041 0.95420337320066662 0.93135762590256377 -0.9018691724136072 
		-0.22704194953215479;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateX";
	rename -uid "2D4853C4-4677-317C-904D-8F9E2AA135E2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateY";
	rename -uid "1E216FC9-4EA7-E2DD-7870-E08DAED2DC89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateZ";
	rename -uid "B73B47A0-4CC4-3280-5590-559799BD807A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -16.068289180135231 3 -28.707392626466756
		 8 -33.985400349597533 10 -38.207942785449688 13 -5.01093190881432 15 -11.646355736581976
		 16 -16.068289180135231;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.60981893242433027 
		0.81513684815008847 0.3130144967671013 0.3383156384109075 0.43534932349720101 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.083134740322956535 -0.79254076845096755 
		-0.57926843413735185 0.94974834814999198 0.94103269274059764 -0.90026161005039496 
		-0.083134740322956535;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.60981893242433038 
		0.81513684815008847 0.3130144967671013 0.3383156384109075 0.43534932349720096 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24940422096886944 -0.79254076845096744 
		-0.57926843413735185 0.94974834814999198 0.94103269274059764 -0.90026161005039496 
		-0.24940422096886944;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateX";
	rename -uid "066EF5B4-4B13-1A31-72B0-CEB0915CBF0E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateY";
	rename -uid "70C2DF84-428B-24C0-653C-B489078FC75F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateZ";
	rename -uid "0BB440A6-4653-F147-DAC2-EFB0DA87FFC3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.2679379097209349 3 -17.485336884605129
		 8 -21.093137893723625 10 -16.357760702479911 13 9.1479860809501243 15 -1.7099801826696723
		 16 -6.2679379097209349;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.66348492061328723 
		0.99646203599427041 0.30111611255420451 0.54612317562536938 0.39522646222113234 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.080216800342718664 -0.7481896551802758 
		0.08404410046013383 0.95358748248928049 0.83770488660677034 -0.91858371614141288 
		-0.080216800342718664;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.66348492061328712 
		0.99646203599427041 0.30111611255420451 0.54612317562536938 0.39522646222113228 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.24065040102815591 -0.74818965518027603 
		0.08404410046013383 0.95358748248928049 0.83770488660677034 -0.91858371614141288 
		-0.24065040102815591;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateX";
	rename -uid "E4C53501-4A36-06F5-660A-E4A82E44AA27";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateY";
	rename -uid "1425AB32-4BD5-014E-4285-0AB61D5CC803";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateZ";
	rename -uid "9F2BE90C-445D-B427-84AA-CF9D5B9D17C7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.735219475597396 3 -16.065201287202569
		 8 -19.303051135324075 10 -13.83914903624094 13 10.780046440672976 15 -1.2843605189045748
		 16 -5.735219475597396;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.6902461499529049 
		0.98641924139734494 0.3025534259841956 0.60539093403065869 0.39258891717424954 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.076277459090075661 -0.7235746350413288 
		0.16424700971733522 0.95313242753839078 0.7959282737743939 -0.91971405453649024 -0.076277459090075661;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.69024614995290479 
		0.98641924139734494 0.3025534259841956 0.60539093403065869 0.39258891717424965 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.22883237727022707 -0.7235746350413288 
		0.16424700971733522 0.95313242753839078 0.7959282737743939 -0.91971405453649024 -0.22883237727022707;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateX";
	rename -uid "1B62AE69-465A-6570-105F-02AD2C205374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateY";
	rename -uid "EED3F341-4FBD-92B5-FF48-2F826BC248B4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateZ";
	rename -uid "E51D880F-4B63-C616-5D3B-86B2FC1C2446";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.6797208953353122 3 -12.812737021798723
		 8 -16.357760702479911 10 -16.357760702479911 13 13.768685659607518 15 1.7042787000299668
		 16 -2.6797208953353122;
	setAttr -s 7 ".kix[0:6]"  0.033333333333333326 0.68937733778742571 
		0.96659484445440402 0.30215785596066436 0.4673922004179244 0.39587730525046627 0.033333333333333326;
	setAttr -s 7 ".kiy[0:6]"  -0.074812246574969182 -0.72440243383434444 
		-0.25630920130609153 0.95325790323566395 0.8840500726703725 -0.91830341346835309 
		-0.074812246574969182;
	setAttr -s 7 ".kox[0:6]"  0.10000000000000002 0.68937733778742538 
		0.96659484445440402 0.30215785596066436 0.4673922004179244 0.39587730525046633 0.10000000000000002;
	setAttr -s 7 ".koy[0:6]"  -0.22443673972490755 -0.72440243383434444 
		-0.25630920130609153 0.95325790323566395 0.8840500726703725 -0.91830341346835309 
		-0.22443673972490755;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateX";
	rename -uid "1D67A03B-40A8-D8B1-722B-ACAC906F5699";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Sword_parent_switch";
	rename -uid "5F84C3B0-4BE4-E45B-1E1E-9DAD00AC11DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
createNode animCurveTL -n "Rig_R_SwordTip_translateZ";
	rename -uid "9D73ECA5-4D3B-5507-5E16-8FAF0F303512";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -91.5 16 -91.5;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "15C6BE5D-4640-082B-7FA6-128302F44B42";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 16 -ast -10 -aet 93 ";
	setAttr ".st" 6;
createNode mute -n "Rig_C_root1_translateZ1";
	rename -uid "8ACA63E6-42B3-7ECC-3F5D-9281A5588A3F";
	setAttr ".ihi" 0;
	setAttr ".h" 0;
	setAttr ".m" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "698A63FD-4320-675B-5A84-E0AC4665FB54";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n"
		+ "            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 452\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 0.255159\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"D:/00_??????/MAyaproj/Reach_Sspring_jaku/sourceimages/HG_Layout.tga\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n"
		+ "            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 452\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 452\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 600 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode animCurveTA -n "Rig_C_BackWeapon1_rotateY";
	rename -uid "4969D715-420C-74BC-5D37-C2859E26D3DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 29.999999999999996 16 29.999999999999996;
createNode animCurveTA -n "Rig_C_BackWeapon1_rotateX";
	rename -uid "24A21AB2-4AEE-5720-11B8-A5AFE6195C3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -10 16 -10;
createNode animCurveTA -n "Rig_C_BackWeapon1_rotateZ";
	rename -uid "EE44AD5F-42AA-9E7B-645A-D6A99473E212";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.590735253788216e-16 16 4.590735253788216e-16;
createNode animCurveTL -n "Rig_R_eye_translateZ";
	rename -uid "7A676AB1-4073-1D6E-52F5-F3AE01E06361";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_eye_rotateX";
	rename -uid "AB80B01B-4238-B01D-C13D-9892CD878BD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_eye_rotateY";
	rename -uid "B668CEB3-4A16-70F0-9ADF-AA9D2B5717A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_R_eye_rotateZ";
	rename -uid "80EA5C5B-4A52-8645-972B-CA9C3954C5ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTL -n "Rig_L_eye_translateZ";
	rename -uid "DD99F8BE-4BD4-DD76-B10F-0282E3A3DC30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_eye_rotateX";
	rename -uid "CE468581-4E17-90E1-B0A8-7BBA78C12990";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_eye_rotateY";
	rename -uid "9AD92CD4-405C-BCD1-705E-0CB70F8E6B51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_L_eye_rotateZ";
	rename -uid "F2B63C1D-4AEE-13D4-CAFD-9B8DE787F6FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "Rig_C_Weapon_set_rotateZ";
	rename -uid "7F53E35A-44EE-9328-CD4D-2D8B2773077F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode pairBlend -n "pairBlend1";
	rename -uid "E654E4FF-49CD-40BA-DF9F-1E84F688E742";
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "5A6565E7-43C2-302A-6CD0-A1B81D407984";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -19.681087218881743 16 -19.681087218881743;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "5C819FB8-48E6-6C72-DC02-58A2DF8BCAC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.1167383638314483 16 -4.1167383638314483;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "76F1F5DF-45E4-56C6-DEB6-5BB76E491C7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -15.17999152395052 16 -15.17999152395052;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "B9756FFD-4E15-70A7-3FDE-C18A8AEA6DB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -26.866177888511135 16 -26.866177888511135;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "A5FE0BB3-442D-B69F-5E60-B78819CE6789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -14.657204596031336 16 -14.657204596031336;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "B43C96D5-4B0F-64AD-977A-FF832CFBE454";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 38.132048320200035 16 38.132048320200035;
createNode animCurveTU -n "Rig_R_Sword_blendParent1";
	rename -uid "2736512C-48B3-AB50-AA86-E78FD5F5F3F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 3;
	setAttr -av -k on ".unw" 3;
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
	setAttr -s 20 ".st";
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
	setAttr -s 21 ".s";
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
	setAttr -s 51 ".u";
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
	setAttr -s 11 ".tx";
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
	setAttr -s 3 ".gn";
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
	setAttr -cb on ".mwc";
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
select -ne :ikSystem;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
connectAttr "Rig_C_root1_rotateZ.o" "ab_rig_ARN.phl[536]";
connectAttr "Rig_C_root1_rotateX.o" "ab_rig_ARN.phl[537]";
connectAttr "Rig_C_root1_rotateY.o" "ab_rig_ARN.phl[538]";
connectAttr "Rig_C_root1_translateZ1.o" "ab_rig_ARN.phl[539]";
connectAttr "Rig_C_root1_translateY.o" "ab_rig_ARN.phl[540]";
connectAttr "Rig_C_root1_translateX.o" "ab_rig_ARN.phl[541]";
connectAttr "Rig_C_root2_rotateX.o" "ab_rig_ARN.phl[542]";
connectAttr "Rig_C_root2_rotateY.o" "ab_rig_ARN.phl[543]";
connectAttr "Rig_C_root2_rotateZ.o" "ab_rig_ARN.phl[544]";
connectAttr "Rig_C_root2_translateZ.o" "ab_rig_ARN.phl[545]";
connectAttr "Rig_C_root2_translateY.o" "ab_rig_ARN.phl[546]";
connectAttr "Rig_C_root2_translateX.o" "ab_rig_ARN.phl[547]";
connectAttr "Rig_C_Waist_translateZ.o" "ab_rig_ARN.phl[548]";
connectAttr "Rig_C_Waist_translateY.o" "ab_rig_ARN.phl[549]";
connectAttr "Rig_C_Waist_translateX.o" "ab_rig_ARN.phl[550]";
connectAttr "Rig_C_Waist_rotateZ.o" "ab_rig_ARN.phl[551]";
connectAttr "Rig_C_Waist_rotateX.o" "ab_rig_ARN.phl[552]";
connectAttr "Rig_C_Waist_rotateY.o" "ab_rig_ARN.phl[553]";
connectAttr "Rig_C_Hips_rotateY.o" "ab_rig_ARN.phl[554]";
connectAttr "Rig_C_Hips_rotateZ.o" "ab_rig_ARN.phl[555]";
connectAttr "Rig_C_Hips_rotateX.o" "ab_rig_ARN.phl[556]";
connectAttr "Rig_C_Tail1_parent_swaitch.o" "ab_rig_ARN.phl[557]";
connectAttr "Rig_C_Tail1_rotateY.o" "ab_rig_ARN.phl[558]";
connectAttr "Rig_C_Tail1_rotateZ.o" "ab_rig_ARN.phl[559]";
connectAttr "Rig_C_Tail1_rotateX.o" "ab_rig_ARN.phl[560]";
connectAttr "Rig_C_Tail2_rotateY.o" "ab_rig_ARN.phl[561]";
connectAttr "Rig_C_Tail2_rotateZ.o" "ab_rig_ARN.phl[562]";
connectAttr "Rig_C_Tail2_rotateX.o" "ab_rig_ARN.phl[563]";
connectAttr "Rig_C_Tail3_rotateX.o" "ab_rig_ARN.phl[564]";
connectAttr "Rig_C_Tail3_rotateY.o" "ab_rig_ARN.phl[565]";
connectAttr "Rig_C_Tail3_rotateZ.o" "ab_rig_ARN.phl[566]";
connectAttr "Rig_C_Tail4_rotateX.o" "ab_rig_ARN.phl[567]";
connectAttr "Rig_C_Tail4_rotateY.o" "ab_rig_ARN.phl[568]";
connectAttr "Rig_C_Tail4_rotateZ.o" "ab_rig_ARN.phl[569]";
connectAttr "Rig_C_Spine_rotateX.o" "ab_rig_ARN.phl[570]";
connectAttr "Rig_C_Spine_rotateY.o" "ab_rig_ARN.phl[571]";
connectAttr "Rig_C_Spine_rotateZ.o" "ab_rig_ARN.phl[572]";
connectAttr "Rig_C_Chest_rotateX.o" "ab_rig_ARN.phl[573]";
connectAttr "Rig_C_Chest_rotateY.o" "ab_rig_ARN.phl[574]";
connectAttr "Rig_C_Chest_rotateZ.o" "ab_rig_ARN.phl[575]";
connectAttr "Rig_C_Neck_rotateX.o" "ab_rig_ARN.phl[576]";
connectAttr "Rig_C_Neck_rotateY.o" "ab_rig_ARN.phl[577]";
connectAttr "Rig_C_Neck_rotateZ.o" "ab_rig_ARN.phl[578]";
connectAttr "Rig_C_Head_parent_switch.o" "ab_rig_ARN.phl[579]";
connectAttr "Rig_C_Head_rotateX.o" "ab_rig_ARN.phl[580]";
connectAttr "Rig_C_Head_rotateY.o" "ab_rig_ARN.phl[581]";
connectAttr "Rig_C_Head_rotateZ.o" "ab_rig_ARN.phl[582]";
connectAttr "Rig_C_Other_L_Arm_FKIK.o" "ab_rig_ARN.phl[583]";
connectAttr "Rig_C_Other_R_Arm_FKIK.o" "ab_rig_ARN.phl[584]";
connectAttr "Rig_C_Other_L_Leg_FKIK.o" "ab_rig_ARN.phl[585]";
connectAttr "Rig_C_Other_R_Leg_FKIK.o" "ab_rig_ARN.phl[586]";
connectAttr "Rig_C_Other_sword.o" "ab_rig_ARN.phl[587]";
connectAttr "Rig_C_Other_tail.o" "ab_rig_ARN.phl[588]";
connectAttr "Rig_C_eye_translateY.o" "ab_rig_ARN.phl[589]";
connectAttr "Rig_C_eye_translateX.o" "ab_rig_ARN.phl[590]";
connectAttr "Rig_L_eye_translateY.o" "ab_rig_ARN.phl[591]";
connectAttr "Rig_L_eye_translateX.o" "ab_rig_ARN.phl[592]";
connectAttr "Rig_R_eye_translateY.o" "ab_rig_ARN.phl[593]";
connectAttr "Rig_R_eye_translateX.o" "ab_rig_ARN.phl[594]";
connectAttr "Rig_L_Clavicle_parent_switch.o" "ab_rig_ARN.phl[595]";
connectAttr "Rig_L_Clavicle_rotateX.o" "ab_rig_ARN.phl[596]";
connectAttr "Rig_L_Clavicle_rotateY.o" "ab_rig_ARN.phl[597]";
connectAttr "Rig_L_Clavicle_rotateZ.o" "ab_rig_ARN.phl[598]";
connectAttr "Rig_L_Shoulder_FK_rotateX.o" "ab_rig_ARN.phl[599]";
connectAttr "Rig_L_Shoulder_FK_rotateY.o" "ab_rig_ARN.phl[600]";
connectAttr "Rig_L_Shoulder_FK_rotateZ.o" "ab_rig_ARN.phl[601]";
connectAttr "Rig_L_Elbow_FK_rotateX.o" "ab_rig_ARN.phl[602]";
connectAttr "Rig_L_Elbow_FK_rotateY.o" "ab_rig_ARN.phl[603]";
connectAttr "Rig_L_Elbow_FK_rotateZ.o" "ab_rig_ARN.phl[604]";
connectAttr "Rig_L_Hand_FK_rotateX.o" "ab_rig_ARN.phl[605]";
connectAttr "Rig_L_Hand_FK_rotateY.o" "ab_rig_ARN.phl[606]";
connectAttr "Rig_L_Hand_FK_rotateZ.o" "ab_rig_ARN.phl[607]";
connectAttr "Rig_R_Clavicle_parent_switch.o" "ab_rig_ARN.phl[608]";
connectAttr "Rig_R_Clavicle_rotateX.o" "ab_rig_ARN.phl[609]";
connectAttr "Rig_R_Clavicle_rotateY.o" "ab_rig_ARN.phl[610]";
connectAttr "Rig_R_Clavicle_rotateZ.o" "ab_rig_ARN.phl[611]";
connectAttr "Rig_R_Shoulder_FK_rotateX.o" "ab_rig_ARN.phl[612]";
connectAttr "Rig_R_Shoulder_FK_rotateY.o" "ab_rig_ARN.phl[613]";
connectAttr "Rig_R_Shoulder_FK_rotateZ.o" "ab_rig_ARN.phl[614]";
connectAttr "Rig_R_Elbow_FK_rotateX.o" "ab_rig_ARN.phl[615]";
connectAttr "Rig_R_Elbow_FK_rotateY.o" "ab_rig_ARN.phl[616]";
connectAttr "Rig_R_Elbow_FK_rotateZ.o" "ab_rig_ARN.phl[617]";
connectAttr "Rig_R_Hand_FK_rotateX.o" "ab_rig_ARN.phl[618]";
connectAttr "Rig_R_Hand_FK_rotateY.o" "ab_rig_ARN.phl[619]";
connectAttr "Rig_R_Hand_FK_rotateZ.o" "ab_rig_ARN.phl[620]";
connectAttr "Rig_C_Weapon_set_rotateZ.o" "ab_rig_ARN.phl[621]";
connectAttr "Rig_L_Leg1_IK_rotateZ.o" "ab_rig_ARN.phl[622]";
connectAttr "Rig_L_Leg1_IK_rotateX.o" "ab_rig_ARN.phl[623]";
connectAttr "Rig_L_Leg1_IK_rotateY.o" "ab_rig_ARN.phl[624]";
connectAttr "Rig_L_Leg1_IK_translateZ.o" "ab_rig_ARN.phl[625]";
connectAttr "Rig_L_Leg1_IK_translateY.o" "ab_rig_ARN.phl[626]";
connectAttr "Rig_L_Leg1_IK_translateX.o" "ab_rig_ARN.phl[627]";
connectAttr "Rig_L_Leg2_IK_rotateX.o" "ab_rig_ARN.phl[628]";
connectAttr "Rig_L_Leg2_IK_rotateY.o" "ab_rig_ARN.phl[629]";
connectAttr "Rig_L_Leg2_IK_rotateZ.o" "ab_rig_ARN.phl[630]";
connectAttr "Rig_L_Leg3_IK_rotateX.o" "ab_rig_ARN.phl[631]";
connectAttr "Rig_L_Leg3_IK_rotateY.o" "ab_rig_ARN.phl[632]";
connectAttr "Rig_L_Leg3_IK_rotateZ.o" "ab_rig_ARN.phl[633]";
connectAttr "Rig_L_Leg4_IK_rotateX.o" "ab_rig_ARN.phl[634]";
connectAttr "Rig_L_Leg4_IK_rotateY.o" "ab_rig_ARN.phl[635]";
connectAttr "Rig_L_Leg4_IK_rotateZ.o" "ab_rig_ARN.phl[636]";
connectAttr "Rig_L_Leg5_IK_rotateX.o" "ab_rig_ARN.phl[637]";
connectAttr "Rig_L_Leg5_IK_rotateY.o" "ab_rig_ARN.phl[638]";
connectAttr "Rig_L_Leg5_IK_rotateZ.o" "ab_rig_ARN.phl[639]";
connectAttr "Rig_L_Leg6_IK_rotateX.o" "ab_rig_ARN.phl[640]";
connectAttr "Rig_L_Leg6_IK_rotateY.o" "ab_rig_ARN.phl[641]";
connectAttr "Rig_L_Leg6_IK_rotateZ.o" "ab_rig_ARN.phl[642]";
connectAttr "Rig_L_LegPole_IK_translateZ.o" "ab_rig_ARN.phl[643]";
connectAttr "Rig_L_LegPole_IK_translateY.o" "ab_rig_ARN.phl[644]";
connectAttr "Rig_L_LegPole_IK_translateX.o" "ab_rig_ARN.phl[645]";
connectAttr "Rig_R_Leg1_IK_rotateX.o" "ab_rig_ARN.phl[646]";
connectAttr "Rig_R_Leg1_IK_rotateY.o" "ab_rig_ARN.phl[647]";
connectAttr "Rig_R_Leg1_IK_rotateZ.o" "ab_rig_ARN.phl[648]";
connectAttr "Rig_R_Leg1_IK_translateZ.o" "ab_rig_ARN.phl[649]";
connectAttr "Rig_R_Leg1_IK_translateY.o" "ab_rig_ARN.phl[650]";
connectAttr "Rig_R_Leg1_IK_translateX.o" "ab_rig_ARN.phl[651]";
connectAttr "Rig_R_Leg2_IK_rotateX.o" "ab_rig_ARN.phl[652]";
connectAttr "Rig_R_Leg2_IK_rotateY.o" "ab_rig_ARN.phl[653]";
connectAttr "Rig_R_Leg2_IK_rotateZ.o" "ab_rig_ARN.phl[654]";
connectAttr "Rig_R_Leg3_IK_rotateX.o" "ab_rig_ARN.phl[655]";
connectAttr "Rig_R_Leg3_IK_rotateY.o" "ab_rig_ARN.phl[656]";
connectAttr "Rig_R_Leg3_IK_rotateZ.o" "ab_rig_ARN.phl[657]";
connectAttr "Rig_R_Leg4_IK_rotateX.o" "ab_rig_ARN.phl[658]";
connectAttr "Rig_R_Leg4_IK_rotateY.o" "ab_rig_ARN.phl[659]";
connectAttr "Rig_R_Leg4_IK_rotateZ.o" "ab_rig_ARN.phl[660]";
connectAttr "Rig_R_Leg5_IK_rotateX.o" "ab_rig_ARN.phl[661]";
connectAttr "Rig_R_Leg5_IK_rotateY.o" "ab_rig_ARN.phl[662]";
connectAttr "Rig_R_Leg5_IK_rotateZ.o" "ab_rig_ARN.phl[663]";
connectAttr "Rig_R_Leg6_IK_rotateX.o" "ab_rig_ARN.phl[664]";
connectAttr "Rig_R_Leg6_IK_rotateY.o" "ab_rig_ARN.phl[665]";
connectAttr "Rig_R_Leg6_IK_rotateZ.o" "ab_rig_ARN.phl[666]";
connectAttr "Rig_R_LegPole_IK_translateZ.o" "ab_rig_ARN.phl[667]";
connectAttr "Rig_R_LegPole_IK_translateY.o" "ab_rig_ARN.phl[668]";
connectAttr "Rig_R_LegPole_IK_translateX.o" "ab_rig_ARN.phl[669]";
connectAttr "Rig_L_FingerIndex1_rotateX.o" "ab_rig_ARN.phl[670]";
connectAttr "Rig_L_FingerIndex1_rotateY.o" "ab_rig_ARN.phl[671]";
connectAttr "Rig_L_FingerIndex1_rotateZ.o" "ab_rig_ARN.phl[672]";
connectAttr "Rig_L_FingerIndex2_rotateX.o" "ab_rig_ARN.phl[673]";
connectAttr "Rig_L_FingerIndex2_rotateY.o" "ab_rig_ARN.phl[674]";
connectAttr "Rig_L_FingerIndex2_rotateZ.o" "ab_rig_ARN.phl[675]";
connectAttr "Rig_L_FingerIndex3_rotateX.o" "ab_rig_ARN.phl[676]";
connectAttr "Rig_L_FingerIndex3_rotateY.o" "ab_rig_ARN.phl[677]";
connectAttr "Rig_L_FingerIndex3_rotateZ.o" "ab_rig_ARN.phl[678]";
connectAttr "Rig_L_FingerMiddle1_rotateX.o" "ab_rig_ARN.phl[679]";
connectAttr "Rig_L_FingerMiddle1_rotateY.o" "ab_rig_ARN.phl[680]";
connectAttr "Rig_L_FingerMiddle1_rotateZ.o" "ab_rig_ARN.phl[681]";
connectAttr "Rig_L_FingerMiddle2_rotateX.o" "ab_rig_ARN.phl[682]";
connectAttr "Rig_L_FingerMiddle2_rotateY.o" "ab_rig_ARN.phl[683]";
connectAttr "Rig_L_FingerMiddle2_rotateZ.o" "ab_rig_ARN.phl[684]";
connectAttr "Rig_L_FingerMiddle3_rotateX.o" "ab_rig_ARN.phl[685]";
connectAttr "Rig_L_FingerMiddle3_rotateY.o" "ab_rig_ARN.phl[686]";
connectAttr "Rig_L_FingerMiddle3_rotateZ.o" "ab_rig_ARN.phl[687]";
connectAttr "Rig_L_FingerRing1_rotateX.o" "ab_rig_ARN.phl[688]";
connectAttr "Rig_L_FingerRing1_rotateY.o" "ab_rig_ARN.phl[689]";
connectAttr "Rig_L_FingerRing1_rotateZ.o" "ab_rig_ARN.phl[690]";
connectAttr "Rig_L_FingerRing2_rotateX.o" "ab_rig_ARN.phl[691]";
connectAttr "Rig_L_FingerRing2_rotateY.o" "ab_rig_ARN.phl[692]";
connectAttr "Rig_L_FingerRing2_rotateZ.o" "ab_rig_ARN.phl[693]";
connectAttr "Rig_L_FingerRing3_rotateX.o" "ab_rig_ARN.phl[694]";
connectAttr "Rig_L_FingerRing3_rotateY.o" "ab_rig_ARN.phl[695]";
connectAttr "Rig_L_FingerRing3_rotateZ.o" "ab_rig_ARN.phl[696]";
connectAttr "Rig_L_FingerPinky1_rotateX.o" "ab_rig_ARN.phl[697]";
connectAttr "Rig_L_FingerPinky1_rotateY.o" "ab_rig_ARN.phl[698]";
connectAttr "Rig_L_FingerPinky1_rotateZ.o" "ab_rig_ARN.phl[699]";
connectAttr "Rig_L_FingerPinky2_rotateX.o" "ab_rig_ARN.phl[700]";
connectAttr "Rig_L_FingerPinky2_rotateY.o" "ab_rig_ARN.phl[701]";
connectAttr "Rig_L_FingerPinky2_rotateZ.o" "ab_rig_ARN.phl[702]";
connectAttr "Rig_L_FingerPinky3_rotateX.o" "ab_rig_ARN.phl[703]";
connectAttr "Rig_L_FingerPinky3_rotateY.o" "ab_rig_ARN.phl[704]";
connectAttr "Rig_L_FingerPinky3_rotateZ.o" "ab_rig_ARN.phl[705]";
connectAttr "Rig_L_FingerThumb1_rotateX.o" "ab_rig_ARN.phl[706]";
connectAttr "Rig_L_FingerThumb1_rotateY.o" "ab_rig_ARN.phl[707]";
connectAttr "Rig_L_FingerThumb1_rotateZ.o" "ab_rig_ARN.phl[708]";
connectAttr "Rig_L_FingerThumb2_rotateX.o" "ab_rig_ARN.phl[709]";
connectAttr "Rig_L_FingerThumb2_rotateY.o" "ab_rig_ARN.phl[710]";
connectAttr "Rig_L_FingerThumb2_rotateZ.o" "ab_rig_ARN.phl[711]";
connectAttr "Rig_L_FingerThumb3_rotateX.o" "ab_rig_ARN.phl[712]";
connectAttr "Rig_L_FingerThumb3_rotateY.o" "ab_rig_ARN.phl[713]";
connectAttr "Rig_L_FingerThumb3_rotateZ.o" "ab_rig_ARN.phl[714]";
connectAttr "Rig_L_Weapon1_rotateX.o" "ab_rig_ARN.phl[715]";
connectAttr "Rig_L_Weapon1_rotateY.o" "ab_rig_ARN.phl[716]";
connectAttr "Rig_L_Weapon1_rotateZ.o" "ab_rig_ARN.phl[717]";
connectAttr "Rig_L_Weapon1_translateZ.o" "ab_rig_ARN.phl[718]";
connectAttr "Rig_L_Weapon1_translateY.o" "ab_rig_ARN.phl[719]";
connectAttr "Rig_L_Weapon1_translateX.o" "ab_rig_ARN.phl[720]";
connectAttr "Rig_L_Weapon2_translateZ.o" "ab_rig_ARN.phl[721]";
connectAttr "Rig_L_Weapon2_translateY.o" "ab_rig_ARN.phl[722]";
connectAttr "Rig_L_Weapon2_translateX.o" "ab_rig_ARN.phl[723]";
connectAttr "Rig_L_Weapon2_rotateX.o" "ab_rig_ARN.phl[724]";
connectAttr "Rig_L_Weapon2_rotateY.o" "ab_rig_ARN.phl[725]";
connectAttr "Rig_L_Weapon2_rotateZ.o" "ab_rig_ARN.phl[726]";
connectAttr "Rig_R_Weapon1_rotateX.o" "ab_rig_ARN.phl[727]";
connectAttr "Rig_R_Weapon1_rotateY.o" "ab_rig_ARN.phl[728]";
connectAttr "Rig_R_Weapon1_rotateZ.o" "ab_rig_ARN.phl[729]";
connectAttr "Rig_R_Weapon1_translateZ.o" "ab_rig_ARN.phl[730]";
connectAttr "Rig_R_Weapon1_translateY.o" "ab_rig_ARN.phl[731]";
connectAttr "Rig_R_Weapon1_translateX.o" "ab_rig_ARN.phl[732]";
connectAttr "Rig_R_Weapon2_translateZ.o" "ab_rig_ARN.phl[733]";
connectAttr "Rig_R_Weapon2_translateY.o" "ab_rig_ARN.phl[734]";
connectAttr "Rig_R_Weapon2_translateX.o" "ab_rig_ARN.phl[735]";
connectAttr "Rig_R_Weapon2_rotateX.o" "ab_rig_ARN.phl[736]";
connectAttr "Rig_R_Weapon2_rotateY.o" "ab_rig_ARN.phl[737]";
connectAttr "Rig_R_Weapon2_rotateZ.o" "ab_rig_ARN.phl[738]";
connectAttr "Rig_R_FingerIndex1_rotateX.o" "ab_rig_ARN.phl[739]";
connectAttr "Rig_R_FingerIndex1_rotateY.o" "ab_rig_ARN.phl[740]";
connectAttr "Rig_R_FingerIndex1_rotateZ.o" "ab_rig_ARN.phl[741]";
connectAttr "Rig_R_FingerIndex2_rotateX.o" "ab_rig_ARN.phl[742]";
connectAttr "Rig_R_FingerIndex2_rotateY.o" "ab_rig_ARN.phl[743]";
connectAttr "Rig_R_FingerIndex2_rotateZ.o" "ab_rig_ARN.phl[744]";
connectAttr "Rig_R_FingerIndex3_rotateX.o" "ab_rig_ARN.phl[745]";
connectAttr "Rig_R_FingerIndex3_rotateY.o" "ab_rig_ARN.phl[746]";
connectAttr "Rig_R_FingerIndex3_rotateZ.o" "ab_rig_ARN.phl[747]";
connectAttr "Rig_R_FingerMiddle1_rotateX.o" "ab_rig_ARN.phl[748]";
connectAttr "Rig_R_FingerMiddle1_rotateY.o" "ab_rig_ARN.phl[749]";
connectAttr "Rig_R_FingerMiddle1_rotateZ.o" "ab_rig_ARN.phl[750]";
connectAttr "Rig_R_FingerMiddle2_rotateX.o" "ab_rig_ARN.phl[751]";
connectAttr "Rig_R_FingerMiddle2_rotateY.o" "ab_rig_ARN.phl[752]";
connectAttr "Rig_R_FingerMiddle2_rotateZ.o" "ab_rig_ARN.phl[753]";
connectAttr "Rig_R_FingerMiddle3_rotateX.o" "ab_rig_ARN.phl[754]";
connectAttr "Rig_R_FingerMiddle3_rotateY.o" "ab_rig_ARN.phl[755]";
connectAttr "Rig_R_FingerMiddle3_rotateZ.o" "ab_rig_ARN.phl[756]";
connectAttr "Rig_R_FingerRing1_rotateX.o" "ab_rig_ARN.phl[757]";
connectAttr "Rig_R_FingerRing1_rotateY.o" "ab_rig_ARN.phl[758]";
connectAttr "Rig_R_FingerRing1_rotateZ.o" "ab_rig_ARN.phl[759]";
connectAttr "Rig_R_FingerRing2_rotateX.o" "ab_rig_ARN.phl[760]";
connectAttr "Rig_R_FingerRing2_rotateY.o" "ab_rig_ARN.phl[761]";
connectAttr "Rig_R_FingerRing2_rotateZ.o" "ab_rig_ARN.phl[762]";
connectAttr "Rig_R_FingerRing3_rotateX.o" "ab_rig_ARN.phl[763]";
connectAttr "Rig_R_FingerRing3_rotateY.o" "ab_rig_ARN.phl[764]";
connectAttr "Rig_R_FingerRing3_rotateZ.o" "ab_rig_ARN.phl[765]";
connectAttr "Rig_R_FingerPinky1_rotateX.o" "ab_rig_ARN.phl[766]";
connectAttr "Rig_R_FingerPinky1_rotateY.o" "ab_rig_ARN.phl[767]";
connectAttr "Rig_R_FingerPinky1_rotateZ.o" "ab_rig_ARN.phl[768]";
connectAttr "Rig_R_FingerPinky2_rotateX.o" "ab_rig_ARN.phl[769]";
connectAttr "Rig_R_FingerPinky2_rotateY.o" "ab_rig_ARN.phl[770]";
connectAttr "Rig_R_FingerPinky2_rotateZ.o" "ab_rig_ARN.phl[771]";
connectAttr "Rig_R_FingerPinky3_rotateX.o" "ab_rig_ARN.phl[772]";
connectAttr "Rig_R_FingerPinky3_rotateY.o" "ab_rig_ARN.phl[773]";
connectAttr "Rig_R_FingerPinky3_rotateZ.o" "ab_rig_ARN.phl[774]";
connectAttr "Rig_R_FingerThumb1_rotateX.o" "ab_rig_ARN.phl[775]";
connectAttr "Rig_R_FingerThumb1_rotateY.o" "ab_rig_ARN.phl[776]";
connectAttr "Rig_R_FingerThumb1_rotateZ.o" "ab_rig_ARN.phl[777]";
connectAttr "Rig_R_FingerThumb2_rotateX.o" "ab_rig_ARN.phl[778]";
connectAttr "Rig_R_FingerThumb2_rotateY.o" "ab_rig_ARN.phl[779]";
connectAttr "Rig_R_FingerThumb2_rotateZ.o" "ab_rig_ARN.phl[780]";
connectAttr "Rig_R_FingerThumb3_rotateX.o" "ab_rig_ARN.phl[781]";
connectAttr "Rig_R_FingerThumb3_rotateY.o" "ab_rig_ARN.phl[782]";
connectAttr "Rig_R_FingerThumb3_rotateZ.o" "ab_rig_ARN.phl[783]";
connectAttr "pairBlend1.otx" "ab_rig_ARN.phl[784]";
connectAttr "pairBlend1.oty" "ab_rig_ARN.phl[785]";
connectAttr "pairBlend1.otz" "ab_rig_ARN.phl[786]";
connectAttr "pairBlend1.orx" "ab_rig_ARN.phl[787]";
connectAttr "pairBlend1.ory" "ab_rig_ARN.phl[788]";
connectAttr "pairBlend1.orz" "ab_rig_ARN.phl[789]";
connectAttr "ab_rig_ARN.phl[790]" "pairBlend1.w";
connectAttr "Rig_R_Sword_blendParent1.o" "ab_rig_ARN.phl[791]";
connectAttr "Rig_R_SwordTip_translateZ.o" "ab_rig_ARN.phl[792]";
connectAttr "ab_rig_ARN.phl[793]" "pairBlend1.itx2";
connectAttr "ab_rig_ARN.phl[794]" "pairBlend1.ity2";
connectAttr "ab_rig_ARN.phl[795]" "pairBlend1.itz2";
connectAttr "ab_rig_ARN.phl[796]" "pairBlend1.irx2";
connectAttr "ab_rig_ARN.phl[797]" "pairBlend1.iry2";
connectAttr "ab_rig_ARN.phl[798]" "pairBlend1.irz2";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Rig_R_Sword_parent_switch.o" "ab_rig_ARN.phl[250]";
connectAttr "Rig_C_BackWeapon1_rotateY.o" "ab_rig_ARN.phl[336]";
connectAttr "Rig_C_BackWeapon1_rotateX.o" "ab_rig_ARN.phl[337]";
connectAttr "Rig_C_BackWeapon1_rotateZ.o" "ab_rig_ARN.phl[338]";
connectAttr "Rig_L_Leg1_IK_parent_switch.o" "ab_rig_ARN.phl[440]";
connectAttr "Rig_R_Leg1_IK_parent_switch.o" "ab_rig_ARN.phl[468]";
connectAttr "Rig_L_eye_translateZ.o" "ab_rig_ARN.phl[526]";
connectAttr "Rig_L_eye_rotateX.o" "ab_rig_ARN.phl[527]";
connectAttr "Rig_L_eye_rotateY.o" "ab_rig_ARN.phl[528]";
connectAttr "Rig_L_eye_rotateZ.o" "ab_rig_ARN.phl[529]";
connectAttr "Rig_R_eye_translateZ.o" "ab_rig_ARN.phl[532]";
connectAttr "Rig_R_eye_rotateX.o" "ab_rig_ARN.phl[533]";
connectAttr "Rig_R_eye_rotateY.o" "ab_rig_ARN.phl[534]";
connectAttr "Rig_R_eye_rotateZ.o" "ab_rig_ARN.phl[535]";
connectAttr "Rig_C_root1_translateZ.o" "Rig_C_root1_translateZ1.i";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ab_rig_A_run.ma
