//Maya ASCII 2023 scene
//Name: ab_rig_A_walk.ma
//Last modified: Tue, Mar 28, 2023 12:15:18 PM
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
fileInfo "UUID" "5951D8F0-48BF-10B1-8310-9084F4D6C30A";
createNode transform -s -n "persp";
	rename -uid "5D7741EE-46C7-AAED-12C6-12B46C0EAC6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 136.61835760466099 40.179529816170891 470.26239732894607 ;
	setAttr ".r" -type "double3" 4.4616472704020369 -1063.7999999999047 -3.1050605229915045e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8588ED43-4707-BEFA-F25D-75AF34E408DD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 463.22107732939833;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D91221FA-4820-5E25-3374-BAA9CAC3873C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7284895892139458 1000.7965154626143 -35.350133105661556 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "766943DE-4E99-0A82-BFD2-80BCE88FDDFA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 929.9072928461735;
	setAttr ".ow" 591.51095298305268;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 6.7284895892139458 70.889222616440691 -35.350133105661556 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "30D3F542-4A52-8BC2-2765-1EB611EF0E08";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.92380616363975232 78.542049005930366 1001.9610170332405 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9251DC98-4E2C-A2EC-285A-968311545A0C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1006.5564150242841;
	setAttr ".ow" 534.8083080865598;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 61.179848660790611 -4.5953979910435976 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4CE7931F-4BF7-9FC4-04E8-64B0925D1827";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.98415333495 66.085858292479827 -17.010656250720245 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2CE7C90F-4CA9-B962-DB24-54B2E45B91F2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.98415333495;
	setAttr ".ow" 392.88928857504482;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 60.774576444429385 -8.8704223324927725 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F18E9769-4D59-0D3B-1368-EF81BD664B80";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "93BA8000-4061-F9E5-EC06-749E0AB798AE";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "09F765B4-4401-3CA5-C5B2-A3B429F56082";
createNode displayLayerManager -n "layerManager";
	rename -uid "42CFAD8A-44EE-37A8-4897-DA881B75EC8C";
createNode displayLayer -n "defaultLayer";
	rename -uid "4BB87F48-405E-A145-1921-FC81A6EB54B5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "45B3BA8F-4187-7B12-E10C-8F8049D311C2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8E4D3ECA-4855-8077-72A8-55ABDE3C5E3E";
	setAttr ".g" yes;
createNode reference -n "ab_rig_ARN";
	rename -uid "5E26085A-4C6C-8645-547C-1295DF87639A";
	setAttr -s 277 ".phl";
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
	setAttr ".phl[799]" 0;
	setAttr ".phl[800]" 0;
	setAttr ".phl[801]" 0;
	setAttr ".phl[802]" 0;
	setAttr ".phl[803]" 0;
	setAttr ".phl[804]" 0;
	setAttr ".phl[805]" 0;
	setAttr ".phl[806]" 0;
	setAttr ".phl[807]" 0;
	setAttr ".phl[808]" 0;
	setAttr ".phl[809]" 0;
	setAttr ".phl[810]" 0;
	setAttr ".phl[811]" 0;
	setAttr ".phl[812]" 0;
	setAttr ".phl[813]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_ARN"
		"ab_rig_ARN" 20
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword1_parentConstraint1" 
		"CTRL_R_swordW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_C_BackWeapon2_EndW2" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK" 
		"parent_switch" " -k 1"
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword.parent_switch" 
		"ab_rig_ARN.placeHolderList[257]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_BackWeapon1_offset|ab_rig_A:Rig_C_BackWeapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[351]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_BackWeapon1_offset|ab_rig_A:Rig_C_BackWeapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[352]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_BackWeapon1_offset|ab_rig_A:Rig_C_BackWeapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[353]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[455]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[483]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateZ" 
		"ab_rig_ARN.placeHolderList[541]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateX" 
		"ab_rig_ARN.placeHolderList[542]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateY" 
		"ab_rig_ARN.placeHolderList[543]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateZ" 
		"ab_rig_ARN.placeHolderList[544]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateZ" 
		"ab_rig_ARN.placeHolderList[547]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateX" 
		"ab_rig_ARN.placeHolderList[548]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateY" 
		"ab_rig_ARN.placeHolderList[549]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateZ" 
		"ab_rig_ARN.placeHolderList[550]" ""
		"ab_rig_ARN" 1398
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
		"rotate" " -type \"double3\" 5.04655009736238025 4.3345281525874082 2.19736120784088529"
		
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
		"rotate" " -type \"double3\" 10.10117523694039043 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"translate" " -type \"double3\" 0 -30.65927035642021536 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"rotate" " -type \"double3\" -0.60442784082611989 0.48686580656326517 3.12530994082271807"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"translate" " -type \"double3\" 0 -6.75722106597899952 7.43008778587791419"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"rotate" " -type \"double3\" -16.9677167527764432 -1.896312894147464e-07 -3.9787615413991137e-08"
		
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
		"rotate" " -type \"double3\" -38.67051372197924763 8.99041219387425095 -1.2434351359158442"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"translate" " -type \"double3\" 0 36.00710320603396042 4.3552733441920566e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"rotate" " -type \"double3\" 56.58713518122701913 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"translate" " -type \"double3\" 0 30.65926207204695686 -6.564887630844396e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"rotate" " -type \"double3\" 7.24155093338330946 2.82897131160787518 -2.38538283353446712"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"translate" " -type \"double3\" 0 6.75721163909731626 -7.43007832233602272"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"rotate" " -type \"double3\" 10.97667591209814653 5.7480349645048037e-06 -1.7464726187961675e-06"
		
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
		"rotate" " -type \"double3\" -0.24685279111847658 14.44574871364255486 -8.63206577953903853"
		
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
		"rotate" " -type \"double3\" 9.60007609950611318 -5.89224365406598949 -5.74090899410294053"
		
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
		"rotate" " -type \"double3\" -12.32084208383720636 -4.43319391471944968 1.0366152023064388e-08"
		
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
		"rotate" " -type \"double3\" -1.88906008050209695 -10.74078520060582775 0"
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK" 
		"rotate" " -type \"double3\" -16.96771642146276449 0 0"
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
		"rotate" " -type \"double3\" 10.97667598925395716 0 0"
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
		"rotate" " -type \"double3\" 0 0 -15.1162595724123765"
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
		"rotate" " -type \"double3\" 0 0 -2.63598660200701662"
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
		"rotate" " -type \"double3\" 0 0 -19.46990676218128513"
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
		"rotate" " -type \"double3\" 0 0 -20.97254634766261105"
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
		"rotate" " -type \"double3\" 0 0 -12.15147556890850389"
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
		"rotate" " -type \"double3\" 0 0 -23.52228591048055861"
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
		"rotate" " -type \"double3\" 0 0 -22.44718928183495166"
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
		"rotate" " -type \"double3\" 0 0 -20.84104405766294121"
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
		"rotate" " -type \"double3\" 0 0 -23.57852973966920018"
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
		"rotate" " -type \"double3\" 0 0 -22.25106259661680141"
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
		"rotate" " -type \"double3\" 0 0 -15.78623750439543727"
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
		"rotate" " -type \"double3\" 0 0 -25.99417088095259842"
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
		"rotate" " -type \"double3\" 0 0 -4.18816874834019703"
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
		"rotate" " -type \"double3\" 0 0 -8.68021350780572654"
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
		"rotate" " -type \"double3\" 0 0 -6.31158192697182852"
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
		"rotate" " -type \"double3\" 0 0 -22.88417594628623775"
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
		"rotate" " -type \"double3\" 0 0 -9.48284146191735466"
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
		"rotate" " -type \"double3\" 0 0 -25.42359589581341694"
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
		"rotate" " -type \"double3\" 0 0 -26.92623548129473576"
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
		"rotate" " -type \"double3\" 0 0 -18.34006692873571609"
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
		"rotate" " -type \"double3\" 0 0 -31.2247197899749267"
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
		"rotate" " -type \"double3\" 0 0 -28.75306742154156581"
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
		"rotate" " -type \"double3\" 0 0 -27.08514219980694548"
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
		"rotate" " -type \"double3\" 0 0 -31.3464461341182492"
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
		"rotate" " -type \"double3\" 0 0 -28.43965395644404381"
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
		"rotate" " -type \"double3\" 0 0 -23.29744961709084805"
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
		"rotate" " -type \"double3\" 0 0 -33.76208935624274687"
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
		"rotate" " -type \"double3\" 0 0 -6.93000612381013248"
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
		"rotate" " -type \"double3\" 0 0 -17.12153145645544328"
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
		"rotate" " -type \"double3\" 0 0 -15.41775006198258424"
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
		"ab_rig_ARN.placeHolderList[551]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateX" 
		"ab_rig_ARN.placeHolderList[552]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateY" 
		"ab_rig_ARN.placeHolderList[553]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateZ" 
		"ab_rig_ARN.placeHolderList[554]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateY" 
		"ab_rig_ARN.placeHolderList[555]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateX" 
		"ab_rig_ARN.placeHolderList[556]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateX" 
		"ab_rig_ARN.placeHolderList[557]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateY" 
		"ab_rig_ARN.placeHolderList[558]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateZ" 
		"ab_rig_ARN.placeHolderList[559]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateZ" 
		"ab_rig_ARN.placeHolderList[560]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateY" 
		"ab_rig_ARN.placeHolderList[561]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateX" 
		"ab_rig_ARN.placeHolderList[562]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateZ" 
		"ab_rig_ARN.placeHolderList[563]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateY" 
		"ab_rig_ARN.placeHolderList[564]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateX" 
		"ab_rig_ARN.placeHolderList[565]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateZ" 
		"ab_rig_ARN.placeHolderList[566]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateX" 
		"ab_rig_ARN.placeHolderList[567]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateY" 
		"ab_rig_ARN.placeHolderList[568]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateY" 
		"ab_rig_ARN.placeHolderList[569]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateZ" 
		"ab_rig_ARN.placeHolderList[570]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateX" 
		"ab_rig_ARN.placeHolderList[571]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.parent_swaitch" 
		"ab_rig_ARN.placeHolderList[572]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateY" 
		"ab_rig_ARN.placeHolderList[573]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateZ" 
		"ab_rig_ARN.placeHolderList[574]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateX" 
		"ab_rig_ARN.placeHolderList[575]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateY" 
		"ab_rig_ARN.placeHolderList[576]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateZ" 
		"ab_rig_ARN.placeHolderList[577]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateX" 
		"ab_rig_ARN.placeHolderList[578]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateX" 
		"ab_rig_ARN.placeHolderList[579]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateY" 
		"ab_rig_ARN.placeHolderList[580]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateZ" 
		"ab_rig_ARN.placeHolderList[581]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateX" 
		"ab_rig_ARN.placeHolderList[582]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateY" 
		"ab_rig_ARN.placeHolderList[583]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateZ" 
		"ab_rig_ARN.placeHolderList[584]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateX" 
		"ab_rig_ARN.placeHolderList[585]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateY" 
		"ab_rig_ARN.placeHolderList[586]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateZ" 
		"ab_rig_ARN.placeHolderList[587]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateX" 
		"ab_rig_ARN.placeHolderList[588]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateY" 
		"ab_rig_ARN.placeHolderList[589]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateZ" 
		"ab_rig_ARN.placeHolderList[590]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateX" 
		"ab_rig_ARN.placeHolderList[591]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateY" 
		"ab_rig_ARN.placeHolderList[592]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateZ" 
		"ab_rig_ARN.placeHolderList[593]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.parent_switch" 
		"ab_rig_ARN.placeHolderList[594]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateX" 
		"ab_rig_ARN.placeHolderList[595]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateY" 
		"ab_rig_ARN.placeHolderList[596]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateZ" 
		"ab_rig_ARN.placeHolderList[597]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.L_Arm_FKIK" 
		"ab_rig_ARN.placeHolderList[598]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.R_Arm_FKIK" 
		"ab_rig_ARN.placeHolderList[599]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.L_Leg_FKIK" 
		"ab_rig_ARN.placeHolderList[600]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.R_Leg_FKIK" 
		"ab_rig_ARN.placeHolderList[601]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.sword" 
		"ab_rig_ARN.placeHolderList[602]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.tail" 
		"ab_rig_ARN.placeHolderList[603]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye.translateY" 
		"ab_rig_ARN.placeHolderList[604]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye.translateX" 
		"ab_rig_ARN.placeHolderList[605]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateY" 
		"ab_rig_ARN.placeHolderList[606]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateX" 
		"ab_rig_ARN.placeHolderList[607]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateY" 
		"ab_rig_ARN.placeHolderList[608]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateX" 
		"ab_rig_ARN.placeHolderList[609]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.parent_switch" 
		"ab_rig_ARN.placeHolderList[610]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateX" 
		"ab_rig_ARN.placeHolderList[611]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateY" 
		"ab_rig_ARN.placeHolderList[612]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateZ" 
		"ab_rig_ARN.placeHolderList[613]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[614]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[615]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[616]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[617]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[618]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[619]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[620]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[621]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[622]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.parent_switch" 
		"ab_rig_ARN.placeHolderList[623]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateX" 
		"ab_rig_ARN.placeHolderList[624]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateY" 
		"ab_rig_ARN.placeHolderList[625]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateZ" 
		"ab_rig_ARN.placeHolderList[626]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[627]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[628]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[629]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[630]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[631]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[632]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[633]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[634]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[635]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Weapon_set_speace|ab_rig_A:Rig_C_Weapon_set_offset|ab_rig_A:Rig_C_Weapon_set.rotateZ" 
		"ab_rig_ARN.placeHolderList[636]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[637]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[638]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[639]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[640]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateY" 
		"ab_rig_ARN.placeHolderList[641]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateX" 
		"ab_rig_ARN.placeHolderList[642]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[643]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[644]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[645]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[646]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[647]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[648]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[649]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[650]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[651]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[652]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[653]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[654]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[655]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[656]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[657]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[658]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[659]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[660]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[661]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[662]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[663]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[664]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateY" 
		"ab_rig_ARN.placeHolderList[665]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateX" 
		"ab_rig_ARN.placeHolderList[666]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[667]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[668]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[669]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[670]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[671]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[672]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[673]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[674]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[675]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[676]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[677]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[678]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[679]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[680]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[681]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[682]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[683]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[684]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateX" 
		"ab_rig_ARN.placeHolderList[685]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateY" 
		"ab_rig_ARN.placeHolderList[686]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateZ" 
		"ab_rig_ARN.placeHolderList[687]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateX" 
		"ab_rig_ARN.placeHolderList[688]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateY" 
		"ab_rig_ARN.placeHolderList[689]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateZ" 
		"ab_rig_ARN.placeHolderList[690]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateX" 
		"ab_rig_ARN.placeHolderList[691]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateY" 
		"ab_rig_ARN.placeHolderList[692]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateZ" 
		"ab_rig_ARN.placeHolderList[693]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateX" 
		"ab_rig_ARN.placeHolderList[694]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateY" 
		"ab_rig_ARN.placeHolderList[695]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateZ" 
		"ab_rig_ARN.placeHolderList[696]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateX" 
		"ab_rig_ARN.placeHolderList[697]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateY" 
		"ab_rig_ARN.placeHolderList[698]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateZ" 
		"ab_rig_ARN.placeHolderList[699]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateX" 
		"ab_rig_ARN.placeHolderList[700]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateY" 
		"ab_rig_ARN.placeHolderList[701]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateZ" 
		"ab_rig_ARN.placeHolderList[702]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateX" 
		"ab_rig_ARN.placeHolderList[703]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateY" 
		"ab_rig_ARN.placeHolderList[704]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateZ" 
		"ab_rig_ARN.placeHolderList[705]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateX" 
		"ab_rig_ARN.placeHolderList[706]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateY" 
		"ab_rig_ARN.placeHolderList[707]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateZ" 
		"ab_rig_ARN.placeHolderList[708]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateX" 
		"ab_rig_ARN.placeHolderList[709]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateY" 
		"ab_rig_ARN.placeHolderList[710]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateZ" 
		"ab_rig_ARN.placeHolderList[711]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateX" 
		"ab_rig_ARN.placeHolderList[712]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateY" 
		"ab_rig_ARN.placeHolderList[713]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateZ" 
		"ab_rig_ARN.placeHolderList[714]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateX" 
		"ab_rig_ARN.placeHolderList[715]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateY" 
		"ab_rig_ARN.placeHolderList[716]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateZ" 
		"ab_rig_ARN.placeHolderList[717]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateX" 
		"ab_rig_ARN.placeHolderList[718]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateY" 
		"ab_rig_ARN.placeHolderList[719]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateZ" 
		"ab_rig_ARN.placeHolderList[720]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateX" 
		"ab_rig_ARN.placeHolderList[721]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateY" 
		"ab_rig_ARN.placeHolderList[722]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateZ" 
		"ab_rig_ARN.placeHolderList[723]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateX" 
		"ab_rig_ARN.placeHolderList[724]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateY" 
		"ab_rig_ARN.placeHolderList[725]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateZ" 
		"ab_rig_ARN.placeHolderList[726]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateX" 
		"ab_rig_ARN.placeHolderList[727]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateY" 
		"ab_rig_ARN.placeHolderList[728]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateZ" 
		"ab_rig_ARN.placeHolderList[729]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[730]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[731]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[732]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateZ" 
		"ab_rig_ARN.placeHolderList[733]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateY" 
		"ab_rig_ARN.placeHolderList[734]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateX" 
		"ab_rig_ARN.placeHolderList[735]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateZ" 
		"ab_rig_ARN.placeHolderList[736]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateY" 
		"ab_rig_ARN.placeHolderList[737]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateX" 
		"ab_rig_ARN.placeHolderList[738]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateX" 
		"ab_rig_ARN.placeHolderList[739]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateY" 
		"ab_rig_ARN.placeHolderList[740]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateZ" 
		"ab_rig_ARN.placeHolderList[741]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[742]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[743]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[744]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateZ" 
		"ab_rig_ARN.placeHolderList[745]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateY" 
		"ab_rig_ARN.placeHolderList[746]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateX" 
		"ab_rig_ARN.placeHolderList[747]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateZ" 
		"ab_rig_ARN.placeHolderList[748]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateY" 
		"ab_rig_ARN.placeHolderList[749]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateX" 
		"ab_rig_ARN.placeHolderList[750]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateX" 
		"ab_rig_ARN.placeHolderList[751]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateY" 
		"ab_rig_ARN.placeHolderList[752]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateZ" 
		"ab_rig_ARN.placeHolderList[753]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateX" 
		"ab_rig_ARN.placeHolderList[754]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateY" 
		"ab_rig_ARN.placeHolderList[755]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateZ" 
		"ab_rig_ARN.placeHolderList[756]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateX" 
		"ab_rig_ARN.placeHolderList[757]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateY" 
		"ab_rig_ARN.placeHolderList[758]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateZ" 
		"ab_rig_ARN.placeHolderList[759]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateX" 
		"ab_rig_ARN.placeHolderList[760]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateY" 
		"ab_rig_ARN.placeHolderList[761]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateZ" 
		"ab_rig_ARN.placeHolderList[762]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateX" 
		"ab_rig_ARN.placeHolderList[763]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateY" 
		"ab_rig_ARN.placeHolderList[764]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateZ" 
		"ab_rig_ARN.placeHolderList[765]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateX" 
		"ab_rig_ARN.placeHolderList[766]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateY" 
		"ab_rig_ARN.placeHolderList[767]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateZ" 
		"ab_rig_ARN.placeHolderList[768]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateX" 
		"ab_rig_ARN.placeHolderList[769]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateY" 
		"ab_rig_ARN.placeHolderList[770]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateZ" 
		"ab_rig_ARN.placeHolderList[771]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateX" 
		"ab_rig_ARN.placeHolderList[772]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateY" 
		"ab_rig_ARN.placeHolderList[773]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateZ" 
		"ab_rig_ARN.placeHolderList[774]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateX" 
		"ab_rig_ARN.placeHolderList[775]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateY" 
		"ab_rig_ARN.placeHolderList[776]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateZ" 
		"ab_rig_ARN.placeHolderList[777]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateX" 
		"ab_rig_ARN.placeHolderList[778]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateY" 
		"ab_rig_ARN.placeHolderList[779]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateZ" 
		"ab_rig_ARN.placeHolderList[780]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateX" 
		"ab_rig_ARN.placeHolderList[781]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateY" 
		"ab_rig_ARN.placeHolderList[782]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateZ" 
		"ab_rig_ARN.placeHolderList[783]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateX" 
		"ab_rig_ARN.placeHolderList[784]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateY" 
		"ab_rig_ARN.placeHolderList[785]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateZ" 
		"ab_rig_ARN.placeHolderList[786]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateX" 
		"ab_rig_ARN.placeHolderList[787]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateY" 
		"ab_rig_ARN.placeHolderList[788]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateZ" 
		"ab_rig_ARN.placeHolderList[789]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateX" 
		"ab_rig_ARN.placeHolderList[790]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateY" 
		"ab_rig_ARN.placeHolderList[791]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateZ" 
		"ab_rig_ARN.placeHolderList[792]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateX" 
		"ab_rig_ARN.placeHolderList[793]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateY" 
		"ab_rig_ARN.placeHolderList[794]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateZ" 
		"ab_rig_ARN.placeHolderList[795]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateX" 
		"ab_rig_ARN.placeHolderList[796]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateY" 
		"ab_rig_ARN.placeHolderList[797]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateZ" 
		"ab_rig_ARN.placeHolderList[798]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateX" 
		"ab_rig_ARN.placeHolderList[799]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateY" 
		"ab_rig_ARN.placeHolderList[800]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateZ" 
		"ab_rig_ARN.placeHolderList[801]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateX" 
		"ab_rig_ARN.placeHolderList[802]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateY" 
		"ab_rig_ARN.placeHolderList[803]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateZ" 
		"ab_rig_ARN.placeHolderList[804]" ""
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.blendParent1" 
		"ab_rig_ARN.placeHolderList[805]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.blendParent1" 
		"ab_rig_ARN.placeHolderList[806]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_SwordTip_offset|ab_rig_A:Rig_R_SwordTip.translateZ" 
		"ab_rig_ARN.placeHolderList[807]" ""
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateX" 
		"ab_rig_ARN.placeHolderList[808]" "ab_rig_A:Rig_R_Sword.tx"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateY" 
		"ab_rig_ARN.placeHolderList[809]" "ab_rig_A:Rig_R_Sword.ty"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateZ" 
		"ab_rig_ARN.placeHolderList[810]" "ab_rig_A:Rig_R_Sword.tz"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateX" 
		"ab_rig_ARN.placeHolderList[811]" "ab_rig_A:Rig_R_Sword.rx"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateY" 
		"ab_rig_ARN.placeHolderList[812]" "ab_rig_A:Rig_R_Sword.ry"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateZ" 
		"ab_rig_ARN.placeHolderList[813]" "ab_rig_A:Rig_R_Sword.rz";
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
	rename -uid "5B926D6F-46F5-13D7-83B8-35BD7D35801C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig_C_root1_rotateX";
	rename -uid "C1D88EE5-4A23-F189-A95A-5FB8D4ADED85";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig_C_root1_rotateY";
	rename -uid "D346B20B-49ED-3DB6-0FEA-BD9A166C7846";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig_C_root1_translateZ";
	rename -uid "C6BCD4F9-42EC-5B25-E7C8-9B9237832C92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 120 32 0;
	setAttr -s 3 ".kit[2]"  18;
	setAttr -s 3 ".kot[1:2]"  2 18;
	setAttr -s 3 ".kix[0:2]"  1 0.0083330439965510188 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.99996527958612225 0;
	setAttr -s 3 ".kox[0:2]"  0.0083330439965510188 0.00055555546982169327 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99996527958612225 -0.99999984567904798 
		0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
	setAttr ".sr" yes;
createNode animCurveTL -n "Rig_C_root1_translateY";
	rename -uid "2E39E928-4992-68B2-13AA-D7880AAAD3EF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig_C_root1_translateX";
	rename -uid "DAFE7D35-4A96-1400-7E04-4D91CE4304D0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig_C_root2_rotateZ";
	rename -uid "6BCB5BE9-40D1-F870-5A77-AD81DC30DF77";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 0.5 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.56666666666666665 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root2_rotateX";
	rename -uid "0852451B-4DBD-87B7-7D8E-9BBF6A4AFF65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 0.5 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.56666666666666665 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root2_rotateY";
	rename -uid "955CAA53-46AB-DA58-E03B-8F98CA419753";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 0.5 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.56666666666666665 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root2_translateZ";
	rename -uid "C8238C3E-4966-B4B2-6B2C-D19AF20129AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 32 0;
	setAttr -s 3 ".kix[0:2]"  0 0.5 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.56666666666666665 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root2_translateY";
	rename -uid "BC970552-4311-A75D-B1A5-F7ADD741F817";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 0.5 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.56666666666666665 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root2_translateX";
	rename -uid "EA197827-4542-2971-07A3-449EC531F894";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 0.5 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.56666666666666665 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateZ";
	rename -uid "663DB476-4C24-2C97-1D49-2BB26B5C5F30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateX";
	rename -uid "E177BF4E-4CEA-26DC-7C15-0FB8072E1CEA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.5704298814688511 16 2.5704298814688511
		 32 2.5704298814688511;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateY";
	rename -uid "90525F61-49D9-926C-3716-53BCEA67483F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateZ";
	rename -uid "1F8D90C4-4AB2-4D12-B165-E78A865DE5F7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateY";
	rename -uid "000FC591-4689-08F5-706D-83A0B8FBC6C0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.14243695828403935 3 -0.76170974682572323
		 5 -2.1228867418480042 6 -2.5463770839181601 8 -2.195567535861358 11 -0.16772309107346128
		 13 0.33232830138404046 16 0.14243695828403935 19 -0.76170974682572323 21 -2.1228867418480042
		 22 -2.5463770839181601 24 -2.195567535861358 27 -0.16772309107346128 29 0.33232830138404046
		 32 0.14243695828403935;
	setAttr -s 15 ".kix[0:14]"  0.1604156678970225 0.060664018895783142 
		0.055945095535359993 0.80891488824101832 0.069896271017102204 0.065788154588177453 
		0.62580422821079751 0.1604156678970225 0.060664018895783142 0.055945095535359979 
		0.80891488824101854 0.069896271017102246 0.065788154588177439 0.62580422821079751 
		0.1604156678970225;
	setAttr -s 15 ".kiy[0:14]"  -0.98704954966463176 -0.99815824237012252 
		-0.9984338467247289 -0.58792576366580573 0.99755426483871235 0.99783361274106319 
		0.77998017151302512 -0.98704954966463176 -0.99815824237012252 -0.9984338467247289 
		-0.5879257636658054 0.99755426483871235 0.99783361274106319 0.77998017151302512 -0.98704954966463176;
	setAttr -s 15 ".kox[0:14]"  0.1604156678970225 0.060664018895783142 
		0.055945095535359993 0.80891488824101832 0.069896271017102204 0.065788154588177453 
		0.62580422821079751 0.1604156678970225 0.060664018895783142 0.044172225989472645 
		0.80891488824101854 0.069896271017102246 0.065788154588177439 0.47334536464929405 
		0.1604156678970225;
	setAttr -s 15 ".koy[0:14]"  -0.98704954966463176 -0.99815824237012252 
		-0.9984338467247289 -0.58792576366580573 0.99755426483871235 0.99783361274106319 
		0.77998017151302512 -0.98704954966463176 -0.99815824237012252 -0.99902393087009433 
		-0.5879257636658054 0.99755426483871235 0.99783361274106319 0.88087692997661537 -0.98704954966463176;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateX";
	rename -uid "48A040CF-49BF-8A5A-D6F4-979AB0517AE3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.64489354923818376 3 0.40597872358032322
		 7 -0.27874278833921334 11 -0.58303784705826123 16 -0.64489354923818376 19 -0.40597872358032322
		 21 -0.03548595205558789 23 0.27874278833921334 27 0.58303784705826123 32 0.64489354923818376;
	setAttr -s 10 ".kix[0:9]"  0.16666666666666669 0.21539155092281034 
		0.26033116518732147 0.69041919839899046 0.16666666666666674 0.21953855239319822 0.16826609386413174 
		0.30766620630015251 0.69041919839899046 0.16666666666666669;
	setAttr -s 10 ".kiy[0:9]"  -0.058540418439266384 -0.97652776703536004 
		-0.96551938583966901 -0.72340951782658736 0.058540418439266384 0.97560382533746715 
		0.98574160998494287 0.95149435389857784 0.72340951782658736 -0.058540418439266384;
	setAttr -s 10 ".kox[0:9]"  0.033333333333333361 0.21539155092281034 
		0.26033116518732147 0.69041919839899013 0.033333333333333548 0.21953855239319822 
		0.16826609386413172 0.30766620630015251 0.69041919839899035 0.033333333333333361;
	setAttr -s 10 ".koy[0:9]"  -0.011708083687853144 -0.97652776703536004 
		-0.96551938583966901 -0.72340951782658758 0.011708083687853144 0.97560382533746715 
		0.98574160998494287 0.95149435389857784 0.72340951782658736 -0.011708083687853144;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateY";
	rename -uid "D01EA167-40A7-BF27-F17A-DF8350C9075D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 2.5168873844200301 10 1.7326780020615324
		 16 -1 22 -2.5168873844200301 26 -1.7326780020615324 32 1;
	setAttr -s 7 ".kix[0:6]"  0.98324024181430525 0.99926495401644944 
		0.98346487949966177 0.98324024181430525 0.99926495401644944 0.98346487949966177 0.98324024181430525;
	setAttr -s 7 ".kiy[0:6]"  0.18231463703429474 0.038334731960757013 
		-0.18109895303594539 -0.18231463703429474 -0.038334731960757006 0.18109895303594536 
		0.18231463703429474;
	setAttr -s 7 ".kox[0:6]"  0.98324024181430525 0.99926495401644944 
		0.98346487949966177 0.98324024181430525 0.99926495401644944 0.98346487949966177 0.98324024181430525;
	setAttr -s 7 ".koy[0:6]"  0.18231463703429474 0.038334731960757013 
		-0.18109895303594539 -0.18231463703429474 -0.038334731960757006 0.18109895303594536 
		0.18231463703429474;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateZ";
	rename -uid "1914E653-4B93-C45F-1090-77AA7EE1D211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -4.1384501134238292 3 -2.6852903202997216
		 6 0.4474751857174834 8 -0.059140187503879067 11 2.7909120804975158 13 4.1384501134238292
		 16 4.1384501134238292 19 2.6852903202997216 22 -0.4474751857174834 24 0.059140187503879067
		 27 -2.7909120804975158 29 -4.1384501134238292 32 -4.1384501134238292;
	setAttr -s 13 ".kix[0:12]"  0.99205504041846115 0.89568075844466866 
		0.96420297722629622 0.97118362279613113 0.93898486143093274 0.99018971457014049 0.99205504041846115 
		0.89568075844466866 0.96420297722629622 0.97118362279613113 0.93898486143093274 0.99018971457014049 
		0.99205504041846115;
	setAttr -s 13 ".kiy[0:12]"  0.12580459761203319 0.44469762642944599 
		0.26516526678271179 0.23833247955866607 0.34395847133561352 0.13972948564817589 -0.12580459761203319 
		-0.44469762642944599 -0.26516526678271163 -0.23833247955866593 -0.34395847133561352 
		-0.13972948564817594 0.12580459761203319;
	setAttr -s 13 ".kox[0:12]"  0.99205504041846115 0.89568075844466866 
		0.96420297722629622 0.97118362279613113 0.93898486143093274 0.99018971457014049 0.99205504041846115 
		0.89568075844466866 0.96420297722629622 0.97118362279613113 0.93898486143093274 0.99018971457014049 
		1;
	setAttr -s 13 ".koy[0:12]"  0.12580459761203319 0.44469762642944599 
		0.26516526678271179 0.23833247955866607 0.34395847133561352 0.13972948564817589 -0.12580459761203319 
		-0.44469762642944599 -0.26516526678271163 -0.23833247955866593 -0.34395847133561352 
		-0.13972948564817594 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateX";
	rename -uid "B7AAE135-482D-7F39-BD50-D59ECD342F79";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.44464658110492983 3 -2.3962333917824941
		 6 -2.2124056916163006 10 1.6242370474259515 14 0.88690052377724571 16 -0.44464658110492983
		 19 -2.3962333917824941 22 -2.2124056916163006 26 1.6242370474259515 30 0.88690052377724571
		 32 -0.44464658110492983;
	setAttr -s 11 ".kix[0:10]"  0.066666666666666763 0.98830924137791076 
		0.95763353695125775 0.98800799338310352 0.96707899265111363 0.066666666666666763 
		0.98830924137791076 0.95763353695125775 0.98800799338310352 0.96707899265111363 0.066666666666666763;
	setAttr -s 11 ".kiy[0:10]"  -0.026573100809406655 -0.1524625967475903 
		0.28798959860769946 0.15440273641063859 -0.25447636820126812 -0.026573100809406655 
		-0.15246259674759036 0.28798959860769935 0.15440273641063859 -0.25447636820126812 
		-0.026573100809406655;
	setAttr -s 11 ".kox[0:10]"  0.099999999999999978 0.98830924137791076 
		0.95763353695125775 0.98800799338310352 0.96707899265111363 0.099999999999999978 
		0.98830924137791076 0.95763353695125775 0.98800799338310352 0.96707899265111363 0.099999999999999978;
	setAttr -s 11 ".koy[0:10]"  -0.039859651214109976 -0.1524625967475903 
		0.28798959860769946 0.15440273641063862 -0.25447636820126773 -0.039859651214109976 
		-0.15246259674759036 0.28798959860769935 0.15440273641063862 -0.25447636820126773 
		-0.039859651214109976;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Tail1_parent_swaitch";
	rename -uid "02C51FFA-4AD1-EF96-C4EC-71B06FA0F3DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 8 1 32 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateY";
	rename -uid "0FD0EACD-40C8-6C0B-5D1D-35A1207312D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 9.3980518961053026 16 -11.230179556574111
		 27 4.4757092056197099 32 9.3980518961053026;
	setAttr -s 4 ".kix[0:3]"  0.99552060638235862 0.98634514243703331 
		0.74822586956436066 0.99552060638235862;
	setAttr -s 4 ".kiy[0:3]"  0.094544816188414288 0.1646914083699218 
		0.66344408062372262 0.094544816188414288;
	setAttr -s 4 ".kox[0:3]"  0.99552060638235862 0.98634513731660534 
		0.74822586956436044 0.99552060638235862;
	setAttr -s 4 ".koy[0:3]"  0.094544816188414288 0.16469143903642011 
		0.66344408062372273 0.094544816188414288;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateZ";
	rename -uid "A36A9173-4BA7-06A4-2042-DBA011FB011F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0641948196608628e-08 32 1.0641948196608628e-08;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateX";
	rename -uid "E9CEBCFF-4AEF-169B-DFC1-BC81BE3CBBE1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -29.939092219148989 2 -33.015816315441192
		 4 -38.342004734969883 7 -46.148351977680058 10 -45.41304117701528 14 -30.066470220846362
		 18 -33.015816315441192 20 -38.342004734969883 23 -46.148351977680058 26 -45.41304117701528
		 30 -30.066470220846362 32 -29.939092219148989;
	setAttr -s 12 ".kix[0:11]"  0.066666666666667096 0.68877521509611317 
		0.53133891175934489 0.85101963608421383 0.63926530436348927 0.84795743346098074 0.68877521509611361 
		0.53133891175934489 0.85101963608421394 0.63926530436348905 0.84795743346098074 0.066666666666667096;
	setAttr -s 12 ".kiy[0:11]"  -0.031482692366980425 -0.72497496720183596 
		-0.8471593479684888 -0.52513386769384063 0.76898626166990502 0.53006432726440533 
		-0.72497496720183541 -0.8471593479684888 -0.52513386769384052 0.76898626166990502 
		0.53006432726440533 -0.031482692366980425;
	setAttr -s 12 ".kox[0:11]"  0.066666666666667096 0.68877521509611428 
		0.53133891175934445 0.85101963608421383 0.63926530436348927 0.84795743346098063 0.68877521509611428 
		0.53133891175934445 0.85101963608421394 0.63926530436348905 0.84795743346097974 0.066666666666667096;
	setAttr -s 12 ".koy[0:11]"  -0.031482692366980092 -0.72497496720183485 
		-0.84715934796848913 -0.52513386769384063 0.76898626166990502 0.53006432726440533 
		-0.72497496720183485 -0.84715934796848913 -0.52513386769384052 0.76898626166990502 
		0.53006432726440655 -0.031482692366980092;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateY";
	rename -uid "00A82496-4F22-9FBB-7764-AE9660F86583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2378546028098549 5 4.6990259480526513
		 21 -5.6150897782870555 32 2.2378546028098549;
	setAttr -s 4 ".kix[0:3]"  0.91418425947940318 0.99887448507183296 
		0.99653318177395045 0.91418425947940318;
	setAttr -s 4 ".kiy[0:3]"  0.4052988276816194 0.047431667401438796 
		0.083196259672454545 0.4052988276816194;
	setAttr -s 4 ".kox[0:3]"  0.91418425947940318 0.99887448507183296 
		0.99653318045376538 0.91418425947940318;
	setAttr -s 4 ".koy[0:3]"  0.40529882768161962 0.047431667401438796 
		0.083196275485763541 0.40529882768161962;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateZ";
	rename -uid "AB9C3CD7-4B07-3E3B-0090-ECB5AC888392";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateX";
	rename -uid "13522CC0-411D-D867-0B46-F6B5C8D85481";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 4.4663272684862223 2 18.709353423492825
		 6 12.810661234303158 8 2.1582843952458006 11 -13.454410090174552 14 -11.983788488844995
		 18 18.709353423492825 22 12.810661234303158 24 2.1582843952458006 27 -13.454410090174552
		 30 -11.983788488844995 32 4.4663272684862223;
	setAttr -s 12 ".kix[0:11]"  0.19195884413600312 0.62462969645571575 
		0.42908171832849501 0.29923135313396393 0.62955697738769989 0.38381891242193145 0.62462969645571731 
		0.42908171832849501 0.29923135313396393 0.62955697738769989 0.38381891242193139 0.19195884413600312;
	setAttr -s 12 ".kiy[0:11]"  0.98140297643626995 0.78092108583751296 
		-0.90326567464742402 -0.95418058945967721 -0.77695431797658665 0.92340838336417852 
		0.78092108583751185 -0.90326567464742402 -0.95418058945967721 -0.77695431797658676 
		0.92340838336417863 0.98140297643626995;
	setAttr -s 12 ".kox[0:11]"  0.19195884413600312 0.6246296964557172 
		0.42908171832849556 0.2992313531339636 0.62955697738769989 0.38381891242193145 0.6246296964557172 
		0.42908171832849556 0.2992313531339636 0.62955697738769989 0.3838189124219305 0.19195884413600312;
	setAttr -s 12 ".koy[0:11]"  0.98140297643626995 0.78092108583751196 
		-0.90326567464742369 -0.95418058945967721 -0.77695431797658665 0.92340838336417852 
		0.78092108583751196 -0.90326567464742369 -0.95418058945967721 -0.77695431797658676 
		0.92340838336417896 0.98140297643626995;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail3_rotateY";
	rename -uid "F1188E92-442C-0431-13C4-A0BA5055C3DB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.4331939147194497 5 4.4757092056197099
		 10 9.3980518961053026 26 -11.230179556574111 32 -4.4331939147194497;
	setAttr -s 5 ".kix[0:4]"  0.74775401803539676 0.74822586956436055 
		0.99552060638235862 0.98634514243703331 0.74775401803539676;
	setAttr -s 5 ".kiy[0:4]"  0.66397584934387455 0.66344408062372262 
		0.094544816188414288 0.1646914083699218 0.66397584934387455;
	setAttr -s 5 ".kox[0:4]"  0.74775401803539665 0.74822586956436044 
		0.99552060638235862 0.98634513731660534 0.74775401803539665;
	setAttr -s 5 ".koy[0:4]"  0.66397584934387455 0.66344408062372273 
		0.094544816188414288 0.16469143903642011 0.66397584934387455;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail3_rotateZ";
	rename -uid "5201BF42-4CED-975F-C52B-B59786AE790E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0366152023064388e-08 32 1.0366152023064388e-08;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail3_rotateX";
	rename -uid "1120E147-42BA-9C67-E9FB-95BCD3374E6F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -12.320842083837206 2 -9.6891903161916808
		 6 15.888427740817155 10 10.972850955557936 12 2.0958703268913883 15 -10.914708307560097
		 18 -9.6891903161916808 22 15.888427740817155 26 10.972850955557936 28 2.0958703268913883
		 32 -12.320842083837206;
	setAttr -s 11 ".kix[0:10]"  0.93381924122716575 0.44634392620271385 
		0.69246999875240012 0.49522963617016141 0.35220664513727451 0.69712399174271378 0.44634392620271546 
		0.69246999875240012 0.49522963617016141 0.35220664513727451 0.93381924122716575;
	setAttr -s 11 ".kiy[0:10]"  -0.35774519523526871 0.89486149740725041 
		0.72144667219958181 -0.86876211212205234 -0.93592226125952682 -0.71695058416651336 
		0.89486149740724963 0.72144667219958181 -0.86876211212205234 -0.93592226125952682 
		-0.35774519523526871;
	setAttr -s 11 ".kox[0:10]"  0.93381924122716575 0.44634392620271518 
		0.69246999875240012 0.49522963617016208 0.35220664513727395 0.69712399174271378 0.44634392620271546 
		0.69246999875240012 0.49522963617016208 0.35220664513727395 0.93381924122716575;
	setAttr -s 11 ".koy[0:10]"  -0.35774519523526871 0.89486149740724963 
		0.72144667219958181 -0.86876211212205201 -0.93592226125952693 -0.71695058416651336 
		0.89486149740724963 0.72144667219958181 -0.86876211212205201 -0.93592226125952693 
		-0.35774519523526871;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateY";
	rename -uid "7053138E-4F1F-12BA-706B-AF9CD1104023";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.740785200605828 10 4.4757092056197099
		 15 9.3980518961053026 28 -9.875159101567224 32 -10.740785200605828;
	setAttr -s 5 ".kix[0:4]"  0.94623153327294685 0.74822586956436077 
		0.99552060638235862 0.86379560690794122 0.94623153327294685;
	setAttr -s 5 ".kiy[0:4]"  0.32349016281786352 0.66344408062372251 
		0.094544816188414288 -0.50384238555975158 0.32349016281786352;
	setAttr -s 5 ".kox[0:4]"  0.94623153327294729 0.74822586956436044 
		0.99552060638235862 0.86379560690794122 0.94623153327294729;
	setAttr -s 5 ".koy[0:4]"  0.32349016281786258 0.66344408062372273 
		0.094544816188414427 -0.50384238555975169 0.32349016281786258;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateZ";
	rename -uid "71016202-4DED-DBDA-2ECA-C09BD6AF96E3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateX";
	rename -uid "1CDF6A0B-4F67-B3C7-07D6-0F9272FE9B73";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8890600805020969 3 -14.899639128548719
		 6 -13.674121098222141 10 11.903497771877237 14 6.9879208303560478 16 -1.8890600805020969
		 19 -14.899639128548719 22 -13.674121098222141 26 11.903497771877237 30 6.9879208303560478
		 32 -1.8890600805020969;
	setAttr -s 11 ".kix[0:10]"  0.35220663532982915 0.6971239803515713 
		0.44634391484057712 0.69246998729494302 0.49522962428822664 0.35220663532982915 0.6971239803515713 
		0.44634391484057728 0.69246998729494302 0.49522962428822664 0.35220663532982915;
	setAttr -s 11 ".kiy[0:10]"  -0.93592226495026853 -0.71695059524264426 
		0.89486150307451917 0.72144668319685379 -0.86876211889523702 -0.93592226495026853 
		-0.71695059524264448 0.89486150307451906 0.72144668319685379 -0.86876211889523702 
		-0.93592226495026853;
	setAttr -s 11 ".kox[0:10]"  0.3522066353298286 0.6971239803515713 0.44634391484057712 
		0.69246998729494302 0.49522962428822709 0.3522066353298286 0.6971239803515713 0.44634391484057728 
		0.69246998729494302 0.49522962428822709 0.3522066353298286;
	setAttr -s 11 ".koy[0:10]"  -0.93592226495026876 -0.71695059524264426 
		0.89486150307451917 0.72144668319685379 -0.8687621188952368 -0.93592226495026876 
		-0.71695059524264448 0.89486150307451906 0.72144668319685379 -0.8687621188952368 
		-0.93592226495026876;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateY";
	rename -uid "CBFFDAEE-4CFE-F69A-CC8F-8792287972CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.2014148618502014 5 -0.86633900103076622
		 11 0.5 16 1.2014148618502014 21 0.86633900103076622 27 -0.5 32 -1.2014148618502014;
	setAttr -s 7 ".kix[0:6]"  0.16666666666666669 0.99673658472969329 
		0.99572983082991973 0.16666666666666674 0.99673658472969329 0.99572983082991973 0.16666666666666669;
	setAttr -s 7 ".kiy[0:6]"  -0.0066616792090393902 0.08072286331261562 
		0.092315242486922883 0.0066616792090393902 -0.080722863312615606 -0.092315242486922883 
		-0.0066616792090393902;
	setAttr -s 7 ".kox[0:6]"  0.033333333333333361 0.99673658472969329 
		0.99572983082991984 0.033333333333333548 0.99673658472969329 0.99572983082991984 
		0.033333333333333361;
	setAttr -s 7 ".koy[0:6]"  -0.0013323358418078739 0.08072286331261562 
		0.092315242486922924 0.0013323358418078739 -0.080722863312615606 -0.092315242486922883 
		-0.0013323358418078739;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateZ";
	rename -uid "C0418156-40A9-2EC2-FC22-B7889CD08707";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.29276786143839295 5 0.69772802012437896
		 8 1.0346125283559573 11 1.0346125283559573 14 0.6713225800749304 21 -0.69772802012437896
		 24 -1.0346125283559573 27 -1.0346125283559573 30 -0.6713225800749304 32 -0.29276786143839295;
	setAttr -s 10 ".kix[0:9]"  0.99448270493343605 0.99603445439670513 
		0.99956813756955687 0.99949783749031029 0.99591150001410778 0.99603445439670513 0.99956813756955687 
		0.99799587684845481 0.99591150001410778 0.99448270493343605;
	setAttr -s 10 ".kiy[0:9]"  0.10490066533762513 0.088968340743536212 
		0.029386023135629675 -0.031687108612070192 -0.090334291050794741 -0.088968340743536184 
		-0.029386023135629675 0.063278983821516796 0.090334291050794741 0.10490066533762513;
	setAttr -s 10 ".kox[0:9]"  0.99448270493343605 0.99603445439670513 
		0.99956813756955687 0.99949783749031029 0.99591150001410778 0.99603445439670513 0.99956813756955687 
		0.99799587684845481 0.99591150001410778 0.99448270493343605;
	setAttr -s 10 ".koy[0:9]"  0.10490066533762518 0.088968340743536212 
		0.029386023135629675 -0.031687108612070192 -0.090334291050794741 -0.088968340743536184 
		-0.029386023135629675 0.063278983821516796 0.090334291050794727 0.10490066533762518;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateX";
	rename -uid "BC438E77-4B43-CA7F-E42D-7D8BF19A55A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.0844740724478514 3 2.3974281478476511
		 6 2.3974281478476511 10 3.9317752604172473 13 3.8705612189900669 16 3.0844740724478514
		 19 2.3974283772165395 22 2.3974281478476511 26 3.9317752604172473 29 3.8705612189900669
		 32 3.0844740724478514;
	setAttr -s 11 ".kix[0:10]"  0.98969305887005865 0.99689507246602216 
		0.99115455321320967 0.99188580097324319 0.99361391167676627 0.98969305887005865 0.99689507246602216 
		0.98870789645372115 0.99188580097324319 0.99361391167676627 0.98969305887005865;
	setAttr -s 11 ".kiy[0:10]"  -0.14320492039181648 -0.078741440760024373 
		0.13271266572834231 0.12713204878262477 -0.11283348138914931 -0.14320492039181648 
		-0.078741440760024373 0.14985558211177091 0.12713204878262477 -0.11283348138914931 
		-0.14320492039181648;
	setAttr -s 11 ".kox[0:10]"  0.98969305887005865 0.99689507246602216 
		0.99115455321320967 0.99188580097324319 0.99361391167676616 0.98969305887005865 0.99689507246602216 
		0.98870789645372115 0.99188580097324319 0.99361391167676616 0.98969305887005865;
	setAttr -s 11 ".koy[0:10]"  -0.14320492039181648 -0.07874144076002422 
		0.13271266572834231 0.12713204878262477 -0.11283348138914939 -0.14320492039181648 
		-0.078741440760024289 0.14985558211177091 0.12713204878262477 -0.11283348138914939 
		-0.14320492039181648;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateY";
	rename -uid "84D76AA2-48B0-9304-EB96-2880EF3633DD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.5532456950753666 3 -1.0092826926217253
		 7 0.3636719228579226 13 1.6561223157116209 16 1.5532456950753666 19 1.0092826926217253
		 23 -0.3636719228579226 29 -1.6561223157116209 32 -1.5532456950753666;
	setAttr -s 9 ".kix[0:8]"  0.99841064232289822 0.99165546936544491 
		0.99369953075694017 0.99761379172444475 0.99841064232289822 0.98987619511546932 0.99369953075694017 
		0.99971291451387034 0.99841064232289822;
	setAttr -s 9 ".kiy[0:8]"  0.056357690658665908 0.12891636854022512 
		0.11207694934033922 0.069041455381358904 -0.056357690658665908 -0.14193349972336008 
		-0.11207694934033922 -0.023960145120240434 0.056357690658665908;
	setAttr -s 9 ".kox[0:8]"  0.99841064232289822 0.99165546936544491 
		0.99040145328752194 0.99761379172444475 0.99841064232289822 0.98987619511546932 0.99040145328752194 
		0.99971291451387045 0.99841064232289822;
	setAttr -s 9 ".koy[0:8]"  0.056357690658665908 0.12891636854022515 
		0.13822069789277014 0.069041455381358904 -0.056357690658665908 -0.14193349972336008 
		-0.13822069789277008 -0.02396014512024041 0.056357690658665908;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateZ";
	rename -uid "26329667-4B13-A3E8-DB4B-BDBCA8018773";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.25888486161812574 4 0.51730626417797865
		 7 0.51730626417797865 10 0.3356612900374652 16 -0.25888486161812563 20 -0.51730626417797865
		 23 -0.51730626417797865 26 -0.3356612900374652 28 -0.14638393071919648 32 0.25888486161812574;
	setAttr -s 10 ".kix[0:9]"  0.1333333333333333 0.99989198191704098 
		0.99987438841789733 0.99897315600074632 0.20000000000000012 0.99989198191704098 0.99949783749031029 
		0.99897315600074632 0.99861207134677843 0.1333333333333333;
	setAttr -s 10 ".kiy[0:9]"  0.0065749055618441439 0.014697771872355282 
		-0.01584952320846432 -0.045305999491332349 -0.0098623583427662129 -0.014697771872355282 
		0.031687108612070164 0.045305999491332349 0.052668120912908518 0.0065749055618441439;
	setAttr -s 10 ".kox[0:9]"  0.033333333333333361 0.99989198191704098 
		0.99987438841789733 0.99897315600074621 0.033333333333333548 0.99989198191704098 
		0.99949783749031029 0.99897315600074632 0.99861207134677832 0.033333333333333361;
	setAttr -s 10 ".koy[0:9]"  0.0016437263904610366 0.014697771872355282 
		-0.01584952320846432 -0.045305999491332363 -0.0016437263904610366 -0.014697771872355282 
		0.031687108612070164 0.045305999491332349 0.052668120912908525 0.0016437263904610366;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateX";
	rename -uid "F143E8D6-4B5D-92A0-B6A1-4F8B5863DACB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.37845809166281025 2 -0.62870252012196393
		 8 -2.0361897669404425 10 -1.7817515146070007 14 -0.5702163016514451 16 -0.37845809166281025
		 18 -0.62870252012196393 24 -2.0361897669404425 26 -1.7817515146070007 30 -0.5702163016514451
		 32 -0.37845809166281025;
	setAttr -s 11 ".kix[0:10]"  0.99999667505807321 0.99416552449207762 
		0.997164481005546 0.99191601049650735 0.99258501474082972 0.99997069543627537 0.99416552449207762 
		0.997164481005546 0.99191601049650735 0.99258501474082972 0.99999667505807321;
	setAttr -s 11 ".kiy[0:10]"  0.0025787347281751726 -0.10786523958807169 
		-0.075252892442351088 0.12689613122823315 0.12155241055588833 -0.0076556037444320962 
		-0.10786523958807169 -0.075252892442351088 0.12689613122823315 0.12155241055588833 
		0.0025787347281751726;
	setAttr -s 11 ".kox[0:10]"  0.99999667505807321 0.99416552449207762 
		0.997164481005546 0.99191601049650735 0.99258501474082972 0.99997069543627537 0.99416552449207762 
		0.997164481005546 0.99191601049650735 0.99258501474082972 0.99999667505807321;
	setAttr -s 11 ".koy[0:10]"  0.0025787347281751726 -0.10786523958807169 
		-0.075252892442351088 0.12689613122823315 0.12155241055588833 -0.0076556037444320962 
		-0.10786523958807169 -0.075252892442351088 0.12689613122823315 0.12155241055588833 
		0.0025787347281751726;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateY";
	rename -uid "E0698A4A-455B-4079-7398-999A09DA11A7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateZ";
	rename -uid "150A1AA5-452A-74CF-10ED-01BDA7171BBE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateX";
	rename -uid "82D98BC8-40F2-0D34-7CB0-6B905DD044E8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.7777777777777741 16 -6.7777777777777741
		 32 -6.7777777777777741;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateY";
	rename -uid "0DF755DE-4C61-CDD0-3100-C18933831B84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.52880275361867213 4 0.36355188045340209
		 8 0 12 -0.36355182976810058 14 -0.48335875847697413 16 -0.52880275361867213 20 -0.3635518804534022
		 24 0 28 0.36355182976810058 30 0.48335873809217311 32 0.52880265384301239;
	setAttr -s 11 ".kix[0:10]"  1 0.99940160943369627 0.99886957148985844 
		0.99911156661396172 0.99976612560221234 0.99994534968769133 0.99940160943369627 0.99886957148985844 
		0.99911156668879797 0.99976612588453195 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.034589348957989277 -0.047535030784322876 
		-0.042143534002207092 -0.021626236342488721 0.010454551064526248 0.03458934895798927 
		0.04753503078432289 0.042143532228034741 0.021626223291046871 0;
	setAttr -s 11 ".kox[0:10]"  1 0.99940160943369627 0.99886957148985844 
		0.99911156661396172 0.99976612560221234 0.99994534968769133 0.99940160943369627 0.99886957148985844 
		0.99911156668879797 0.99976612588453195 0;
	setAttr -s 11 ".koy[0:10]"  0 -0.034589348957989277 -0.047535030784322876 
		-0.042143534002207092 -0.021626236342488721 0.010454551064526248 0.03458934895798927 
		0.04753503078432289 0.042143532228034741 0.021626223291046871 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Head_parent_switch";
	rename -uid "3612DB14-45D2-29C7-84C6-65B128A2BE10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateZ";
	rename -uid "D73AB6DB-4A18-C6BC-30AD-42BD1F217ACF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.3984408938950259 4 -0.96142809439972565
		 8 0 12 0.96142800951169249 14 1.2782623683123628 16 1.3984408938950259 20 0.96142809439972587
		 24 0 28 -0.96142800951169249 30 -1.2782623394680033 32 -1.3984407416453648;
	setAttr -s 11 ".kix[0:10]"  1 0.9958374711481236 0.99217365424814941 
		0.99383582933438208 0.99836780720256402 0.99961798523937284 0.9958374711481236 0.99217365424814941 
		0.99383582961000794 0.99836780833705097 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.091146755604959148 0.12486568710367719 
		0.11086182540099507 0.057111483447236655 -0.027638443986176583 -0.09114675560495912 
		-0.12486568710367722 -0.11086182293011188 -0.057111463615229452 0;
	setAttr -s 11 ".kox[0:10]"  1 0.9958374711481236 0.99217365424814941 
		0.99383582933438208 0.99836780720256402 0.99961798523937284 0.9958374711481236 0.99217365424814941 
		0.99383582961000794 0.99836780833705097 0;
	setAttr -s 11 ".koy[0:10]"  0 0.091146755604959148 0.12486568710367719 
		0.11086182540099507 0.057111483447236655 -0.027638443986176583 -0.09114675560495912 
		-0.12486568710367722 -0.11086182293011188 -0.057111463615229452 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateX";
	rename -uid "D13A9631-4ABA-5135-77F8-5D946F74A6DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8909486951433856 5 -4.7880254122652008
		 7 -4.1722848783192683 11 -1.2403698377225849 13 -0.77631499720991204 16 -1.8909486951433856
		 21 -4.7880254122652008 23 -4.1722848783192683 27 -1.2403698377225849 29 -0.77631499720991204
		 32 -1.9340061807641074;
	setAttr -s 11 ".kix[0:10]"  0.033333333333333326 0.98372907913899832 
		0.95526766393539631 0.95878296888452652 0.99982841740031514 0.033333333333333326 
		0.98372907913899832 0.95526766393539631 0.95878296888452652 0.99982841740031514 0.033333333333333548;
	setAttr -s 11 ".kiy[0:10]"  -0.00993059981467952 -0.17965828357283872 
		0.29574260808921471 0.28413943509652595 -0.018523923957445988 -0.00993059981467952 
		-0.17965828357283872 0.29574260808921471 0.28413943509652595 -0.018523923957445988 
		-0.010381495875515959;
	setAttr -s 11 ".kox[0:10]"  0.16666666666666666 0.98372907913899821 
		0.95526766393539631 0.95878296888452652 0.99982841740031514 0.16666666666666666 0.98372907913899821 
		0.95526766393539631 0.95878296888452652 0.99982841740031514 0.16666666666666641;
	setAttr -s 11 ".koy[0:10]"  -0.049652999073397631 -0.17965828357283889 
		0.29574260808921471 0.28413943509652595 -0.018523923957445988 -0.049652999073397631 
		-0.17965828357283889 0.29574260808921471 0.28413943509652595 -0.018523923957445988 
		-0.051907479377579828;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_sword";
	rename -uid "E4D1F0CF-4C05-8A12-3B00-FF88F53C8594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_R_Leg_FKIK";
	rename -uid "A1F92D80-4445-A60C-B97B-F88DEAE15DE9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_R_Arm_FKIK";
	rename -uid "EACF5422-4990-A0DC-402E-02BF0CAD868F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_L_Leg_FKIK";
	rename -uid "C8A6EA11-4168-5A68-42D0-4780EB538B7D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_L_Arm_FKIK";
	rename -uid "41DC29AE-42A0-426D-BE3E-D095CC3B253F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_tail";
	rename -uid "E1F5EF46-4063-1379-8E80-41B48A372EDE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_eye_translateY";
	rename -uid "328E66B6-47EA-D134-0C27-2EA4F7593E7D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.15236681573685767 2 0.1256407700278957
		 5 0.012622431889175389 7 -0.15752469248860973 8 -0.21046098524737922 10 -0.16660979174027896
		 13 0.086870763858208133 16 0.18554716965759349 18 0.15882112394863152 21 0.045802785809911206
		 23 -0.22388540033008103 24 -0.27682169308885052 26 -0.23297049958175026 29 0.070280586897840336
		 32 0.15236681573685767;
	setAttr -s 15 ".kix[0:14]"  0.92819133918438479 0.76628335810374404 
		0.50724338561584148 0.40904598871104653 0.99589842170836529 0.48896265065175165 0.49384292900354693 
		0.91810111714975462 0.76628335810374404 0.39927512035949514 0.29606206779214467 0.99589842170836529 
		0.41660160245942768 0.53122006785051645 0.97399472430118572;
	setAttr -s 15 ".kiy[0:14]"  -0.37210326236556746 -0.64250277438564352 
		-0.86180284737808721 -0.91251376927660799 -0.090478360058012339 0.87230472099353729 
		0.86955112642857169 0.39634623587006906 -0.64250277438564374 -0.91683116126248154 
		-0.95516870343130456 -0.090478360058012339 0.90908916219930658 0.84723387533366068 
		0.2265706888224007;
	setAttr -s 15 ".kox[0:14]"  0.92819133918438479 0.76628335810374404 
		0.50724338561584148 0.40904598871104653 0.99589842170836529 0.48896265065175165 0.49384292900354693 
		0.91810111714975462 0.76628335810374404 0.39927512035949514 0.29606206779214467 0.99589842170836529 
		0.41660160245942768 0.53122006785051645 0.97399472430118572;
	setAttr -s 15 ".koy[0:14]"  -0.37210326236556746 -0.64250277438564352 
		-0.86180284737808721 -0.91251376927660799 -0.090478360058012339 0.87230472099353729 
		0.86955112642857169 0.39634623587006906 -0.64250277438564374 -0.91683116126248154 
		-0.95516870343130456 -0.090478360058012339 0.90908916219930658 0.84723387533366068 
		0.2265706888224007;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_eye_translateX";
	rename -uid "E1944880-414C-F2D0-898B-399FFD74941D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 20 0 32 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_eye_translateY";
	rename -uid "2BB8FF34-4B69-AE5D-E913-7AB20E05EBA6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_eye_translateX";
	rename -uid "304E5056-46FB-0CD4-33AB-BA954011D325";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_eye_translateY";
	rename -uid "ACB8329B-4031-6063-1ED8-509BEC326FA6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_eye_translateX";
	rename -uid "669DB019-4068-07EE-FA28-639188608877";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateY";
	rename -uid "D1FA140E-473B-F840-BE64-C2BF8BBC2A66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.83328938243383854 14 8.6527469457283033
		 26 1.2699349629464354 29 -0.20662753201812142 32 0.83328938243383854;
	setAttr -s 5 ".kix[0:4]"  0.066666666666666652 0.9996733410876415 
		0.95183220760033693 0.099999999999999978 0.066666666666666652;
	setAttr -s 5 ".kiy[0:4]"  0.019228021849474849 0.025557995200561234 
		-0.30661938714743575 -0.0064427197290123153 0.019228021849474849;
	setAttr -s 5 ".kox[0:4]"  0.46666666666666667 0.99967334108764161 
		0.9518322076003366 0.033333333333333548 0.46666666666666667;
	setAttr -s 5 ".koy[0:4]"  0.13459615294632393 0.025557995200561213 
		-0.30661938714743664 -0.002147573243004105 0.13459615294632393;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_L_Clavicle_parent_switch";
	rename -uid "EFC50C1E-465A-1C77-6B56-BF936695F81E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateZ";
	rename -uid "FE6EE7CC-4560-D4AD-2412-B2A8EEC249A4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.5211245105272235 14 4.5105168139682865
		 26 7.3530095159884583 29 7.9215080323860914 32 7.5211245105272235;
	setAttr -s 5 ".kix[0:4]"  0.066666666666666652 0.99995155702777505 
		0.99239624801003612 0.099999999999999978 0.066666666666666652;
	setAttr -s 5 ".kiy[0:4]"  -0.0074030750509196663 -0.0098429465978585179 
		0.12308406450716054 0.0024805426159195398 -0.0074030750509196663;
	setAttr -s 5 ".kox[0:4]"  0.46666666666666667 0.99995155702777505 
		0.99239624801003612 0.033333333333333548 0.46666666666666667;
	setAttr -s 5 ".koy[0:4]"  -0.051821525356437498 -0.0098429465978585318 
		0.12308406450716075 0.00082684753863981886 -0.051821525356437498;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateX";
	rename -uid "0D91A841-4EFB-4A71-CBB4-8094D134EF1B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -14.891525896220431 14 -9.3061987006590225
		 26 -14.579636262527131 29 -15.634323757532192 32 -14.891525896220431;
	setAttr -s 5 ".kix[0:4]"  0.066666666666666652 0.99983329729063686 
		0.97453450780438 0.099999999999999978 0.066666666666666652;
	setAttr -s 5 ".kiy[0:4]"  0.013734302328377579 0.018258631628162051 
		-0.22423758181552628 -0.0046019422189233494 0.013734302328377579;
	setAttr -s 5 ".kox[0:4]"  0.46666666666666667 0.99983329729063686 
		0.97453450780437978 0.033333333333333548 0.46666666666666667;
	setAttr -s 5 ".koy[0:4]"  0.096140116298643469 0.018258631628162145 
		-0.22423758181552714 -0.0015339807396411165 0.096140116298643469;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateY";
	rename -uid "6008F244-473B-D2D0-C09B-1382F6D862B7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.3785033996977241 2 3.7251828358461601
		 4 4.903722102638711 14 17.252768156628491 18 19.466372981431547 22 17.00681209991
		 26 11.595778016627674 30 5.8568017527886562 32 4.3785033996977241;
	setAttr -s 9 ".kix[0:8]"  0.066666666666666652 0.99655906031914998 
		0.86117416715854866 0.87819542252629756 0.99987045581551748 0.88898261950828816 0.79129778752965862 
		0.88898261439248949 0.066666666666666652;
	setAttr -s 9 ".kiy[0:8]"  -0.017931140713327479 -0.082885700188952458 
		0.50830999775607422 0.47830199649787936 -0.016095700894003022 -0.45794093747139702 
		-0.61143095395201164 -0.45794094740249447 -0.017931140713327479;
	setAttr -s 9 ".kox[0:8]"  0.066666666666666652 0.99655906031914998 
		0.86117416715854866 0.87819542252629756 0.99987045581551748 0.88898261950828816 0.79129778752965807 
		0.88898261439248938 0.066666666666666652;
	setAttr -s 9 ".koy[0:8]"  -0.017931140713327437 -0.082885700188952305 
		0.50830999775607422 0.47830199649787936 -0.016095700894003022 -0.45794093747139702 
		-0.61143095395201275 -0.45794094740249475 -0.017931140713327437;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateZ";
	rename -uid "8CEBAB37-403C-46B6-D69E-24984BDB5A47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -32.267801844582593 5 -32.267801844582593
		 10 -33.836438271933275 16 -36.098742474587944 23 -37.054994748167687 32 -32.267801844582593;
	setAttr -s 6 ".kix[0:5]"  0.97690004660935081 0.99376712759194641 
		0.99068133262427382 0.99070072469454884 0.99223296427000085 0.97690004660935081;
	setAttr -s 6 ".kiy[0:5]"  0.21369674525983828 -0.11147598897364334 
		-0.13620020994768359 -0.13605908308413575 0.12439350712946072 0.21369674525983828;
	setAttr -s 6 ".kox[0:5]"  0.97690004345242309 0.99376712759194641 
		0.99068133262427382 0.99070072469454884 0.99223296427000085 0.97690004345242309;
	setAttr -s 6 ".koy[0:5]"  0.21369675969151672 -0.11147598897364334 
		-0.13620020994768359 -0.13605908308413575 0.12439350712946072 0.21369675969151672;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateX";
	rename -uid "66B43C39-45D5-F290-5270-70A5103D5006";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.088161682530039 2 19.582088635084922
		 4 19.106581053521776 10 17.79650260306661 14 17.196576519529604 18 17.094690067565406
		 22 17.546148891020387 26 18.983356924652735 30 20.236288508762918 32 20.088161682530039;
	setAttr -s 10 ".kix[0:9]"  0.066666666666666652 0.99517558082915625 
		0.99324029362165978 0.9946210526787308 0.99894672216213787 0.99973836790882042 0.99073516338275314 
		0.97911854332104897 0.9960774057028603 0.066666666666666652;
	setAttr -s 10 ".kiy[0:9]"  -0.008400940594257722 -0.098109955261182991 
		-0.11607635041798657 -0.10358070075189375 -0.045885142274167359 0.022873472211449031 
		0.13580808531508609 0.20329013287630865 0.088486167553235656 -0.008400940594257722;
	setAttr -s 10 ".kox[0:9]"  0.066666666666666652 0.99517558082915625 
		0.99324029362165978 0.99462105267873058 0.99894672216213787 0.99973836790882042 0.99073516338275314 
		0.97911854332104897 0.99607740570286041 0.066666666666666652;
	setAttr -s 10 ".koy[0:9]"  -0.008400940594257722 -0.09810995526118349 
		-0.11607635041798657 -0.10358070075189427 -0.045885142274167359 0.022873472211449031 
		0.13580808531508626 0.20329013287630845 0.088486167553236461 -0.008400940594257722;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateY";
	rename -uid "70AB50E1-46F2-1714-27C9-509EE6713F60";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -34.55836368711396 5 -43.664642000721315
		 10 -33.511943869023938 16 -12.202083926029358 20 -6.3902799799038705 26 -13.360068395170126
		 32 -34.55836368711396;
	setAttr -s 7 ".kix[0:6]"  0.47553687829320812 0.99850237633695804 
		0.55531150533580365 0.57575503824389251 0.99816693735903328 0.63111902862181657 0.47553687829320812;
	setAttr -s 7 ".kiy[0:6]"  -0.87969578683949057 0.054708358131530653 
		0.83164243040003905 0.81762224525557881 -0.060520782903790399 -0.77568600071901173 
		-0.87969578683949057;
	setAttr -s 7 ".kox[0:6]"  0.47553687829320812 0.99850237633695804 
		0.55531150533580365 0.57575503824389251 0.99816693735903328 0.63111902862181657 0.47553687829320812;
	setAttr -s 7 ".koy[0:6]"  -0.87969578683949057 0.054708358131530653 
		0.83164243040003905 0.81762224525557881 -0.060520782903790399 -0.77568600071901173 
		-0.87969578683949057;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateZ";
	rename -uid "9F5D8EAC-41B5-3C9A-9197-B5BC16078175";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateX";
	rename -uid "3F6C5C88-4E5E-B3F0-69E1-859BDB9C87C5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateY";
	rename -uid "D5B91C54-4B03-76B0-F0CF-61B4607829AC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.1444096042168939 5 0.37980934683467005
		 10 -1.1395105569080775 18 6.7338210262956064 26 8.5495444587600407 32 5.1444096042168939;
	setAttr -s 6 ".kix[0:5]"  0.066666666666666666 0.94339682345301556 
		0.9687781627501113 0.95889450735554616 1 0.066666666666666666;
	setAttr -s 6 ".kiy[0:5]"  -0.034890905647768533 -0.3316661476526655 
		0.24792916605054566 0.28376279488926043 0 -0.034890905647768533;
	setAttr -s 6 ".kox[0:5]"  0.16666666666666666 0.94339682345301556 
		0.9687781627501113 0.95889450735554616 1 0.16666666666666666;
	setAttr -s 6 ".koy[0:5]"  -0.087227264119421291 -0.33166614765266544 
		0.24792916605054566 0.28376279488926043 0 -0.087227264119421291;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateZ";
	rename -uid "948CAAE4-48B6-C9A0-6597-C8A56DFB5FCE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.521717402356929 5 15.521717402356929
		 10 8.8877126721608395 16 4.4384453124993319 26 9.7358070671961929 32 15.521717402356929;
	setAttr -s 6 ".kix[0:5]"  0.96410458650913056 0.94463459468745181 
		0.88446333201413474 0.99589779192757644 0.89266499070741101 0.96410458650913056;
	setAttr -s 6 ".kiy[0:5]"  0.26552277919617118 -0.32812418764802098 
		-0.46660970234496257 -0.090485291809097659 0.45072077205886307 0.26552277919617118;
	setAttr -s 6 ".kox[0:5]"  0.96410458650913056 0.94463459468745181 
		0.88446333201413474 0.99589779192757644 0.89266499070741101 0.96410458650913056;
	setAttr -s 6 ".koy[0:5]"  0.26552277919617118 -0.32812418764802098 
		-0.46660970234496257 -0.090485291809097659 0.45072077205886307 0.26552277919617118;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateX";
	rename -uid "D019D619-48E8-D978-EC0D-50A45E2C1BEF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.868957420318583 2 23.466800982000333
		 7 23.466800982000333 18 3.3275364771751756 22 -0.3312779226113084 26 4.3568554526333454
		 32 19.868957420318583;
	setAttr -s 7 ".kix[0:6]"  0.20000000000000004 0.79244884934938664 
		0.83497163988399359 0.76921289374092672 0.99773841977242483 0.56649585917281231 0.20000000000000004;
	setAttr -s 7 ".kiy[0:6]"  0.21936359651662524 0.60993837489113023 
		-0.55029297704898472 -0.63899258532686409 0.067216409529403914 0.8240645857819987 
		0.21936359651662524;
	setAttr -s 7 ".kox[0:6]"  0.066666666666666638 0.79244884934938642 
		0.83497163988399359 0.76921289374092672 0.99773841977242483 0.5664958591728122 0.066666666666666638;
	setAttr -s 7 ".koy[0:6]"  0.073121198838875079 0.60993837489113056 
		-0.55029297704898472 -0.63899258532686409 0.067216409529403914 0.82406458578199882 
		0.073121198838875079;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateY";
	rename -uid "A1A58BF2-46C0-FE2D-A0CE-998941E22ED6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.3445872623776971 10 1.2699349629464354
		 14 -0.097252548326236019 28 8.2827518440071 30 8.6527469457283033 32 8.3445872623776971;
	setAttr -s 6 ".kix[0:5]"  0.066666666666667096 0.95183220760033693 
		0.98182869169175424 0.46666666666666667 0.9996733410876415 0.066666666666667096;
	setAttr -s 6 ".kiy[0:5]"  -0.01181733221741732 -0.30661938714743558 
		0.18976938681161951 0.075895826276271547 0.025557995200561377 -0.01181733221741732;
	setAttr -s 6 ".kox[0:5]"  0.33333333333333282 0.9518322076003366 
		0.98182869169175435 0.06666666666666643 0.9996733410876415 0.33333333333333282;
	setAttr -s 6 ".koy[0:5]"  -0.059086661087086517 -0.30661938714743664 
		0.18976938681161951 0.010842260896610251 0.025557995200561505 -0.059086661087086517;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Clavicle_parent_switch";
	rename -uid "127884E2-45DB-FB73-7BDA-92BA1AEA126C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateZ";
	rename -uid "08F038BD-4AFD-A9DA-FB6F-B6876FA5B61E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.8687893799972004 14 7.8793969653436449
		 26 5.0369045404768071 30 4.5105168915549267 32 4.8687893799972004;
	setAttr -s 5 ".kix[0:4]"  0.066666666666666652 0.99995155700244098 
		0.99397771400734936 0.99724255613168777 0.066666666666666652;
	setAttr -s 5 ".kiy[0:4]"  0.0074030745517991714 0.0098429491715649499 
		-0.10958240760598381 0.074211078956834653 0.0074030745517991714;
	setAttr -s 5 ".kox[0:4]"  0.46666666666666667 0.99995155700244098 
		0.99397771400734936 0.99724255613168789 0.46666666666666667;
	setAttr -s 5 ".koy[0:4]"  0.051821521862594117 0.0098429491715647972 
		-0.10958240760598381 0.074211078956834847 0.051821521862594117;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateX";
	rename -uid "F05F7C65-4436-67F2-A68A-ECB5A7B90B15";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.9708715541717172 14 -15.556198755907753
		 26 -10.28276125611514 30 -9.3061987006590225 32 -9.9708715541717172;
	setAttr -s 5 ".kix[0:4]"  0.066666666666666652 0.9998332972701286 
		0.97971775606685896 0.99060406114104294 0.066666666666666652;
	setAttr -s 5 ".kiy[0:4]"  -0.013734302258804232 -0.018258632751181104 
		0.20038243048560567 -0.1367610838318884 -0.013734302258804232;
	setAttr -s 5 ".kox[0:4]"  0.46666666666666667 0.99983329727012871 
		0.97971775606685896 0.99060406114104305 0.46666666666666667;
	setAttr -s 5 ".koy[0:4]"  -0.096140115811629706 -0.018258632751181191 
		0.20038243048560567 -0.1367610838318879 -0.096140115811629706;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateY";
	rename -uid "E913F80C-4E7A-DC8D-4B79-DC969D77BA32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.895037496817526 2 19.466372981431547
		 6 17.00681209991 10 11.595778016627674 14 5.8568017527886562 18 3.7251828358461601
		 20 4.903722102638711 32 18.895037496817526;
	setAttr -s 8 ".kix[0:7]"  0.066666666666667096 0.99987045581551737 
		0.88898261950828816 0.79129778752965962 0.88898261439248949 0.99655906031914998 0.86117416715854866 
		0.066666666666667096;
	setAttr -s 8 ".kiy[0:7]"  0.02016695134832347 -0.016095700894003286 
		-0.45794093747139702 -0.61143095395201075 -0.45794094740249447 -0.082885700188952305 
		0.50830999775607422 0.02016695134832347;
	setAttr -s 8 ".kox[0:7]"  0.066666666666667096 0.99987045581551748 
		0.88898261950828816 0.79129778752965807 0.88898261439248949 0.99655906031914998 0.86117416715854866 
		0.066666666666667096;
	setAttr -s 8 ".koy[0:7]"  0.020166951348323303 -0.016095700894003022 
		-0.45794093747139702 -0.61143095395201275 -0.45794094740249447 -0.082885700188952305 
		0.50830999775607422 0.020166951348323303;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateZ";
	rename -uid "FE6360D8-4AF6-B0DC-36DA-05B6CD0C07DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -36.098742474587944 7 -37.054994748167687
		 16 -32.267801844582593 21 -32.267801844582593 32 -36.098742474587944;
	setAttr -s 5 ".kix[0:4]"  0.99070072469454884 0.99223296427000085 
		0.97690004660935081 0.99376712759194641 0.99070072469454884;
	setAttr -s 5 ".kiy[0:4]"  -0.13605908308413575 0.12439350712946072 
		0.21369674525983828 -0.11147598897364334 -0.13605908308413575;
	setAttr -s 5 ".kox[0:4]"  0.99070072469454884 0.99223296427000085 
		0.97690004345242309 0.99376712759194641 0.99070072469454884;
	setAttr -s 5 ".koy[0:4]"  -0.13605908308413575 0.12439350712946072 
		0.21369675969151672 -0.11147598897364334 -0.13605908308413575;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateX";
	rename -uid "CEDB47B7-411F-8A8A-DBA1-9CBECF83BE1F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.079921736860509 2 17.094690067565406
		 6 17.546148891020387 10 18.983356924652735 14 20.236288508762918 18 19.582088635084922
		 20 19.106581053521776 26 17.79650260306661 32 17.079921736860509;
	setAttr -s 9 ".kix[0:8]"  0.066666666666667096 0.99973836790882042 
		0.99073516338275314 0.97911854332104897 0.9960774057028603 0.99517558082915625 0.99324029362165978 
		0.9946210526787308 0.066666666666667096;
	setAttr -s 9 ".kiy[0:8]"  -0.0009494561237285426 0.022873472211450124 
		0.13580808531508609 0.20329013287630865 0.088486167553235656 -0.09810995526118349 
		-0.11607635041798657 -0.10358070075189375 -0.0009494561237285426;
	setAttr -s 9 ".kox[0:8]"  0.066666666666667096 0.99973836790882042 
		0.99073516338275314 0.97911854332104897 0.9960774057028603 0.99517558082915625 0.99324029362165978 
		0.99462105267873058 0.066666666666667096;
	setAttr -s 9 ".koy[0:8]"  -0.00094945612372870913 0.022873472211449031 
		0.13580808531508626 0.20329013287630845 0.088486167553235864 -0.09810995526118349 
		-0.11607635041798657 -0.10358070075189427 -0.00094945612372870913;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateY";
	rename -uid "E8651C27-404E-1267-4094-4FA82378D2EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -12.202083926029358 4 -6.3902799799038705
		 10 -13.360068395170126 16 -34.55836368711396 21 -43.664642000721315 26 -33.511943869023938
		 32 -12.202083926029358;
	setAttr -s 7 ".kix[0:6]"  0.57575503824389251 0.99816693735903328 
		0.63111902862181657 0.56972983084295981 0.99850237633695804 0.55531150533580365 0.57575503824389251;
	setAttr -s 7 ".kiy[0:6]"  0.81762224525557881 -0.060520782903790406 
		-0.77568600071901173 -0.82183205087636513 0.054708358131530646 0.83164243040003905 
		0.81762224525557881;
	setAttr -s 7 ".kox[0:6]"  0.57575503824389251 0.99816693735903328 
		0.63111902862181657 0.56972983084295981 0.99850237633695804 0.55531150533580365 0.57575503824389251;
	setAttr -s 7 ".koy[0:6]"  0.81762224525557881 -0.060520782903790406 
		-0.77568600071901173 -0.82183205087636513 0.054708358131530646 0.83164243040003905 
		0.81762224525557881;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateZ";
	rename -uid "5E1862DE-4D86-D32D-3F77-AA9601B391F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateX";
	rename -uid "ADC62965-4C36-7C40-08BF-679B45BB6100";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateY";
	rename -uid "84A07FFC-46FB-75D0-C0C7-2A9B507F1669";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.0510754146285173 5 7.9706463834295374
		 10 8.5495444587600407 14 6.9177862223223645 21 0.37980934683467005 26 -1.1395105569080775
		 32 5.0510754146285173;
	setAttr -s 7 ".kix[0:6]"  0.19999999999999996 0.099999999999999978 
		1 0.93306887846823783 0.94339682345301556 0.9687781627501113 0.19999999999999996;
	setAttr -s 7 ".kiy[0:6]"  0.111046676306811 0.014399779318547135 
		0 -0.35969774538357197 -0.33166614765266544 0.24792916605054566 0.111046676306811;
	setAttr -s 7 ".kox[0:6]"  0.066666666666667096 0.16666666666666666 
		1 0.93306887846823783 0.94339682345301556 0.96877816275011119 0.066666666666667096;
	setAttr -s 7 ".koy[0:6]"  0.037015558768937015 0.023999632197578585 
		0 -0.35969774538357197 -0.33166614765266544 0.24792916605054557 0.037015558768937015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateZ";
	rename -uid "B627851E-4C43-3261-0E2A-C5B28803F3D9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.4384453124993319 5 5.3488185259547274
		 10 9.7358070671961929 16 15.521717402356929 21 15.521717402356929 26 8.8877126721608395
		 32 4.4384453124993319;
	setAttr -s 7 ".kix[0:6]"  0.99589779192757644 0.16666666666666666 
		0.90003292272289481 0.96410458650913056 0.94463459468745181 0.88446333201413474 0.99589779192757644;
	setAttr -s 7 ".kiy[0:6]"  -0.090485291809097659 0.046574611924952311 
		0.4358219108935249 0.26552277919617123 -0.32812418764802093 -0.46660970234496257 
		-0.090485291809097659;
	setAttr -s 7 ".kox[0:6]"  0.99589779192757644 0.16666666666666666 
		0.90003292272289481 0.96410458650913056 0.94463459468745181 0.88446333201413474 0.99589779192757644;
	setAttr -s 7 ".koy[0:6]"  -0.09048529180909759 0.046574611924952311 
		0.4358219108935249 0.26552277919617123 -0.32812418764802093 -0.46660970234496257 
		-0.090485291809097659;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateX";
	rename -uid "9FEB2156-49C2-621C-BF80-13981DBEF831";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.8323596626997087 6 -0.3312779226113084
		 10 4.3568554526333454 18 23.466800982000333 23 23.466800982000333 32 6.8323596626997087;
	setAttr -s 6 ".kix[0:5]"  0.29999999999999993 0.99773841977242483 
		0.56649585917281309 0.79244884934938642 0.83497163988399359 0.29999999999999993;
	setAttr -s 6 ".kiy[0:5]"  -0.29708388922330475 0.067216409529403914 
		0.82406458578199815 0.60993837489113056 -0.55029297704898472 -0.29708388922330475;
	setAttr -s 6 ".kox[0:5]"  0.066666666666667096 0.99773841977242483 
		0.56649585917281231 0.79244884934938642 0.83497163988399359 0.066666666666667096;
	setAttr -s 6 ".koy[0:5]"  -0.066018642049623252 0.067216409529403914 
		0.8240645857819987 0.60993837489113056 -0.55029297704898472 -0.066018642049623252;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_L_Leg1_IK_parent_switch";
	rename -uid "2E83D0F2-4CBD-94C1-93D7-3191412D558A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateZ";
	rename -uid "C5F71392-4DC2-F4D6-31A5-8498698B7A2D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 2 0 3 0 7 -7.3206751668466028 10 -9.210917671771055
		 14 -5.9941509408386002 18 -0.99911689469618814 20 -0.57197478773535915 22 -3.54391971649724
		 24 0 25 0 32 0;
	setAttr -s 12 ".kix[0:11]"  1 0.066666666666666638 1 0.82347445989821721 
		0.99511337421150892 0.88083868417216771 0.96905310694528035 0.98561555161342418 0.99720887161062732 
		0.95723053802604152 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 -0.56735334130975157 0.098738910594482726 
		0.47341653167780717 0.24685233626542621 -0.1690029124535006 0.074662349153100147 
		0.28932628133367883 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0.03333333333333334 1 0.82347445989821721 
		0.99511337421150892 0.88083868417216771 0.96905310694528035 0.98561555161342418 0.99720887161062732 
		0.95723053802604152 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 -0.56735334130975157 0.098738910594482726 
		0.47341653167780717 0.24685233626542621 -0.1690029124535006 0.074662349153100147 
		0.28932628133367883 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateX";
	rename -uid "CE393808-4DE0-9F03-76AA-5FBB056EBF80";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 16.850076338232615 3 29.911147315187812
		 6 38.298263846651267 11 60.009043733435121 14 47.113862542999023 18 4.2388790685415394
		 20 -11.681322616932523 22 -14.681170038662131 24 0 25 0 27 0 28 0 30 5.9843664169833275
		 32 16.850076338232615;
	setAttr -s 14 ".kix[0:13]"  0.3706739333191138 0.47123235400481606 
		0.45265476690658935 0.86616439901948405 0.23311204750928441 0.19130007981954039 0.37440608782703827 
		0.54733214229871219 1 1 1 0.88045425312638892 0.41292079395346004 0.3706739333191138;
	setAttr -s 14 ".kiy[0:13]"  0.92876306728774316 0.88200910910209973 
		0.89168585387273092 0.4997591758749565 -0.97244988215641692 -0.98153159880924734 
		-0.92726483886646549 0.8369154831921215 0 0 0 0.47413110860989977 0.91076693940922349 
		0.92876306728774316;
	setAttr -s 14 ".kox[0:13]"  0.3706739333191138 0.47123235400481606 
		0.45265476690658935 0.86616439901948405 0.23311204750928441 0.19130007981954039 0.37440608782703827 
		0.54733214229871219 1 1 1 0.88045425312638892 0.41292079395346004 0.3706739333191138;
	setAttr -s 14 ".koy[0:13]"  0.92876306728774316 0.88200910910209973 
		0.89168585387273092 0.4997591758749565 -0.97244988215641692 -0.98153159880924734 
		-0.92726483886646549 0.8369154831921215 0 0 0 0.47413110860989977 0.91076693940922349 
		0.92876306728774316;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateY";
	rename -uid "B02B2EA0-4950-3ADB-A5B0-22B93336F3F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.0314491548536537 1 5.0314491548536537
		 6 7.2202073017452904 11 10.002702821505112 16 11.124901360426961 22 6.4906216455902124
		 25 5.0314495476624552 26 5.0314495476624552 32 4.9925263403858935;
	setAttr -s 9 ".kix[0:8]"  1 1 0.96775312407245639 0.97973342310803402 
		0.9863125515104767 0.94252752616600144 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.25190055745869383 0.20030581530503336 
		-0.16488647832036737 -0.33412851183249437 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.96775312407245639 0.97973342310803402 
		0.9863125515104767 0.94252752616600144 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0.25190055745869383 0.20030581530503336 
		-0.16488647832036737 -0.33412851183249437 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateZ";
	rename -uid "A6C6D010-488C-FAAE-07F8-51ABE744AF29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -13.582010818764781 3 -24.559383926634663
		 7 -34.689893687177459 9 -30.599786974325358 12 -14.90247268804071 17 17.186633893677065
		 19 28.482504223941689 20 28.716228316132277 21 26.416288218703002 22 22.739336731443554
		 23 20.101427723304116 24 16.709889022704182 28 0.70988902270418208 32 -13.582010818764781;
	setAttr -s 14 ".kix[0:13]"  1 0.011487328211698402 0.033092238845207171 
		0.008776010085447929 0.0052684740700908953 0.0059008285301115505 0.06666666666666643 
		0.032248318832550457 0.011153376132029824 0.010301934975763816 0.012635262358696282 
		0.0098279059864368988 0.0083330439965510171 0.0093288878882023425;
	setAttr -s 14 ".kiy[0:13]"  0 -0.99993401846849705 -0.99945230187748924 
		0.9999614900819831 0.99998612149417998 0.99998258995977429 3.9684951811754239 -0.9994798877078388 
		-0.99993779916595693 -0.99994693365985932 -0.99992017188629956 -0.99995170496575569 
		-0.99996527958612225 -0.99995648497860612;
	setAttr -s 14 ".kox[0:13]"  0.009109269584962951 0.011487328211698403 
		0.033092238845207171 0.008776010085447929 0.0052684740700908953 0.0059008285301115669 
		0.033333333333333548 0.032248318832550457 0.011153376132029824 0.010301934975763786 
		0.0098279059864368988 0.0083330439965510171 0.0093288878882023425 1;
	setAttr -s 14 ".koy[0:13]"  -0.99995850974309342 -0.99993401846849717 
		-0.99945230187748924 0.9999614900819831 0.99998612149417998 0.99998258995977429 1.9842475905877066 
		-0.9994798877078388 -0.99993779916595693 -0.99994693365985943 -0.99995170496575569 
		-0.99996527958612225 -0.99995648497860612 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateY";
	rename -uid "5BA86538-4D12-06D0-947B-87A0A2983A78";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.72529916307895 3 4.1132903504680085
		 6 7.6825438777892927 8 10.800701957934375 11 12.523206672838405 14 11.613858514861413
		 19 6.3151255722374708 22 1.3827659332706546 24 0 25 0 27 0 28 0 30 0.46646375107262039
		 32 1.72529916307895;
	setAttr -s 14 ".kix[0:13]"  0.058223242500064373 0.037777854323496805 
		0.018695631510852854 0.034410156815126006 0.23883707178122465 0.0429151918854693 
		0.026055490231997085 0.026382476760121194 1 0.033333333333333548 1 1 0.077051534621497608 
		0.058223242500064547;
	setAttr -s 14 ".kiy[0:13]"  0.99830358810973863 0.99928616207906762 
		0.99982522140742702 0.9994077952007171 0.97105965478078127 -0.99907871877316712 -0.99966049808360957 
		-0.9996519218808122 0 0 0 0 0.9970271114731396 0.99830358810973874;
	setAttr -s 14 ".kox[0:13]"  0.058223242500064373 0.037777854323496805 
		0.018695631510852854 0.034410156815126006 0.23883707178122465 0.0429151918854693 
		0.026055490231997085 0.026382476760121194 1 0.06666666666666643 1 0.99999999099981651 
		0.077051534621497608 0.058223242500064373;
	setAttr -s 14 ".koy[0:13]"  0.99830358810973863 0.99928616207906762 
		0.99982522140742702 0.9994077952007171 0.97105965478078127 -0.99907871877316712 -0.99966049808360957 
		-0.9996519218808122 0 0 0 0.00013416544574776886 0.9970271114731396 0.99830358810973863;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateX";
	rename -uid "400A5995-4529-7DF6-1CEA-7DB9A52FF0AE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.2066484152453891 3 -3.2066484152452355
		 4 -3.2066484152452071 7 -2.6518775644101722 15 4.3436670880759012 19 2.7865711708618752
		 24 -3.2066484152452071 25 -3.206648415245215 32 -3.2066484152453891;
	setAttr -s 9 ".kix[0:8]"  1 0.10000000000000002 1 0.048505928159019364 
		0.073352247589089675 0.039702111517557162 1 0.033333333333333548 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0.9988228946782467 0.9973060953256172 
		-0.99921156035198444 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.033333333333333298 1 0.048505928159019364 
		0.073352247589089675 0.039702111517557162 1 0.23333333333333317 0.99999999981499299;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.9988228946782467 0.9973060953256172 
		-0.99921156035198444 0 0 -1.9235750334580081e-05;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateY";
	rename -uid "C431EC04-40AD-6F9C-529C-EA98D5C1B0F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateZ";
	rename -uid "0583267C-48EF-75DB-5BDB-2793C20A73EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateX";
	rename -uid "471413B9-42CC-A113-B31D-13B42788EE0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateY";
	rename -uid "AB51B888-4270-F91C-4C25-FD90CF30D056";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateZ";
	rename -uid "FF28AB2F-400C-6C9D-962A-68BA2003949A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateX";
	rename -uid "35C756C8-416E-1880-30F8-588B8E5878CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateY";
	rename -uid "48668708-4A6B-929F-47FE-408153D69582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateZ";
	rename -uid "4BCEF449-4A65-5003-1C44-78A9377BE6B5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateX";
	rename -uid "C1E58ACE-43D3-55AC-1327-32864A8C55D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateY";
	rename -uid "A28A7B8C-45E0-0E92-7D5D-8381242BE7A1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  0.066666666666666652 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.066666666666666652 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateZ";
	rename -uid "9AF10065-4EEC-0F65-FCEE-A5A6A917FA63";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  0.066666666666666652 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.066666666666666652 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateX";
	rename -uid "7941CCFC-4085-4FCF-640F-2D8DD8315DFF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateY";
	rename -uid "6E624504-4F5B-B05C-D977-DCBD51B869FC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateZ";
	rename -uid "08F91F25-443A-D3F9-1E9B-25AD7CDDE4C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateX";
	rename -uid "7ECDBF94-4235-5231-49A3-81B6BFCAD02D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -16.967716421462764 4 -21.313800011414937
		 9 3.9497884917327344 16 10.976675989253957 19 6.205265081949217 22 -12.840704247494658
		 24 0 25 0 27 0 28 0 29 -1.1704652606061294 32 -16.967716421462764;
	setAttr -s 12 ".kix[0:11]"  0.34096102403821105 0.57985567946333338 
		0.57878882812524524 0.99994428601630059 0.43355539931970644 0.96299736533136393 1 
		0.033333333333333548 1 1 0.4105418602736936 0.34096102403821105;
	setAttr -s 12 ".kiy[0:11]"  -0.94007743302709612 0.81471920990861391 
		0.81547746286295697 -0.010555797617932837 -0.90112691432490799 -0.26951080565508218 
		0 0 0 0 -0.91184175214946983 -0.94007743302709612;
	setAttr -s 12 ".kox[0:11]"  0.55298444786235834 0.57985567946333338 
		0.57878882812524524 0.99994428601630059 0.43355539931970644 0.96299736533136393 1 
		0.033333333333333548 1 1 0.4105418602736936 0.34096102403821071;
	setAttr -s 12 ".koy[0:11]"  -0.83319157486280582 0.81471920990861391 
		0.81547746286295697 -0.010555797617932837 -0.90112691432490799 -0.26951080565508218 
		0 0 0 0 -0.91184175214946983 -0.94007743302709623;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateZ";
	rename -uid "7C4B7867-49F6-39F4-7ED7-9E9AF8853DD5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.183723113589338 6 14.247752704798717
		 16 22.062519584373234 22 23.640820522804191 32 18.183723113589338;
	setAttr -s 5 ".kix[0:4]"  0.074870127914314855 0.1362180443377812 
		0.056688156435664466 0.1362180443377812 0.074870127914314855;
	setAttr -s 5 ".kiy[0:4]"  -0.99719329317143635 0.99067888056463094 
		0.99839193352106248 -0.99067888056463094 -0.99719329317143635;
	setAttr -s 5 ".kox[0:4]"  0.074870127914314855 0.1362180443377812 
		0.056688156435664466 0.1362180443377812 0.074870127914314855;
	setAttr -s 5 ".koy[0:4]"  -0.99719329317143635 0.99067888056463094 
		0.99839193352106248 -0.99067888056463094 -0.99719329317143635;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateY";
	rename -uid "EE615E89-4ACC-D3A6-FD7A-E6A2A5263315";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.5943517489027452 6 -3.9601759804581569
		 16 -1.6209810987524564 22 3.889947101716035 32 -1.5943517489027452;
	setAttr -s 5 ".kix[0:4]"  0.067783228611257379 0.99875582183065614 
		0.067783230846513207 0.99875582183065614 0.067783228611257379;
	setAttr -s 5 ".kiy[0:4]"  -0.9977000721254029 -0.049867909113683231 
		0.99770007197354083 0.049867909113683231 -0.9977000721254029;
	setAttr -s 5 ".kox[0:4]"  0.067783228611257379 0.99875582183065614 
		0.067783230846513207 0.99875582183065614 0.067783228611257379;
	setAttr -s 5 ".koy[0:4]"  -0.9977000721254029 -0.049867909113683231 
		0.99770007197354083 0.049867909113683231 -0.9977000721254029;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateX";
	rename -uid "A0844DD8-4083-D6F1-AA2B-16808E7AA67E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.4619437662352466 7 7.6408891776198899
		 16 10.568540698669752 20 10.186112909610356 25 5.2004621037838969 30 3.9078461833704665
		 32 4.4619437662352466;
	setAttr -s 7 ".kix[0:6]"  0.066666666666667096 0.089717424340907778 
		0.21719304750564297 0.078935464284578039 0.05301853584173389 0.18782023885218183 
		0.066666666666667096;
	setAttr -s 7 ".kiy[0:6]"  0.73139380749011185 0.99596726039043748 
		0.97612866985618829 -0.99687972819100801 -0.99859352834734461 0.98220341980544412 
		0.73139380749011185;
	setAttr -s 7 ".kox[0:6]"  0.23333333333333317 0.089717424340907695 
		0.21719304750564297 0.078935464284578039 0.05301853584173389 0.18782023885218077 
		0.23333333333333317;
	setAttr -s 7 ".koy[0:6]"  2.5598783262153928 0.99596726039043748 
		0.97612866985618829 -0.99687972819100801 -0.99859352834734461 0.98220341980544423 
		2.5598783262153928;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateZ";
	rename -uid "FE35DBFC-4538-E622-8D9D-53B794BC5F96";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -3.2266509601953639 2 -0.99911689469618814
		 4 -0.57197478773535915 6 -3.54391971649724 8 0 9 0 18 0 19 0 23 -7.3206751668466028
		 26 -9.210917671771055 30 -5.9941509408386002 32 -3.2266509601953639;
	setAttr -s 12 ".kix[0:11]"  0.066666666666667096 0.96905310694528013 
		0.98561555161342418 0.99720887161062732 0.95723053802604152 1 1 1 0.82347445989821744 
		0.99511337421150892 0.8808386841721676 0.066666666666667096;
	setAttr -s 12 ".kiy[0:11]"  0.052181564164980529 0.24685233626542702 
		-0.1690029124535006 0.074662349153100147 0.28932628133367883 0 0 0 -0.56735334130975146 
		0.098738910594482754 0.47341653167780717 0.052181564164980529;
	setAttr -s 12 ".kox[0:11]"  0.066666666666667096 0.96905310694528035 
		0.98561555161342418 0.99720887161062732 0.95723053802604152 1 1 1 0.82347445989821744 
		0.99511337421150892 0.88083868417216693 0.066666666666667096;
	setAttr -s 12 ".koy[0:11]"  0.052181564164980529 0.24685233626542621 
		-0.1690029124535006 0.074662349153100147 0.28932628133367883 0 0 0 -0.56735334130975146 
		0.098738910594482754 0.47341653167780834 0.052181564164980529;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateX";
	rename -uid "761D628B-47A3-1263-D8FA-5AA08B29AAA2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 26.592386378748362 2 4.2388790685415394
		 4 -11.681322616932523 6 -14.681170038662131 8 0 9 0 11 0 12 0 14 5.9843664169833275
		 16 16.850076338232615 19 29.911147315187812 22 38.298263846651267 27 60.009043733435121
		 30 47.113862542999023 32 26.592386378748362;
	setAttr -s 15 ".kix[0:14]"  0.066666666666667096 0.19130007981953995 
		0.37440608782703833 0.54733214229871197 1 1 1 0.88045425312638892 0.41292079395346004 
		0.3706739333191138 0.47123235400481606 0.45265476690658951 0.86616439901948428 0.23311204750928435 
		0.066666666666667096;
	setAttr -s 15 ".kiy[0:14]"  -0.40619144813017194 -0.98153159880924745 
		-0.92726483886646538 0.83691548319212172 0 0 0 0.47413110860989977 0.91076693940922349 
		0.92876306728774316 0.88200910910209973 0.89168585387273092 0.4997591758749565 -0.97244988215641692 
		-0.40619144813017194;
	setAttr -s 15 ".kox[0:14]"  0.066666666666667096 0.19130007981954039 
		0.37440608782703833 0.54733214229871197 1 1 1 0.88045425312638892 0.41292079395346004 
		0.3706739333191138 0.47123235400481606 0.45265476690658951 0.86616439901948428 0.23311204750928372 
		0.066666666666667096;
	setAttr -s 15 ".koy[0:14]"  -0.40619144813017194 -0.98153159880924734 
		-0.92726483886646538 0.83691548319212172 0 0 0 0.47413110860989977 0.91076693940922349 
		0.92876306728774316 0.88200910910209973 0.89168585387273092 0.4997591758749565 -0.97244988215641714 
		-0.40619144813017194;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateY";
	rename -uid "CED7032A-42AB-5EE0-F2BC-629C586815EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.124901360426961 6 6.4906216455902124
		 9 5.0314495476624552 10 5.0314495476624552 16 4.9925263403858935 17 5.0314491548536537
		 22 7.2202073017452904 27 10.002702821505112 32 11.124901360426961;
	setAttr -s 9 ".kix[0:8]"  0.9863125515104767 0.94252752616600144 
		1 1 1 1 0.96775312407245639 0.97973342310803402 0.9863125515104767;
	setAttr -s 9 ".kiy[0:8]"  -0.16488647832036737 -0.33412851183249437 
		0 0 0 0 0.25190055745869383 0.20030581530503336 -0.16488647832036737;
	setAttr -s 9 ".kox[0:8]"  0.9863125515104767 0.94252752616600144 
		1 1 1 1 0.96775312407245639 0.97973342310803402 0.9863125515104767;
	setAttr -s 9 ".koy[0:8]"  -0.16488647832036737 -0.33412851183249437 
		0 0 0 0 0.25190055745869383 0.20030581530503336 -0.16488647832036737;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateZ";
	rename -uid "960B3FF9-4899-DAA9-73C4-898CF6BEB709";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 11.246415012651394 3 28.482504223941689
		 4 28.716228316132277 5 26.416288218703002 6 22.739336731443554 7 20.101427723304116
		 8 16.709889022704182 12 0.70988902270418208 16 -13.582010818764781 19 -24.559383926634663
		 23 -34.689893687177459 25 -30.599786974325358 28 -14.90247268804071 32 11.246415012651394;
	setAttr -s 14 ".kix[0:13]"  0.13333333333333286 0.06666666666666643 
		0.032248318832550457 0.011153376132029824 0.010301934975763816 0.012635262358696282 
		0.0098279059864368988 0.0083330439965510171 0.0093288878882023425 0.011487328211698402 
		0.033092238845207171 0.008776010085447929 0.0052684740700908953 0.13333333333333286;
	setAttr -s 14 ".kiy[0:13]"  24.78885356872135 3.9684951811754239 -0.9994798877078388 
		-0.99993779916595693 -0.99994693365985932 -0.99992017188629956 -0.99995170496575569 
		-0.99996527958612225 -0.99995648497860612 -0.99993401846849705 -0.99945230187748924 
		0.9999614900819831 0.99998612149417998 24.78885356872135;
	setAttr -s 14 ".kox[0:13]"  0.033333333333333881 0.033333333333333548 
		0.032248318832550457 0.011153376132029824 0.010301934975763786 0.0098279059864368988 
		0.0083330439965510171 0.0093288878882023425 0.0091092695849629493 0.011487328211698403 
		0.033092238845207171 0.008776010085447929 0.0052684740700907852 0.033333333333333881;
	setAttr -s 14 ".koy[0:13]"  6.1972133921803589 1.9842475905877066 -0.9994798877078388 
		-0.99993779916595693 -0.99994693365985943 -0.99995170496575569 -0.99996527958612225 
		-0.99995648497860612 -0.99995850974309342 -0.99993401846849717 -0.99945230187748924 
		0.9999614900819831 0.99998612149418009 6.1972133921803589;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateY";
	rename -uid "7291ACD1-4BC6-58B3-A730-CEB125DBA84D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 9.803842774899147 3 6.3151255722374708
		 6 1.3827659332706546 8 0 9 0 11 0 12 0 14 0.46646375107262039 16 1.72529916307895
		 19 4.1132903504680085 22 7.6825438777892927 24 10.800701957934375 27 12.523206672838405
		 30 11.613858514861413 32 9.803842774899147;
	setAttr -s 15 ".kix[0:14]"  0.066666666666667096 0.026055490231997259 
		0.02638247676012118 1 0.033333333333333548 1 1 0.077051534621497608 0.058223242500064547 
		0.037777854323496805 0.018695631510852854 0.034410156815126033 0.2388370717812246 
		0.0429151918854693 0.066666666666667096;
	setAttr -s 15 ".kiy[0:14]"  -2.0473403354061048 -0.99966049808360946 
		-0.9996519218808122 0 0 0 0 0.9970271114731396 0.99830358810973874 0.99928616207906762 
		0.99982522140742702 0.9994077952007171 0.97105965478078127 -0.99907871877316712 -2.0473403354061048;
	setAttr -s 15 ".kox[0:14]"  0.099999999999999645 0.026055490231997085 
		0.02638247676012118 1 0.06666666666666643 1 0.99999999099981651 0.077051534621497608 
		0.058223242500064373 0.037777854323496805 0.018695631510852854 0.034410156815126033 
		0.23883707178122465 0.042915191885469252 0.099999999999999645;
	setAttr -s 15 ".koy[0:14]"  -3.0710105031091572 -0.99966049808360957 
		-0.9996519218808122 0 0 0 0.00013416544574776886 0.9970271114731396 0.99830358810973863 
		0.99928616207906762 0.99982522140742702 0.9994077952007171 0.97105965478078127 -0.99907871877316723 
		-3.0710105031091572;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateX";
	rename -uid "615A8E17-4CF5-84CB-D891-359D269B1BC0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4.5125963751296103 3 2.7865711708618752
		 8 -3.2066484152452071 9 -3.206648415245215 16 -3.2066484152453891 19 -3.2066484152452355
		 20 -3.2066484152452071 23 -2.6518775644101722 31 4.3436670880759012 32 4.5125963751296103;
	setAttr -s 10 ".kix[0:9]"  0.033333333333333215 0.039702111517557183 
		1 0.033333333333333548 1 0.10000000000000002 1 0.048505928159019378 0.073352247589089689 
		0.033333333333333215;
	setAttr -s 10 ".kiy[0:9]"  -0.09079373247361211 -0.99921156035198444 
		0 0 0 0 0 0.99882289467824681 0.9973060953256172 -0.09079373247361211;
	setAttr -s 10 ".kox[0:9]"  0.10000000000000031 0.039702111517557134 
		1 0.23333333333333317 0.99999999981499299 0.033333333333333298 1 0.048505928159019378 
		0.0733522475890898 0.10000000000000031;
	setAttr -s 10 ".koy[0:9]"  -0.27238119742083633 -0.99921156035198444 
		0 0 -1.9235750334580081e-05 0 0 0.99882289467824681 0.99730609532561709 -0.27238119742083633;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateY";
	rename -uid "20422647-434D-FA6A-0E7E-6F9853DFCBAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateZ";
	rename -uid "873CA0F1-4ABF-73DE-FCE0-0DBC34B63584";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateX";
	rename -uid "27374C15-47A6-5589-541B-D2A8786DCAA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateY";
	rename -uid "5125DCDD-476C-D8C6-D128-F799F4656787";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateZ";
	rename -uid "208B33D1-4C80-6C62-5AEE-45A658CBF9DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateX";
	rename -uid "59FCEFD6-4A09-C555-3C01-3F97AD01DE9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateY";
	rename -uid "2F266C49-4284-9017-2C68-7EBA95BF2991";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateZ";
	rename -uid "A4FF21EE-4663-F581-1C9B-AC8F968E8820";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateX";
	rename -uid "1D1108A6-4215-1332-84C1-7C9423DEBF3A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateY";
	rename -uid "B744BFDF-4D7B-CAE7-FB9E-FC8C9FD9A15E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateZ";
	rename -uid "0E62A0F9-4454-5B01-FAB4-ACB8D2AE1411";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateX";
	rename -uid "0034EEBE-4A47-E098-EB52-E08491B95B0B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 0.10000000000000031;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.2999999999999996;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateY";
	rename -uid "D542005D-4C91-0D88-5D60-1F977AE4119B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateZ";
	rename -uid "C37C757C-4F76-20A3-9436-76AAF3434B24";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateX";
	rename -uid "FF5DC1C9-42D6-F6E4-028A-05B7A6B07052";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 10.976675989253957 3 6.205265081949217
		 6 -12.840704247494658 8 0 9 0 11 0 12 0 13 -1.1704652606061294 16 -16.967716421462764
		 20 -21.313800011414937 25 3.9497884917327344 32 10.976675989253957;
	setAttr -s 12 ".kix[0:11]"  0.99994428601630059 0.43355539931970644 
		0.96299736533136393 1 0.033333333333333548 1 1 0.4105418602736936 0.34096102403821105 
		0.57985567946333338 0.57878882812524524 0.99994428601630059;
	setAttr -s 12 ".kiy[0:11]"  -0.010555797617932837 -0.90112691432490799 
		-0.26951080565508218 0 0 0 0 -0.91184175214946983 -0.94007743302709612 0.81471920990861391 
		0.81547746286295697 -0.010555797617932837;
	setAttr -s 12 ".kox[0:11]"  0.99994428601630059 0.43355539931970644 
		0.96299736533136393 1 0.033333333333333548 1 1 0.4105418602736936 0.55298444786235834 
		0.57985567946333338 0.57878882812524524 0.99994428601630059;
	setAttr -s 12 ".koy[0:11]"  -0.010555797617932837 -0.90112691432490799 
		-0.26951080565508218 0 0 0 0 -0.91184175214946983 -0.83319157486280582 0.81471920990861391 
		0.81547746286295697 -0.010555797617932837;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateZ";
	rename -uid "FBB57620-484F-7571-1A19-78990C8BDA31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 22.062519584373234 6 23.640820522804191
		 16 18.183723113589338 22 14.247752704798717 32 22.062519584373234;
	setAttr -s 5 ".kix[0:4]"  0.059609816342186539 0.1362180443377812 
		0.056688156435664466 0.1362180443377812 0.039779159112161608;
	setAttr -s 5 ".kiy[0:4]"  0.99822175381808353 -0.99067888056463094 
		-0.99839193352106248 0.99067888056463094 0.99920849601088224;
	setAttr -s 5 ".kox[0:4]"  0.039779159112161608 0.1362180443377812 
		0.056688156435664466 0.1362180443377812 0.059609816342186539;
	setAttr -s 5 ".koy[0:4]"  0.99920849601088224 -0.99067888056463094 
		-0.99839193352106248 0.99067888056463094 0.99822175381808353;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateY";
	rename -uid "AD308503-40C1-DE91-A156-3C942FD63EF6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.6209810987524564 6 3.889947101716035
		 16 -1.5943517489027452 22 -3.9601759804581569 32 -1.6209810987524564;
	setAttr -s 5 ".kix[0:4]"  0.19564354062842654 0.99875582183065614 
		0.067783230846513207 0.99875582183065614 0.1318383036756306;
	setAttr -s 5 ".kiy[0:4]"  0.98067507616456395 0.049867909113683231 
		-0.99770007197354083 -0.049867909113683231 0.99127123517427473;
	setAttr -s 5 ".kox[0:4]"  0.13183830367563062 0.99875582183065614 
		0.067783230846513207 0.99875582183065614 0.19564354062842654;
	setAttr -s 5 ".koy[0:4]"  0.99127123517427473 0.049867909113683231 
		-0.99770007197354083 -0.049867909113683231 0.98067507616456395;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateX";
	rename -uid "088D8113-4068-2113-D73C-A1ADCE18E274";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.568540698669752 4 10.186112909610356
		 9 5.2004621037838969 14 3.9078461833704665 23 7.6408891776198899 32 10.568540698669752;
	setAttr -s 6 ".kix[0:5]"  0.11071070517011961 0.078935464284578039 
		0.05301853584173389 0.18782023885218183 0.089717424340907695 0.21719304750564297;
	setAttr -s 6 ".kiy[0:5]"  0.99385267507852226 -0.99687972819100801 
		-0.99859352834734461 0.98220341980544412 0.99596726039043748 0.97612866985618829;
	setAttr -s 6 ".kox[0:5]"  0.11071070517011961 0.078935464284578039 
		0.05301853584173389 0.18782023885218183 0.089717424340907695 0.21719304750564297;
	setAttr -s 6 ".koy[0:5]"  0.99385267507852226 -0.99687972819100801 
		-0.99859352834734461 0.98220341980544412 0.99596726039043748 0.97612866985618829;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateY";
	rename -uid "9FB177EF-4DD7-56DD-65EB-EF87AF7B6CB2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateZ";
	rename -uid "5BBCE38D-4E36-1D6C-BDCC-9189F00CB3C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -15.116259572412376 10 -23.855378250344391
		 16 -22.884175946286238 28 -13.962669255570313 32 -15.116259572412376;
	setAttr -s 5 ".kix[0:4]"  0.93786597804374672 0.97108166119336559 
		0.94108819441693481 0.96917612635577999 0.93786597804374672;
	setAttr -s 5 ".kiy[0:4]"  -0.3469977049319582 -0.23874758070802207 
		0.33816121943397587 0.24636890246539894 -0.3469977049319582;
	setAttr -s 5 ".kox[0:4]"  0.93786597804374672 0.97108166119336559 
		0.94108819441693481 0.96917612635577999 0.93786597804374672;
	setAttr -s 5 ".koy[0:4]"  -0.3469977049319582 -0.23874758070802207 
		0.33816121943397587 0.24636890246539894 -0.3469977049319582;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateX";
	rename -uid "0655A61A-4794-70F0-CAAD-33A84E8DD240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateY";
	rename -uid "FE372D2E-4379-BC0B-A648-B1A8300813A5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateZ";
	rename -uid "3E337E3E-4507-3C33-3FE2-2396C16AABCC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.6359866020070166 10 -10.454043765975506
		 16 -9.4828414619173547 28 -1.5929384947694323 32 -2.6359866020070166;
	setAttr -s 5 ".kix[0:4]"  0.94923112193430292 0.9771687967601369 
		0.95303628699971321 0.97580522048948304 0.94923112193430292;
	setAttr -s 5 ".kiy[0:4]"  -0.31457952436759851 -0.21246445029309335 
		0.30285613030249253 0.21864165125947829 -0.31457952436759851;
	setAttr -s 5 ".kox[0:4]"  0.94923112193430292 0.9771687967601369 
		0.95303628699971321 0.97580522048948304 0.94923112193430292;
	setAttr -s 5 ".koy[0:4]"  -0.31457952436759851 -0.21246445029309344 
		0.30285613030249253 0.21864165125947829 -0.31457952436759851;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateX";
	rename -uid "F2AF10B4-4052-5A16-0C79-76A6841066D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateY";
	rename -uid "E6F2B2FE-48CA-C34B-E7F5-F3A4D7BA3426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateZ";
	rename -uid "2D82C927-42E3-AB6F-A4A9-C7812811730D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.469906762181285 10 -25.423595895813417
		 16 -25.423595895813417 28 -18.75536821925839 32 -19.469906762181285;
	setAttr -s 5 ".kix[0:4]"  0.970281346299944 0.98353171142881934 0.96577454866914147 
		0.98154367631960537 0.970281346299944;
	setAttr -s 5 ".kiy[0:4]"  -0.24197956323286482 -0.18073564289839927 
		0.25938296232196134 0.19123810153050991 -0.24197956323286482;
	setAttr -s 5 ".kox[0:4]"  0.970281346299944 0.98353171142881934 0.96577454866914147 
		0.98154367631960537 0.970281346299944;
	setAttr -s 5 ".koy[0:4]"  -0.24197956323286482 -0.18073564289839916 
		0.25938296232196134 0.19123810153050991 -0.24197956323286482;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateX";
	rename -uid "8B73F345-49BF-D25B-A078-9C9A400676B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateY";
	rename -uid "D103DDE7-4BDA-DAAF-2209-C89A2CACD387";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateZ";
	rename -uid "DE76F6F4-4145-D0F0-3877-A6A7B935A044";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -20.972546347662611 10 -26.926235481294736
		 16 -26.926235481294736 28 -20.258007804739709 32 -20.972546347662611;
	setAttr -s 5 ".kix[0:4]"  0.970281346299944 0.98353171142881934 0.96577454866914147 
		0.98154367631960548 0.970281346299944;
	setAttr -s 5 ".kiy[0:4]"  -0.24197956323286476 -0.18073564289839927 
		0.25938296232196129 0.19123810153050988 -0.24197956323286476;
	setAttr -s 5 ".kox[0:4]"  0.970281346299944 0.98353171142881934 0.96577454866914147 
		0.98154367631960548 0.970281346299944;
	setAttr -s 5 ".koy[0:4]"  -0.24197956323286476 -0.18073564289839911 
		0.25938296232196129 0.19123810153050988 -0.24197956323286476;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateX";
	rename -uid "D2B5DA3E-40EF-3C85-1363-87930F45A70D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateY";
	rename -uid "CB4DB622-4D73-C23A-FD8A-639FCBC12642";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateZ";
	rename -uid "7E0FA282-4651-17F3-8C87-759AC67FB59C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.151475568908504 10 -19.311269232793876
		 16 -18.340066928735716 28 -11.18742967889313 32 -12.151475568908504;
	setAttr -s 5 ".kix[0:4]"  0.95681154574686844 0.98112194640409101 
		0.96091974783607637 0.98010260220324152 0.95681154574686844;
	setAttr -s 5 ".kiy[0:4]"  -0.29070890238430686 -0.19339008838161256 
		0.27682709083225848 0.19849153421351373 -0.29070890238430686;
	setAttr -s 5 ".kox[0:4]"  0.95681154574686844 0.98112194640409101 
		0.96091974783607637 0.98010260220324152 0.95681154574686844;
	setAttr -s 5 ".koy[0:4]"  -0.29070890238430686 -0.19339008838161262 
		0.27682709083225848 0.19849153421351373 -0.29070890238430686;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateX";
	rename -uid "281C303A-46D5-B6CB-EAD7-C79354B37DC8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateY";
	rename -uid "8A3E2502-48C4-935E-E291-7DBF49B416C9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateZ";
	rename -uid "9ECBF889-4C48-279C-5BDB-A88E91652AC9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -23.522285910480559 10 -32.195922094033087
		 16 -31.224719789974927 28 -22.376554547149613 32 -23.522285910480559;
	setAttr -s 5 ".kix[0:4]"  0.93870118713716022 0.97153514347799597 
		0.94197048331735567 0.96967031509206436 0.93870118713716022;
	setAttr -s 5 ".kiy[0:4]"  -0.34473189766438195 -0.23689547270302552 
		0.3356957082818714 0.24441661160661068 -0.34473189766438195;
	setAttr -s 5 ".kox[0:4]"  0.93870118713716022 0.97153514347799597 
		0.94197048331735567 0.96967031509206436 0.93870118713716022;
	setAttr -s 5 ".koy[0:4]"  -0.34473189766438195 -0.23689547270302524 
		0.3356957082818714 0.24441661160661068 -0.34473189766438195;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateX";
	rename -uid "6ADDF3E7-4363-BB86-48CA-A8B42B3E2B2D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateY";
	rename -uid "C5C5A6B8-4563-0489-8BFC-2B94F186A6C2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateZ";
	rename -uid "6E5E09DF-47CB-41F9-B9AB-E39E4C41B2B7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.447189281834952 10 -29.724269725599722
		 16 -28.753067421541566 28 -21.469067090064797 32 -22.447189281834952;
	setAttr -s 5 ".kix[0:4]"  0.95549615152875389 0.98044255957801296 
		0.9595578102291098 0.97936466722232784 0.95549615152875389;
	setAttr -s 5 ".kiy[0:4]"  -0.29500356678138739 -0.19680545563605309 
		0.28151164954281299 0.20210108509480859 -0.29500356678138739;
	setAttr -s 5 ".kox[0:4]"  0.95549615152875389 0.98044255957801296 
		0.9595578102291098 0.97936466722232784 0.95549615152875389;
	setAttr -s 5 ".koy[0:4]"  -0.29500356678138739 -0.19680545563605314 
		0.28151164954281299 0.20210108509480859 -0.29500356678138739;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateX";
	rename -uid "8CED9492-4AF3-681C-8412-D1B97F051043";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateY";
	rename -uid "B1C5C2EA-4538-D49D-BF55-8D93DEC65C0F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateZ";
	rename -uid "F8D77D52-4854-AC92-F573-17B87FAFCA62";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -20.841044057662941 10 -28.056344503865102
		 16 -27.085142199806945 28 -19.870336460180358 32 -20.841044057662941;
	setAttr -s 5 ".kix[0:4]"  0.9561909797864746 0.98080178704670185 
		0.96027756872537395 0.97975488843408065 0.9561909797864746;
	setAttr -s 5 ".kiy[0:4]"  -0.29274359117661602 -0.19500731916006692 
		0.27904657497071123 0.20020079567654589 -0.29274359117661602;
	setAttr -s 5 ".kox[0:4]"  0.9561909797864746 0.98080178704670185 
		0.96027756872537395 0.97975488843408065 0.9561909797864746;
	setAttr -s 5 ".koy[0:4]"  -0.29274359117661602 -0.19500731916006672 
		0.27904657497071123 0.20020079567654589 -0.29274359117661602;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateX";
	rename -uid "CBAB78EA-4B99-A2BE-94C1-81A298CC4E5C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateY";
	rename -uid "6FB1383F-4F0F-7697-78FC-0494D1752FAA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateZ";
	rename -uid "4032F977-459F-54EB-BD4A-5785A756890D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -23.5785297396692 10 -32.317648438176413
		 16 -31.346446134118249 28 -22.424939420357781 32 -23.5785297396692;
	setAttr -s 5 ".kix[0:4]"  0.9378659777806917 0.97108166105038951 
		0.9410881941389585 0.96917612619996341 0.9378659777806917;
	setAttr -s 5 ".kiy[0:4]"  -0.34699770564294397 -0.23874758128956255 
		0.33816122020757178 0.24636890307835654 -0.34699770564294397;
	setAttr -s 5 ".kox[0:4]"  0.9378659777806917 0.97108166105038951 
		0.9410881941389585 0.96917612619996341 0.9378659777806917;
	setAttr -s 5 ".koy[0:4]"  -0.34699770564294397 -0.23874758128956289 
		0.33816122020757178 0.24636890307835654 -0.34699770564294397;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateX";
	rename -uid "0FB69987-4EDA-F2E8-3B8D-8EA88DE0EEE0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateY";
	rename -uid "A89C6ADE-4759-E2CF-7905-BEAE8830850D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateZ";
	rename -uid "6FF23BEF-47A0-FE90-40E7-7C85337ADBEA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.251062596616801 10 -29.410856260502204
		 16 -28.439653956444044 28 -21.287016706601424 32 -22.251062596616801;
	setAttr -s 5 ".kix[0:4]"  0.95681154574686811 0.98112194640409089 
		0.96091974783607614 0.98010260220324141 0.95681154574686811;
	setAttr -s 5 ".kiy[0:4]"  -0.29070890238430741 -0.19339008838161278 
		0.27682709083225904 0.19849153421351412 -0.29070890238430741;
	setAttr -s 5 ".kox[0:4]"  0.95681154574686811 0.98112194640409089 
		0.96091974783607614 0.98010260220324141 0.95681154574686811;
	setAttr -s 5 ".koy[0:4]"  -0.29070890238430741 -0.19339008838161301 
		0.27682709083225904 0.19849153421351412 -0.29070890238430741;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateX";
	rename -uid "E96245A4-43D5-7B2F-30A4-419E5C2E9EAC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateY";
	rename -uid "C451F146-449B-EDAD-7DB8-46BFFB1F7FC5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateZ";
	rename -uid "1F152244-4E39-7855-121B-128BAC830635";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -15.786237504395437 10 -26.772953188028787
		 16 -23.297449617090848 28 -14.254228069157286 32 -15.786237504395437;
	setAttr -s 5 ".kix[0:4]"  0.90565054002134338 0.97032224147771018 
		0.93961345941384533 0.97109371083587148 0.90565054002134338;
	setAttr -s 5 ".kiy[0:4]"  -0.42402488058962889 -0.2418155240956881 
		0.34223755914327431 0.23869856466894993 -0.42402488058962889;
	setAttr -s 5 ".kox[0:4]"  0.90565054002134338 0.97032224147771007 
		0.93961345941384533 0.97109371083587148 0.90565054002134338;
	setAttr -s 5 ".koy[0:4]"  -0.42402488058962889 -0.24181552409568816 
		0.34223755914327431 0.23869856466894993 -0.42402488058962889;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateX";
	rename -uid "BA77520A-409B-BE12-8745-50BD1D21D629";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateY";
	rename -uid "5BB97FBD-4CD1-921C-3490-9EA50ADE52C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateZ";
	rename -uid "5729F7A6-4063-2120-CF18-13BED3223F77";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.994170880952598 10 -34.733291660300907
		 16 -33.762089356242747 28 -24.840580311906752 32 -25.994170880952598;
	setAttr -s 5 ".kix[0:4]"  0.93786595117699623 0.97108164659070773 
		0.94108816602623369 0.96917611044167984 0.93786595117699623;
	setAttr -s 5 ".kiy[0:4]"  -0.34699777754744804 -0.23874764010284985 
		0.338161298444071 0.24636896506893219 -0.34699777754744804;
	setAttr -s 5 ".kox[0:4]"  0.93786595117699623 0.97108164659070773 
		0.94108816602623369 0.96917611044167984 0.93786595117699623;
	setAttr -s 5 ".koy[0:4]"  -0.34699777754744804 -0.23874764010284988 
		0.338161298444071 0.24636896506893219 -0.34699777754744804;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateX";
	rename -uid "80A6AAA8-471E-13C5-FDAF-9898185A0B96";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateY";
	rename -uid "3FD0A1CB-4F69-18FB-8ED3-878B58905394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateZ";
	rename -uid "23C4979B-4568-04B7-2BC0-8C9FE05E8412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.188168748340197 16 -6.9300061238101325
		 28 -3.9915275990682129 32 -4.188168748340197;
	setAttr -s 4 ".kix[0:3]"  0.9970540195511014 1 0.99599872895114194 
		0.9970540195511014;
	setAttr -s 4 ".kiy[0:3]"  -0.076702556000382754 0 0.08936739857302399 
		-0.076702556000382754;
	setAttr -s 4 ".kox[0:3]"  0.9970540195511014 1 0.99599872895114194 
		0.9970540195511014;
	setAttr -s 4 ".koy[0:3]"  -0.076702556000382754 0 0.08936739857302399 
		-0.076702556000382754;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateX";
	rename -uid "F75FF979-4D88-71F2-1680-83988B5FCC94";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateY";
	rename -uid "0CD65600-4490-EF0D-5EB2-BFB444D3B7C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateZ";
	rename -uid "4DC1B220-4160-C62D-77AF-A39C77E8550E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.6802135078057265 10 -20.597035027393378
		 16 -17.121531456455443 28 -7.3010843919254151 32 -8.6802135078057265;
	setAttr -s 5 ".kix[0:4]"  0.89540376448010561 0.965275827148531 0.92990105304359982 
		0.9638988052784957 0.89540376448010561;
	setAttr -s 5 ".kiy[0:4]"  -0.44525509380000999 -0.26123280330524984 
		0.36780977630890138 0.26626883629649273 -0.44525509380000999;
	setAttr -s 5 ".kox[0:4]"  0.89540376448010561 0.96527582714853088 
		0.92990105304359982 0.9638988052784957 0.89540376448010561;
	setAttr -s 5 ".koy[0:4]"  -0.44525509380000999 -0.26123280330524967 
		0.36780977630890138 0.26626883629649273 -0.44525509380000999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateX";
	rename -uid "0F64F33A-4A8C-3BAF-663F-64BD9357E370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateY";
	rename -uid "F0BF3449-4945-E42C-FFE0-9CA65EF4C171";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateZ";
	rename -uid "A9FF7EE3-4664-3CA3-5F6A-34B9B4815C9C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -6.3115819269718285 10 -18.893253632920519
		 16 -15.417750061982584 28 -4.6924738851498233 32 -6.3115819269718285;
	setAttr -s 5 ".kix[0:4]"  0.88316770267452638 0.95898883095340759 
		0.91800824172980378 0.95835255709685607 0.88316770267452638;
	setAttr -s 5 ".kiy[0:4]"  -0.46905736211320631 -0.28344386059079946 
		0.39656130436056708 0.28558777338310087 -0.46905736211320631;
	setAttr -s 5 ".kox[0:4]"  0.88316770267452638 0.95898883095340759 
		0.91800824172980378 0.95835255709685607 0.88316770267452638;
	setAttr -s 5 ".koy[0:4]"  -0.46905736211320631 -0.28344386059079957 
		0.39656130436056708 0.28558777338310087 -0.46905736211320631;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateX";
	rename -uid "15260C6D-466A-4F4C-87E4-4A9EC39F1712";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateZ";
	rename -uid "A7F40F20-4D4E-65F3-43A7-BFAC231CC2C8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateX";
	rename -uid "BF02F8F2-409C-4F5C-DD7B-4897F9925E51";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateY";
	rename -uid "DC862C3D-44C6-74F8-115B-29B277479DE8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateZ";
	rename -uid "F2AA623A-4FF8-EFFE-D9BA-C5ABCF40F9D0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateY";
	rename -uid "EFDCD97E-4C67-90BD-F00B-59BE30DB169E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateX";
	rename -uid "C11189E5-4186-4E09-E64F-9DB67B6C53DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateZ";
	rename -uid "4DE76EDE-4F92-0B07-6060-A3BE24B5148F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateX";
	rename -uid "6116A27D-4311-FB47-C24A-F6868BF99179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateY";
	rename -uid "CB9DB81F-4E23-3CC8-8F7D-01BDEBB23531";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateZ";
	rename -uid "95FC2FCB-438D-412C-C0BE-AB953A1543CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateY";
	rename -uid "6A95C9E0-489B-00C8-9473-E8861E060345";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateX";
	rename -uid "A53BC219-4252-98D2-5113-C2A4C276D8C6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateZ";
	rename -uid "9B10CD4F-4D21-89B4-F86A-2F9C3651E339";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateX";
	rename -uid "CE15F771-4DCF-7EF0-BBDC-6DBFD856A588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateY";
	rename -uid "8AD9C42C-4211-ACEC-B5FE-FAAA562D6456";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateZ";
	rename -uid "73660B46-47D2-F9F9-138E-FCA27022692F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateY";
	rename -uid "BDD909EE-481C-F8F5-ACC2-849849A070F7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateX";
	rename -uid "9C6F2412-46CC-3B07-0F11-40A3A3898916";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateZ";
	rename -uid "E77B9634-4FB9-8F75-EB55-1FBB1E87E76D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateX";
	rename -uid "6824261F-4CF8-30B4-470F-C79722CCC4FE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateY";
	rename -uid "EF4BF60E-45AF-ACF1-36AA-8CB56729CEEE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateZ";
	rename -uid "007DD625-4D62-ECB8-EBC4-A397A4AE32A7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateY";
	rename -uid "C0AA1701-4678-6D07-8A19-C7849D4399E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateX";
	rename -uid "F106B885-4526-B232-C687-DB8E9CFC1130";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateY";
	rename -uid "431644FD-4744-8A38-1AC2-09AE9AE6F446";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateZ";
	rename -uid "81631732-43E2-D64A-F913-46AC504938DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.884175946286238 12 -13.962669255570313
		 16 -15.116259572412376 26 -23.855378250344391 32 -22.884175946286238;
	setAttr -s 5 ".kix[0:4]"  0.94108819441693481 0.96917612635577999 
		0.93786597804374672 0.97108166119336559 0.94108819441693481;
	setAttr -s 5 ".kiy[0:4]"  0.33816121943397587 0.24636890246539894 
		-0.3469977049319582 -0.23874758070802207 0.33816121943397587;
	setAttr -s 5 ".kox[0:4]"  0.94108819441693481 0.96917612635577999 
		0.93786597804374672 0.97108166119336559 0.94108819441693481;
	setAttr -s 5 ".koy[0:4]"  0.33816121943397587 0.24636890246539894 
		-0.3469977049319582 -0.23874758070802207 0.33816121943397587;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateX";
	rename -uid "7518808B-414D-3CFB-D27C-519D75316696";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateY";
	rename -uid "F4C372E3-4351-8DE2-8026-D48103867C0E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateZ";
	rename -uid "6D83DEF0-4B3F-237C-77AB-519863363E57";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.4828414619173547 12 -1.5929384947694323
		 16 -2.6359866020070166 26 -10.454043765975506 32 -9.4828414619173547;
	setAttr -s 5 ".kix[0:4]"  0.95303628699971321 0.97580522048948304 
		0.94923112193430292 0.9771687967601369 0.95303628699971321;
	setAttr -s 5 ".kiy[0:4]"  0.30285613030249253 0.21864165125947829 
		-0.31457952436759851 -0.21246445029309335 0.30285613030249253;
	setAttr -s 5 ".kox[0:4]"  0.95303628699971321 0.97580522048948304 
		0.94923112193430292 0.9771687967601369 0.95303628699971321;
	setAttr -s 5 ".koy[0:4]"  0.30285613030249253 0.21864165125947829 
		-0.31457952436759851 -0.21246445029309344 0.30285613030249253;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateX";
	rename -uid "433D3AA9-4263-C432-A2BF-C6ACE8331E8F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateY";
	rename -uid "8652EF32-436A-F57F-2700-7AB38282251C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateZ";
	rename -uid "4BD78593-4E2F-F33B-A157-77AEAA19AA00";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.423595895813417 12 -18.75536821925839
		 16 -19.469906762181285 26 -25.423595895813417 32 -25.423595895813417;
	setAttr -s 5 ".kix[0:4]"  0.96577454866914147 0.98154367631960537 
		0.970281346299944 0.98353171142881934 0.96577454866914147;
	setAttr -s 5 ".kiy[0:4]"  0.25938296232196134 0.19123810153050991 
		-0.24197956323286482 -0.18073564289839927 0.25938296232196134;
	setAttr -s 5 ".kox[0:4]"  0.96577454866914147 0.98154367631960537 
		0.970281346299944 0.98353171142881934 0.96577454866914147;
	setAttr -s 5 ".koy[0:4]"  0.25938296232196134 0.19123810153050991 
		-0.24197956323286482 -0.18073564289839916 0.25938296232196134;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateX";
	rename -uid "28EC7F73-4B94-01D1-BC1A-738CAB681FE6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateY";
	rename -uid "84DA3FE3-471A-4783-3F6B-C3B7E175CAEE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateZ";
	rename -uid "093C8E82-48CA-31F1-5D8B-678E60569767";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -26.926235481294736 12 -20.258007804739709
		 16 -20.972546347662611 26 -26.926235481294736 32 -26.926235481294736;
	setAttr -s 5 ".kix[0:4]"  0.96577454866914147 0.98154367631960548 
		0.970281346299944 0.98353171142881934 0.96577454866914147;
	setAttr -s 5 ".kiy[0:4]"  0.25938296232196129 0.19123810153050988 
		-0.24197956323286476 -0.18073564289839927 0.25938296232196129;
	setAttr -s 5 ".kox[0:4]"  0.96577454866914147 0.98154367631960548 
		0.970281346299944 0.98353171142881934 0.96577454866914147;
	setAttr -s 5 ".koy[0:4]"  0.25938296232196129 0.19123810153050988 
		-0.24197956323286476 -0.18073564289839911 0.25938296232196129;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateX";
	rename -uid "108CBD50-4DC1-4E00-E0B6-1793EDFACC98";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateY";
	rename -uid "31491DF3-432A-0C42-CF31-81BC7ED4A55D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateZ";
	rename -uid "29089EAF-4413-9ECF-ECE9-75887581ADFE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -18.340066928735716 12 -11.18742967889313
		 16 -12.151475568908504 26 -19.311269232793876 32 -18.340066928735716;
	setAttr -s 5 ".kix[0:4]"  0.96091974783607637 0.98010260220324152 
		0.95681154574686844 0.98112194640409101 0.96091974783607637;
	setAttr -s 5 ".kiy[0:4]"  0.27682709083225848 0.19849153421351373 
		-0.29070890238430686 -0.19339008838161256 0.27682709083225848;
	setAttr -s 5 ".kox[0:4]"  0.96091974783607637 0.98010260220324152 
		0.95681154574686844 0.98112194640409101 0.96091974783607637;
	setAttr -s 5 ".koy[0:4]"  0.27682709083225848 0.19849153421351373 
		-0.29070890238430686 -0.19339008838161262 0.27682709083225848;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateX";
	rename -uid "CAF3C57B-46B3-2BF3-8F0F-DFB334B4725E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateY";
	rename -uid "62C01001-45E4-8EB2-DB4E-1691F04325A2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateZ";
	rename -uid "0C086F51-47D4-716F-412E-498020616F7C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -31.224719789974927 12 -22.376554547149613
		 16 -23.522285910480559 26 -32.195922094033087 32 -31.224719789974927;
	setAttr -s 5 ".kix[0:4]"  0.94197048331735567 0.96967031509206436 
		0.93870118713716022 0.97153514347799597 0.94197048331735567;
	setAttr -s 5 ".kiy[0:4]"  0.3356957082818714 0.24441661160661068 
		-0.34473189766438195 -0.23689547270302552 0.3356957082818714;
	setAttr -s 5 ".kox[0:4]"  0.94197048331735567 0.96967031509206436 
		0.93870118713716022 0.97153514347799597 0.94197048331735567;
	setAttr -s 5 ".koy[0:4]"  0.3356957082818714 0.24441661160661068 
		-0.34473189766438195 -0.23689547270302524 0.3356957082818714;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateX";
	rename -uid "1FC7E35B-4633-275C-B77E-B9902EA788D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateY";
	rename -uid "258120D2-4977-A586-C413-9F9647BB4D8C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateZ";
	rename -uid "A90F61D9-4495-70D7-1BB4-1D9EE2B7C4F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -28.753067421541566 12 -21.469067090064797
		 16 -22.447189281834952 26 -29.724269725599722 32 -28.753067421541566;
	setAttr -s 5 ".kix[0:4]"  0.9595578102291098 0.97936466722232784 
		0.95549615152875389 0.98044255957801296 0.9595578102291098;
	setAttr -s 5 ".kiy[0:4]"  0.28151164954281299 0.20210108509480859 
		-0.29500356678138739 -0.19680545563605309 0.28151164954281299;
	setAttr -s 5 ".kox[0:4]"  0.9595578102291098 0.97936466722232784 
		0.95549615152875389 0.98044255957801296 0.9595578102291098;
	setAttr -s 5 ".koy[0:4]"  0.28151164954281299 0.20210108509480859 
		-0.29500356678138739 -0.19680545563605314 0.28151164954281299;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateX";
	rename -uid "3D2F6F2C-42D8-6B6D-32B6-4FA8F3C3C06B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateY";
	rename -uid "6E82C3E2-42F2-42CF-88B5-8583B5E01AD0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateZ";
	rename -uid "C823A7EB-4E64-5D7A-6142-71A1C395BB74";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -27.085142199806945 12 -19.870336460180358
		 16 -20.841044057662941 26 -28.056344503865102 32 -27.085142199806945;
	setAttr -s 5 ".kix[0:4]"  0.96027756872537395 0.97975488843408065 
		0.9561909797864746 0.98080178704670185 0.96027756872537395;
	setAttr -s 5 ".kiy[0:4]"  0.27904657497071123 0.20020079567654589 
		-0.29274359117661602 -0.19500731916006692 0.27904657497071123;
	setAttr -s 5 ".kox[0:4]"  0.96027756872537395 0.97975488843408065 
		0.9561909797864746 0.98080178704670185 0.96027756872537395;
	setAttr -s 5 ".koy[0:4]"  0.27904657497071123 0.20020079567654589 
		-0.29274359117661602 -0.19500731916006672 0.27904657497071123;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateX";
	rename -uid "A930D4F9-47F3-9841-DDF5-D0B26D760E82";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateY";
	rename -uid "47DFBE63-4D95-55FB-EA66-4B806781EA80";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateZ";
	rename -uid "6CAF8FC2-4E8B-51F7-F721-7AB1B64040F9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -31.346446134118249 12 -22.424939420357781
		 16 -23.5785297396692 26 -32.317648438176413 32 -31.346446134118249;
	setAttr -s 5 ".kix[0:4]"  0.9410881941389585 0.96917612619996341 
		0.9378659777806917 0.97108166105038951 0.9410881941389585;
	setAttr -s 5 ".kiy[0:4]"  0.33816122020757178 0.24636890307835654 
		-0.34699770564294397 -0.23874758128956255 0.33816122020757178;
	setAttr -s 5 ".kox[0:4]"  0.9410881941389585 0.96917612619996341 
		0.9378659777806917 0.97108166105038951 0.9410881941389585;
	setAttr -s 5 ".koy[0:4]"  0.33816122020757178 0.24636890307835654 
		-0.34699770564294397 -0.23874758128956289 0.33816122020757178;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateX";
	rename -uid "7FB0247B-4D80-0819-97A7-099EB79237B4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateY";
	rename -uid "36E91990-46E3-DDF8-2094-D9ACADE9EC32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateZ";
	rename -uid "E24B640C-426E-98AE-3DFF-30B1A1E6BCB4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -28.439653956444044 12 -21.287016706601424
		 16 -22.251062596616801 26 -29.410856260502204 32 -28.439653956444044;
	setAttr -s 5 ".kix[0:4]"  0.96091974783607614 0.98010260220324141 
		0.95681154574686811 0.98112194640409089 0.96091974783607614;
	setAttr -s 5 ".kiy[0:4]"  0.27682709083225904 0.19849153421351412 
		-0.29070890238430741 -0.19339008838161278 0.27682709083225904;
	setAttr -s 5 ".kox[0:4]"  0.96091974783607614 0.98010260220324141 
		0.95681154574686811 0.98112194640409089 0.96091974783607614;
	setAttr -s 5 ".koy[0:4]"  0.27682709083225904 0.19849153421351412 
		-0.29070890238430741 -0.19339008838161301 0.27682709083225904;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateX";
	rename -uid "E2CD4A91-4D37-B7C7-2DD8-EBA5E379D108";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateY";
	rename -uid "357D4B84-467F-87AC-45D9-A3A9E5700B7D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateZ";
	rename -uid "9DF0B5D2-43E4-2096-DBFE-3F916DF7FCAC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -23.297449617090848 12 -14.254228069157286
		 16 -15.786237504395437 26 -26.772953188028787 32 -23.297449617090848;
	setAttr -s 5 ".kix[0:4]"  0.93961345941384533 0.97109371083587148 
		0.90565054002134338 0.97032224147771018 0.93961345941384533;
	setAttr -s 5 ".kiy[0:4]"  0.34223755914327431 0.23869856466894993 
		-0.42402488058962889 -0.2418155240956881 0.34223755914327431;
	setAttr -s 5 ".kox[0:4]"  0.93961345941384533 0.97109371083587148 
		0.90565054002134338 0.97032224147771007 0.93961345941384533;
	setAttr -s 5 ".koy[0:4]"  0.34223755914327431 0.23869856466894993 
		-0.42402488058962889 -0.24181552409568816 0.34223755914327431;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateX";
	rename -uid "2A2A381A-4BBD-C5BE-ED44-1E86D145B313";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateY";
	rename -uid "81426852-45B2-3302-EFCF-12AA7A32A2E7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateZ";
	rename -uid "121189B7-4CD4-460A-D619-F3BA1936ADB3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -33.762089356242747 12 -24.840580311906752
		 16 -25.994170880952598 26 -34.733291660300907 32 -33.762089356242747;
	setAttr -s 5 ".kix[0:4]"  0.94108816602623369 0.96917611044167984 
		0.93786595117699623 0.97108164659070773 0.94108816602623369;
	setAttr -s 5 ".kiy[0:4]"  0.338161298444071 0.24636896506893219 -0.34699777754744804 
		-0.23874764010284985 0.338161298444071;
	setAttr -s 5 ".kox[0:4]"  0.94108816602623369 0.96917611044167984 
		0.93786595117699623 0.97108164659070773 0.94108816602623369;
	setAttr -s 5 ".koy[0:4]"  0.338161298444071 0.24636896506893219 -0.34699777754744804 
		-0.23874764010284988 0.338161298444071;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateX";
	rename -uid "73C175DD-4F6F-073D-3BFA-53BFC0F0452A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateY";
	rename -uid "CE1079A1-4572-72D4-E740-318DC645DC23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateZ";
	rename -uid "8ABFACD3-4283-6CF2-08E8-2397933A7443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -6.9300061238101325 12 -3.9915275990682129
		 16 -4.188168748340197 32 -6.9300061238101325;
	setAttr -s 4 ".kix[0:3]"  1 0.99599872895114194 0.9970540195511014 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.08936739857302399 -0.076702556000382754 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.99599872895114194 0.9970540195511014 
		0;
	setAttr -s 4 ".koy[0:3]"  0 0.08936739857302399 -0.076702556000382754 
		0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateX";
	rename -uid "AE24327F-4FE2-6079-D062-BBA9EC360EB7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateY";
	rename -uid "0D978153-41DB-4028-252E-C0B066BAFBD3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateZ";
	rename -uid "F20D5ABC-4FDD-C39E-0259-77B75FBE6520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.121531456455443 12 -7.3010843919254151
		 16 -8.6802135078057265 26 -20.597035027393378 32 -17.121531456455443;
	setAttr -s 5 ".kix[0:4]"  0.92990105304359982 0.9638988052784957 
		0.89540376448010561 0.965275827148531 0.92990105304359982;
	setAttr -s 5 ".kiy[0:4]"  0.36780977630890138 0.26626883629649273 
		-0.44525509380000999 -0.26123280330524984 0.36780977630890138;
	setAttr -s 5 ".kox[0:4]"  0.92990105304359982 0.9638988052784957 
		0.89540376448010561 0.96527582714853088 0.92990105304359982;
	setAttr -s 5 ".koy[0:4]"  0.36780977630890138 0.26626883629649273 
		-0.44525509380000999 -0.26123280330524967 0.36780977630890138;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateX";
	rename -uid "275F05AE-4D27-C8C9-EBD4-7DBD374C8D57";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateY";
	rename -uid "2D0507E8-4162-B30F-C2CC-14A348D58A1F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateZ";
	rename -uid "BDE3E151-492E-335D-98D6-34BDFD455447";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -15.417750061982584 12 -4.6924738851498233
		 16 -6.3115819269718285 26 -18.893253632920519 32 -15.417750061982584;
	setAttr -s 5 ".kix[0:4]"  0.91800824172980378 0.95835255709685607 
		0.88316770267452638 0.95898883095340759 0.91800824172980378;
	setAttr -s 5 ".kiy[0:4]"  0.39656130436056708 0.28558777338310087 
		-0.46905736211320631 -0.28344386059079946 0.39656130436056708;
	setAttr -s 5 ".kox[0:4]"  0.91800824172980378 0.95835255709685607 
		0.88316770267452638 0.95898883095340759 0.91800824172980378;
	setAttr -s 5 ".koy[0:4]"  0.39656130436056708 0.28558777338310087 
		-0.46905736211320631 -0.28344386059079957 0.39656130436056708;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateX";
	rename -uid "DE36461E-4C58-29DA-B18D-91B3B5C73986";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Sword_parent_switch";
	rename -uid "24DDAD17-4B74-BF18-B4CD-71AB1936CFFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 16 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_SwordTip_translateZ";
	rename -uid "E5FE3238-45A1-7B30-B7DF-40BF7A6F7488";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -91.5 32 -91.5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "73E80554-4C91-2B60-ACE6-11875B1C5F3D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 32 -ast 0 -aet 32 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Rig_R_eye_translateZ";
	rename -uid "0003E076-4D4A-2D8F-4C71-8186C5FB93A1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "Rig_R_eye_rotateX";
	rename -uid "5DF25DFC-44FC-94B6-3417-14A3D60516BA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "Rig_R_eye_rotateY";
	rename -uid "0D7F4AB7-44CC-C767-5205-9296D5F6B75A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "Rig_R_eye_rotateZ";
	rename -uid "1ECE2348-43A4-3550-6D93-6E8363090BDC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "Rig_L_eye_translateZ";
	rename -uid "D2748582-4118-B9B6-DB9A-A396BAA0F9E8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "Rig_L_eye_rotateX";
	rename -uid "1A56789C-4F6F-BAB8-B6A5-0A9D44CE9665";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "Rig_L_eye_rotateY";
	rename -uid "C917B226-4BDA-3607-6171-A1A7A64878AD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "Rig_L_eye_rotateZ";
	rename -uid "D72ECEC6-4CD0-7D7B-FA14-52A6BEFF0ECC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 15 0 32 0;
	setAttr -s 4 ".kit[0:3]"  18 1 1 18;
	setAttr -s 4 ".kot[0:3]"  18 1 1 18;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode mute -n "Rig_C_root1_translateZ1";
	rename -uid "2A3C9AD2-4402-B580-C084-93B1BCD4E96E";
	setAttr ".ihi" 0;
	setAttr ".h" 0;
	setAttr ".m" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "17D99806-4AF8-80D7-70B4-8E9A2C63611A";
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
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 0.453735\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
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
createNode animCurveTA -n "Rig_C_BackWeapon1_rotateX";
	rename -uid "96186C3A-466B-DCA4-B012-FC8F0F4A0565";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "Rig_C_BackWeapon1_rotateY";
	rename -uid "5CCD9BDE-4F18-AC93-68D6-EBAF9A2856A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 29.999999999999996 32 29.999999999999996;
createNode animCurveTA -n "Rig_C_BackWeapon1_rotateZ";
	rename -uid "62C9D207-48E2-C8F8-D359-069F67342411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "Rig_R_Leg1_IK_parent_switch";
	rename -uid "CFB46800-4E52-FBEA-76B7-29A3B739F543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Rig_C_Weapon_set_rotateZ";
	rename -uid "20702F92-412F-52DE-BC0B-8496CB9699F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode pairBlend -n "pairBlend1";
	rename -uid "87F3267D-4374-1C33-E9C3-558AFB12A3D8";
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "E1B1F091-4A92-A101-C20F-8799EBCFB336";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.3104820485438111 32 7.3104820485438111;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "7EB46920-4DA9-59BF-E496-F7A267A29DD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.444508780000803 32 -64.444508780000803;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "1B46B1A9-4955-34CD-DE21-BE85896D0EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 14.761811655833412 32 14.761811655833412;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "C638CD0F-488A-2A76-DA32-B285F87479CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -78.044303342487751 32 -78.044303342487751;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "C1A9D490-4C82-54EC-64ED-E5B8545CE968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -106.10998439611107 32 -106.10998439611107;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "BF9AAFC5-4F1C-2089-3D64-959ABD47137F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 69.1585786152434 32 69.1585786152434;
createNode animCurveTU -n "Rig_R_Sword_blendParent1";
	rename -uid "4761D20D-4262-9D13-9758-60B11732485A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
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
	setAttr -av -k on ".mcfr" 30;
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
	setAttr -av -k on ".hwfr" 30;
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
connectAttr "Rig_C_root1_rotateZ.o" "ab_rig_ARN.phl[551]";
connectAttr "Rig_C_root1_rotateX.o" "ab_rig_ARN.phl[552]";
connectAttr "Rig_C_root1_rotateY.o" "ab_rig_ARN.phl[553]";
connectAttr "Rig_C_root1_translateZ1.o" "ab_rig_ARN.phl[554]";
connectAttr "Rig_C_root1_translateY.o" "ab_rig_ARN.phl[555]";
connectAttr "Rig_C_root1_translateX.o" "ab_rig_ARN.phl[556]";
connectAttr "Rig_C_root2_rotateX.o" "ab_rig_ARN.phl[557]";
connectAttr "Rig_C_root2_rotateY.o" "ab_rig_ARN.phl[558]";
connectAttr "Rig_C_root2_rotateZ.o" "ab_rig_ARN.phl[559]";
connectAttr "Rig_C_root2_translateZ.o" "ab_rig_ARN.phl[560]";
connectAttr "Rig_C_root2_translateY.o" "ab_rig_ARN.phl[561]";
connectAttr "Rig_C_root2_translateX.o" "ab_rig_ARN.phl[562]";
connectAttr "Rig_C_Waist_translateZ.o" "ab_rig_ARN.phl[563]";
connectAttr "Rig_C_Waist_translateY.o" "ab_rig_ARN.phl[564]";
connectAttr "Rig_C_Waist_translateX.o" "ab_rig_ARN.phl[565]";
connectAttr "Rig_C_Waist_rotateZ.o" "ab_rig_ARN.phl[566]";
connectAttr "Rig_C_Waist_rotateX.o" "ab_rig_ARN.phl[567]";
connectAttr "Rig_C_Waist_rotateY.o" "ab_rig_ARN.phl[568]";
connectAttr "Rig_C_Hips_rotateY.o" "ab_rig_ARN.phl[569]";
connectAttr "Rig_C_Hips_rotateZ.o" "ab_rig_ARN.phl[570]";
connectAttr "Rig_C_Hips_rotateX.o" "ab_rig_ARN.phl[571]";
connectAttr "Rig_C_Tail1_parent_swaitch.o" "ab_rig_ARN.phl[572]";
connectAttr "Rig_C_Tail1_rotateY.o" "ab_rig_ARN.phl[573]";
connectAttr "Rig_C_Tail1_rotateZ.o" "ab_rig_ARN.phl[574]";
connectAttr "Rig_C_Tail1_rotateX.o" "ab_rig_ARN.phl[575]";
connectAttr "Rig_C_Tail2_rotateY.o" "ab_rig_ARN.phl[576]";
connectAttr "Rig_C_Tail2_rotateZ.o" "ab_rig_ARN.phl[577]";
connectAttr "Rig_C_Tail2_rotateX.o" "ab_rig_ARN.phl[578]";
connectAttr "Rig_C_Tail3_rotateX.o" "ab_rig_ARN.phl[579]";
connectAttr "Rig_C_Tail3_rotateY.o" "ab_rig_ARN.phl[580]";
connectAttr "Rig_C_Tail3_rotateZ.o" "ab_rig_ARN.phl[581]";
connectAttr "Rig_C_Tail4_rotateX.o" "ab_rig_ARN.phl[582]";
connectAttr "Rig_C_Tail4_rotateY.o" "ab_rig_ARN.phl[583]";
connectAttr "Rig_C_Tail4_rotateZ.o" "ab_rig_ARN.phl[584]";
connectAttr "Rig_C_Spine_rotateX.o" "ab_rig_ARN.phl[585]";
connectAttr "Rig_C_Spine_rotateY.o" "ab_rig_ARN.phl[586]";
connectAttr "Rig_C_Spine_rotateZ.o" "ab_rig_ARN.phl[587]";
connectAttr "Rig_C_Chest_rotateX.o" "ab_rig_ARN.phl[588]";
connectAttr "Rig_C_Chest_rotateY.o" "ab_rig_ARN.phl[589]";
connectAttr "Rig_C_Chest_rotateZ.o" "ab_rig_ARN.phl[590]";
connectAttr "Rig_C_Neck_rotateX.o" "ab_rig_ARN.phl[591]";
connectAttr "Rig_C_Neck_rotateY.o" "ab_rig_ARN.phl[592]";
connectAttr "Rig_C_Neck_rotateZ.o" "ab_rig_ARN.phl[593]";
connectAttr "Rig_C_Head_parent_switch.o" "ab_rig_ARN.phl[594]";
connectAttr "Rig_C_Head_rotateX.o" "ab_rig_ARN.phl[595]";
connectAttr "Rig_C_Head_rotateY.o" "ab_rig_ARN.phl[596]";
connectAttr "Rig_C_Head_rotateZ.o" "ab_rig_ARN.phl[597]";
connectAttr "Rig_C_Other_L_Arm_FKIK.o" "ab_rig_ARN.phl[598]";
connectAttr "Rig_C_Other_R_Arm_FKIK.o" "ab_rig_ARN.phl[599]";
connectAttr "Rig_C_Other_L_Leg_FKIK.o" "ab_rig_ARN.phl[600]";
connectAttr "Rig_C_Other_R_Leg_FKIK.o" "ab_rig_ARN.phl[601]";
connectAttr "Rig_C_Other_sword.o" "ab_rig_ARN.phl[602]";
connectAttr "Rig_C_Other_tail.o" "ab_rig_ARN.phl[603]";
connectAttr "Rig_C_eye_translateY.o" "ab_rig_ARN.phl[604]";
connectAttr "Rig_C_eye_translateX.o" "ab_rig_ARN.phl[605]";
connectAttr "Rig_L_eye_translateY.o" "ab_rig_ARN.phl[606]";
connectAttr "Rig_L_eye_translateX.o" "ab_rig_ARN.phl[607]";
connectAttr "Rig_R_eye_translateY.o" "ab_rig_ARN.phl[608]";
connectAttr "Rig_R_eye_translateX.o" "ab_rig_ARN.phl[609]";
connectAttr "Rig_L_Clavicle_parent_switch.o" "ab_rig_ARN.phl[610]";
connectAttr "Rig_L_Clavicle_rotateX.o" "ab_rig_ARN.phl[611]";
connectAttr "Rig_L_Clavicle_rotateY.o" "ab_rig_ARN.phl[612]";
connectAttr "Rig_L_Clavicle_rotateZ.o" "ab_rig_ARN.phl[613]";
connectAttr "Rig_L_Shoulder_FK_rotateX.o" "ab_rig_ARN.phl[614]";
connectAttr "Rig_L_Shoulder_FK_rotateY.o" "ab_rig_ARN.phl[615]";
connectAttr "Rig_L_Shoulder_FK_rotateZ.o" "ab_rig_ARN.phl[616]";
connectAttr "Rig_L_Elbow_FK_rotateX.o" "ab_rig_ARN.phl[617]";
connectAttr "Rig_L_Elbow_FK_rotateY.o" "ab_rig_ARN.phl[618]";
connectAttr "Rig_L_Elbow_FK_rotateZ.o" "ab_rig_ARN.phl[619]";
connectAttr "Rig_L_Hand_FK_rotateX.o" "ab_rig_ARN.phl[620]";
connectAttr "Rig_L_Hand_FK_rotateY.o" "ab_rig_ARN.phl[621]";
connectAttr "Rig_L_Hand_FK_rotateZ.o" "ab_rig_ARN.phl[622]";
connectAttr "Rig_R_Clavicle_parent_switch.o" "ab_rig_ARN.phl[623]";
connectAttr "Rig_R_Clavicle_rotateX.o" "ab_rig_ARN.phl[624]";
connectAttr "Rig_R_Clavicle_rotateY.o" "ab_rig_ARN.phl[625]";
connectAttr "Rig_R_Clavicle_rotateZ.o" "ab_rig_ARN.phl[626]";
connectAttr "Rig_R_Shoulder_FK_rotateX.o" "ab_rig_ARN.phl[627]";
connectAttr "Rig_R_Shoulder_FK_rotateY.o" "ab_rig_ARN.phl[628]";
connectAttr "Rig_R_Shoulder_FK_rotateZ.o" "ab_rig_ARN.phl[629]";
connectAttr "Rig_R_Elbow_FK_rotateX.o" "ab_rig_ARN.phl[630]";
connectAttr "Rig_R_Elbow_FK_rotateY.o" "ab_rig_ARN.phl[631]";
connectAttr "Rig_R_Elbow_FK_rotateZ.o" "ab_rig_ARN.phl[632]";
connectAttr "Rig_R_Hand_FK_rotateX.o" "ab_rig_ARN.phl[633]";
connectAttr "Rig_R_Hand_FK_rotateY.o" "ab_rig_ARN.phl[634]";
connectAttr "Rig_R_Hand_FK_rotateZ.o" "ab_rig_ARN.phl[635]";
connectAttr "Rig_C_Weapon_set_rotateZ.o" "ab_rig_ARN.phl[636]";
connectAttr "Rig_L_Leg1_IK_rotateZ.o" "ab_rig_ARN.phl[637]";
connectAttr "Rig_L_Leg1_IK_rotateX.o" "ab_rig_ARN.phl[638]";
connectAttr "Rig_L_Leg1_IK_rotateY.o" "ab_rig_ARN.phl[639]";
connectAttr "Rig_L_Leg1_IK_translateZ.o" "ab_rig_ARN.phl[640]";
connectAttr "Rig_L_Leg1_IK_translateY.o" "ab_rig_ARN.phl[641]";
connectAttr "Rig_L_Leg1_IK_translateX.o" "ab_rig_ARN.phl[642]";
connectAttr "Rig_L_Leg2_IK_rotateX.o" "ab_rig_ARN.phl[643]";
connectAttr "Rig_L_Leg2_IK_rotateY.o" "ab_rig_ARN.phl[644]";
connectAttr "Rig_L_Leg2_IK_rotateZ.o" "ab_rig_ARN.phl[645]";
connectAttr "Rig_L_Leg3_IK_rotateX.o" "ab_rig_ARN.phl[646]";
connectAttr "Rig_L_Leg3_IK_rotateY.o" "ab_rig_ARN.phl[647]";
connectAttr "Rig_L_Leg3_IK_rotateZ.o" "ab_rig_ARN.phl[648]";
connectAttr "Rig_L_Leg4_IK_rotateX.o" "ab_rig_ARN.phl[649]";
connectAttr "Rig_L_Leg4_IK_rotateY.o" "ab_rig_ARN.phl[650]";
connectAttr "Rig_L_Leg4_IK_rotateZ.o" "ab_rig_ARN.phl[651]";
connectAttr "Rig_L_Leg5_IK_rotateX.o" "ab_rig_ARN.phl[652]";
connectAttr "Rig_L_Leg5_IK_rotateY.o" "ab_rig_ARN.phl[653]";
connectAttr "Rig_L_Leg5_IK_rotateZ.o" "ab_rig_ARN.phl[654]";
connectAttr "Rig_L_Leg6_IK_rotateX.o" "ab_rig_ARN.phl[655]";
connectAttr "Rig_L_Leg6_IK_rotateY.o" "ab_rig_ARN.phl[656]";
connectAttr "Rig_L_Leg6_IK_rotateZ.o" "ab_rig_ARN.phl[657]";
connectAttr "Rig_L_LegPole_IK_translateZ.o" "ab_rig_ARN.phl[658]";
connectAttr "Rig_L_LegPole_IK_translateY.o" "ab_rig_ARN.phl[659]";
connectAttr "Rig_L_LegPole_IK_translateX.o" "ab_rig_ARN.phl[660]";
connectAttr "Rig_R_Leg1_IK_rotateX.o" "ab_rig_ARN.phl[661]";
connectAttr "Rig_R_Leg1_IK_rotateY.o" "ab_rig_ARN.phl[662]";
connectAttr "Rig_R_Leg1_IK_rotateZ.o" "ab_rig_ARN.phl[663]";
connectAttr "Rig_R_Leg1_IK_translateZ.o" "ab_rig_ARN.phl[664]";
connectAttr "Rig_R_Leg1_IK_translateY.o" "ab_rig_ARN.phl[665]";
connectAttr "Rig_R_Leg1_IK_translateX.o" "ab_rig_ARN.phl[666]";
connectAttr "Rig_R_Leg2_IK_rotateX.o" "ab_rig_ARN.phl[667]";
connectAttr "Rig_R_Leg2_IK_rotateY.o" "ab_rig_ARN.phl[668]";
connectAttr "Rig_R_Leg2_IK_rotateZ.o" "ab_rig_ARN.phl[669]";
connectAttr "Rig_R_Leg3_IK_rotateX.o" "ab_rig_ARN.phl[670]";
connectAttr "Rig_R_Leg3_IK_rotateY.o" "ab_rig_ARN.phl[671]";
connectAttr "Rig_R_Leg3_IK_rotateZ.o" "ab_rig_ARN.phl[672]";
connectAttr "Rig_R_Leg4_IK_rotateX.o" "ab_rig_ARN.phl[673]";
connectAttr "Rig_R_Leg4_IK_rotateY.o" "ab_rig_ARN.phl[674]";
connectAttr "Rig_R_Leg4_IK_rotateZ.o" "ab_rig_ARN.phl[675]";
connectAttr "Rig_R_Leg5_IK_rotateX.o" "ab_rig_ARN.phl[676]";
connectAttr "Rig_R_Leg5_IK_rotateY.o" "ab_rig_ARN.phl[677]";
connectAttr "Rig_R_Leg5_IK_rotateZ.o" "ab_rig_ARN.phl[678]";
connectAttr "Rig_R_Leg6_IK_rotateX.o" "ab_rig_ARN.phl[679]";
connectAttr "Rig_R_Leg6_IK_rotateY.o" "ab_rig_ARN.phl[680]";
connectAttr "Rig_R_Leg6_IK_rotateZ.o" "ab_rig_ARN.phl[681]";
connectAttr "Rig_R_LegPole_IK_translateZ.o" "ab_rig_ARN.phl[682]";
connectAttr "Rig_R_LegPole_IK_translateY.o" "ab_rig_ARN.phl[683]";
connectAttr "Rig_R_LegPole_IK_translateX.o" "ab_rig_ARN.phl[684]";
connectAttr "Rig_L_FingerIndex1_rotateX.o" "ab_rig_ARN.phl[685]";
connectAttr "Rig_L_FingerIndex1_rotateY.o" "ab_rig_ARN.phl[686]";
connectAttr "Rig_L_FingerIndex1_rotateZ.o" "ab_rig_ARN.phl[687]";
connectAttr "Rig_L_FingerIndex2_rotateX.o" "ab_rig_ARN.phl[688]";
connectAttr "Rig_L_FingerIndex2_rotateY.o" "ab_rig_ARN.phl[689]";
connectAttr "Rig_L_FingerIndex2_rotateZ.o" "ab_rig_ARN.phl[690]";
connectAttr "Rig_L_FingerIndex3_rotateX.o" "ab_rig_ARN.phl[691]";
connectAttr "Rig_L_FingerIndex3_rotateY.o" "ab_rig_ARN.phl[692]";
connectAttr "Rig_L_FingerIndex3_rotateZ.o" "ab_rig_ARN.phl[693]";
connectAttr "Rig_L_FingerMiddle1_rotateX.o" "ab_rig_ARN.phl[694]";
connectAttr "Rig_L_FingerMiddle1_rotateY.o" "ab_rig_ARN.phl[695]";
connectAttr "Rig_L_FingerMiddle1_rotateZ.o" "ab_rig_ARN.phl[696]";
connectAttr "Rig_L_FingerMiddle2_rotateX.o" "ab_rig_ARN.phl[697]";
connectAttr "Rig_L_FingerMiddle2_rotateY.o" "ab_rig_ARN.phl[698]";
connectAttr "Rig_L_FingerMiddle2_rotateZ.o" "ab_rig_ARN.phl[699]";
connectAttr "Rig_L_FingerMiddle3_rotateX.o" "ab_rig_ARN.phl[700]";
connectAttr "Rig_L_FingerMiddle3_rotateY.o" "ab_rig_ARN.phl[701]";
connectAttr "Rig_L_FingerMiddle3_rotateZ.o" "ab_rig_ARN.phl[702]";
connectAttr "Rig_L_FingerRing1_rotateX.o" "ab_rig_ARN.phl[703]";
connectAttr "Rig_L_FingerRing1_rotateY.o" "ab_rig_ARN.phl[704]";
connectAttr "Rig_L_FingerRing1_rotateZ.o" "ab_rig_ARN.phl[705]";
connectAttr "Rig_L_FingerRing2_rotateX.o" "ab_rig_ARN.phl[706]";
connectAttr "Rig_L_FingerRing2_rotateY.o" "ab_rig_ARN.phl[707]";
connectAttr "Rig_L_FingerRing2_rotateZ.o" "ab_rig_ARN.phl[708]";
connectAttr "Rig_L_FingerRing3_rotateX.o" "ab_rig_ARN.phl[709]";
connectAttr "Rig_L_FingerRing3_rotateY.o" "ab_rig_ARN.phl[710]";
connectAttr "Rig_L_FingerRing3_rotateZ.o" "ab_rig_ARN.phl[711]";
connectAttr "Rig_L_FingerPinky1_rotateX.o" "ab_rig_ARN.phl[712]";
connectAttr "Rig_L_FingerPinky1_rotateY.o" "ab_rig_ARN.phl[713]";
connectAttr "Rig_L_FingerPinky1_rotateZ.o" "ab_rig_ARN.phl[714]";
connectAttr "Rig_L_FingerPinky2_rotateX.o" "ab_rig_ARN.phl[715]";
connectAttr "Rig_L_FingerPinky2_rotateY.o" "ab_rig_ARN.phl[716]";
connectAttr "Rig_L_FingerPinky2_rotateZ.o" "ab_rig_ARN.phl[717]";
connectAttr "Rig_L_FingerPinky3_rotateX.o" "ab_rig_ARN.phl[718]";
connectAttr "Rig_L_FingerPinky3_rotateY.o" "ab_rig_ARN.phl[719]";
connectAttr "Rig_L_FingerPinky3_rotateZ.o" "ab_rig_ARN.phl[720]";
connectAttr "Rig_L_FingerThumb1_rotateX.o" "ab_rig_ARN.phl[721]";
connectAttr "Rig_L_FingerThumb1_rotateY.o" "ab_rig_ARN.phl[722]";
connectAttr "Rig_L_FingerThumb1_rotateZ.o" "ab_rig_ARN.phl[723]";
connectAttr "Rig_L_FingerThumb2_rotateX.o" "ab_rig_ARN.phl[724]";
connectAttr "Rig_L_FingerThumb2_rotateY.o" "ab_rig_ARN.phl[725]";
connectAttr "Rig_L_FingerThumb2_rotateZ.o" "ab_rig_ARN.phl[726]";
connectAttr "Rig_L_FingerThumb3_rotateX.o" "ab_rig_ARN.phl[727]";
connectAttr "Rig_L_FingerThumb3_rotateY.o" "ab_rig_ARN.phl[728]";
connectAttr "Rig_L_FingerThumb3_rotateZ.o" "ab_rig_ARN.phl[729]";
connectAttr "Rig_L_Weapon1_rotateX.o" "ab_rig_ARN.phl[730]";
connectAttr "Rig_L_Weapon1_rotateY.o" "ab_rig_ARN.phl[731]";
connectAttr "Rig_L_Weapon1_rotateZ.o" "ab_rig_ARN.phl[732]";
connectAttr "Rig_L_Weapon1_translateZ.o" "ab_rig_ARN.phl[733]";
connectAttr "Rig_L_Weapon1_translateY.o" "ab_rig_ARN.phl[734]";
connectAttr "Rig_L_Weapon1_translateX.o" "ab_rig_ARN.phl[735]";
connectAttr "Rig_L_Weapon2_translateZ.o" "ab_rig_ARN.phl[736]";
connectAttr "Rig_L_Weapon2_translateY.o" "ab_rig_ARN.phl[737]";
connectAttr "Rig_L_Weapon2_translateX.o" "ab_rig_ARN.phl[738]";
connectAttr "Rig_L_Weapon2_rotateX.o" "ab_rig_ARN.phl[739]";
connectAttr "Rig_L_Weapon2_rotateY.o" "ab_rig_ARN.phl[740]";
connectAttr "Rig_L_Weapon2_rotateZ.o" "ab_rig_ARN.phl[741]";
connectAttr "Rig_R_Weapon1_rotateX.o" "ab_rig_ARN.phl[742]";
connectAttr "Rig_R_Weapon1_rotateY.o" "ab_rig_ARN.phl[743]";
connectAttr "Rig_R_Weapon1_rotateZ.o" "ab_rig_ARN.phl[744]";
connectAttr "Rig_R_Weapon1_translateZ.o" "ab_rig_ARN.phl[745]";
connectAttr "Rig_R_Weapon1_translateY.o" "ab_rig_ARN.phl[746]";
connectAttr "Rig_R_Weapon1_translateX.o" "ab_rig_ARN.phl[747]";
connectAttr "Rig_R_Weapon2_translateZ.o" "ab_rig_ARN.phl[748]";
connectAttr "Rig_R_Weapon2_translateY.o" "ab_rig_ARN.phl[749]";
connectAttr "Rig_R_Weapon2_translateX.o" "ab_rig_ARN.phl[750]";
connectAttr "Rig_R_Weapon2_rotateX.o" "ab_rig_ARN.phl[751]";
connectAttr "Rig_R_Weapon2_rotateY.o" "ab_rig_ARN.phl[752]";
connectAttr "Rig_R_Weapon2_rotateZ.o" "ab_rig_ARN.phl[753]";
connectAttr "Rig_R_FingerIndex1_rotateX.o" "ab_rig_ARN.phl[754]";
connectAttr "Rig_R_FingerIndex1_rotateY.o" "ab_rig_ARN.phl[755]";
connectAttr "Rig_R_FingerIndex1_rotateZ.o" "ab_rig_ARN.phl[756]";
connectAttr "Rig_R_FingerIndex2_rotateX.o" "ab_rig_ARN.phl[757]";
connectAttr "Rig_R_FingerIndex2_rotateY.o" "ab_rig_ARN.phl[758]";
connectAttr "Rig_R_FingerIndex2_rotateZ.o" "ab_rig_ARN.phl[759]";
connectAttr "Rig_R_FingerIndex3_rotateX.o" "ab_rig_ARN.phl[760]";
connectAttr "Rig_R_FingerIndex3_rotateY.o" "ab_rig_ARN.phl[761]";
connectAttr "Rig_R_FingerIndex3_rotateZ.o" "ab_rig_ARN.phl[762]";
connectAttr "Rig_R_FingerMiddle1_rotateX.o" "ab_rig_ARN.phl[763]";
connectAttr "Rig_R_FingerMiddle1_rotateY.o" "ab_rig_ARN.phl[764]";
connectAttr "Rig_R_FingerMiddle1_rotateZ.o" "ab_rig_ARN.phl[765]";
connectAttr "Rig_R_FingerMiddle2_rotateX.o" "ab_rig_ARN.phl[766]";
connectAttr "Rig_R_FingerMiddle2_rotateY.o" "ab_rig_ARN.phl[767]";
connectAttr "Rig_R_FingerMiddle2_rotateZ.o" "ab_rig_ARN.phl[768]";
connectAttr "Rig_R_FingerMiddle3_rotateX.o" "ab_rig_ARN.phl[769]";
connectAttr "Rig_R_FingerMiddle3_rotateY.o" "ab_rig_ARN.phl[770]";
connectAttr "Rig_R_FingerMiddle3_rotateZ.o" "ab_rig_ARN.phl[771]";
connectAttr "Rig_R_FingerRing1_rotateX.o" "ab_rig_ARN.phl[772]";
connectAttr "Rig_R_FingerRing1_rotateY.o" "ab_rig_ARN.phl[773]";
connectAttr "Rig_R_FingerRing1_rotateZ.o" "ab_rig_ARN.phl[774]";
connectAttr "Rig_R_FingerRing2_rotateX.o" "ab_rig_ARN.phl[775]";
connectAttr "Rig_R_FingerRing2_rotateY.o" "ab_rig_ARN.phl[776]";
connectAttr "Rig_R_FingerRing2_rotateZ.o" "ab_rig_ARN.phl[777]";
connectAttr "Rig_R_FingerRing3_rotateX.o" "ab_rig_ARN.phl[778]";
connectAttr "Rig_R_FingerRing3_rotateY.o" "ab_rig_ARN.phl[779]";
connectAttr "Rig_R_FingerRing3_rotateZ.o" "ab_rig_ARN.phl[780]";
connectAttr "Rig_R_FingerPinky1_rotateX.o" "ab_rig_ARN.phl[781]";
connectAttr "Rig_R_FingerPinky1_rotateY.o" "ab_rig_ARN.phl[782]";
connectAttr "Rig_R_FingerPinky1_rotateZ.o" "ab_rig_ARN.phl[783]";
connectAttr "Rig_R_FingerPinky2_rotateX.o" "ab_rig_ARN.phl[784]";
connectAttr "Rig_R_FingerPinky2_rotateY.o" "ab_rig_ARN.phl[785]";
connectAttr "Rig_R_FingerPinky2_rotateZ.o" "ab_rig_ARN.phl[786]";
connectAttr "Rig_R_FingerPinky3_rotateX.o" "ab_rig_ARN.phl[787]";
connectAttr "Rig_R_FingerPinky3_rotateY.o" "ab_rig_ARN.phl[788]";
connectAttr "Rig_R_FingerPinky3_rotateZ.o" "ab_rig_ARN.phl[789]";
connectAttr "Rig_R_FingerThumb1_rotateX.o" "ab_rig_ARN.phl[790]";
connectAttr "Rig_R_FingerThumb1_rotateY.o" "ab_rig_ARN.phl[791]";
connectAttr "Rig_R_FingerThumb1_rotateZ.o" "ab_rig_ARN.phl[792]";
connectAttr "Rig_R_FingerThumb2_rotateX.o" "ab_rig_ARN.phl[793]";
connectAttr "Rig_R_FingerThumb2_rotateY.o" "ab_rig_ARN.phl[794]";
connectAttr "Rig_R_FingerThumb2_rotateZ.o" "ab_rig_ARN.phl[795]";
connectAttr "Rig_R_FingerThumb3_rotateX.o" "ab_rig_ARN.phl[796]";
connectAttr "Rig_R_FingerThumb3_rotateY.o" "ab_rig_ARN.phl[797]";
connectAttr "Rig_R_FingerThumb3_rotateZ.o" "ab_rig_ARN.phl[798]";
connectAttr "pairBlend1.otx" "ab_rig_ARN.phl[799]";
connectAttr "pairBlend1.oty" "ab_rig_ARN.phl[800]";
connectAttr "pairBlend1.otz" "ab_rig_ARN.phl[801]";
connectAttr "pairBlend1.orx" "ab_rig_ARN.phl[802]";
connectAttr "pairBlend1.ory" "ab_rig_ARN.phl[803]";
connectAttr "pairBlend1.orz" "ab_rig_ARN.phl[804]";
connectAttr "ab_rig_ARN.phl[805]" "pairBlend1.w";
connectAttr "Rig_R_Sword_blendParent1.o" "ab_rig_ARN.phl[806]";
connectAttr "Rig_R_SwordTip_translateZ.o" "ab_rig_ARN.phl[807]";
connectAttr "ab_rig_ARN.phl[808]" "pairBlend1.itx2";
connectAttr "ab_rig_ARN.phl[809]" "pairBlend1.ity2";
connectAttr "ab_rig_ARN.phl[810]" "pairBlend1.itz2";
connectAttr "ab_rig_ARN.phl[811]" "pairBlend1.irx2";
connectAttr "ab_rig_ARN.phl[812]" "pairBlend1.iry2";
connectAttr "ab_rig_ARN.phl[813]" "pairBlend1.irz2";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Rig_R_Sword_parent_switch.o" "ab_rig_ARN.phl[257]";
connectAttr "Rig_C_BackWeapon1_rotateX.o" "ab_rig_ARN.phl[351]";
connectAttr "Rig_C_BackWeapon1_rotateY.o" "ab_rig_ARN.phl[352]";
connectAttr "Rig_C_BackWeapon1_rotateZ.o" "ab_rig_ARN.phl[353]";
connectAttr "Rig_L_Leg1_IK_parent_switch.o" "ab_rig_ARN.phl[455]";
connectAttr "Rig_R_Leg1_IK_parent_switch.o" "ab_rig_ARN.phl[483]";
connectAttr "Rig_L_eye_translateZ.o" "ab_rig_ARN.phl[541]";
connectAttr "Rig_L_eye_rotateX.o" "ab_rig_ARN.phl[542]";
connectAttr "Rig_L_eye_rotateY.o" "ab_rig_ARN.phl[543]";
connectAttr "Rig_L_eye_rotateZ.o" "ab_rig_ARN.phl[544]";
connectAttr "Rig_R_eye_translateZ.o" "ab_rig_ARN.phl[547]";
connectAttr "Rig_R_eye_rotateX.o" "ab_rig_ARN.phl[548]";
connectAttr "Rig_R_eye_rotateY.o" "ab_rig_ARN.phl[549]";
connectAttr "Rig_R_eye_rotateZ.o" "ab_rig_ARN.phl[550]";
connectAttr "Rig_C_root1_translateZ.o" "Rig_C_root1_translateZ1.i";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ab_rig_A_walk.ma
