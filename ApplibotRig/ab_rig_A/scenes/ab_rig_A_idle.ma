//Maya ASCII 2023 scene
//Name: ab_rig_A_idle.ma
//Last modified: Tue, Mar 28, 2023 12:15:02 PM
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
fileInfo "UUID" "7E9E2CF9-4105-28CE-90F2-989B7571E65B";
createNode transform -s -n "persp";
	rename -uid "6650F64C-465A-8E79-315B-568A0587CE6E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 154.9270132273052 85.210251697252744 379.90251323808587 ;
	setAttr ".r" -type "double3" -2.7383527297496899 24.200000000000742 -1.0896847030721902e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "88ECFA6B-4617-E993-4D91-78A5120D197B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 410.90249800976085;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.682156733298612 50.833003739387678 -4.0323553879146985 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DA527087-4A08-8812-296E-75A1AD4406AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8029075304152045 1000.1531888125473 -4.8758663849422845 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4AA90D91-41F2-E0F0-69FF-C383EE49452C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 951.96788753862688;
	setAttr ".ow" 278.97835050977847;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -8.8029075304152045 48.185301273920459 -4.8758663849422845 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9519CE47-4EBD-6DE9-7BDD-13991C96AC9D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.728357002053592 64.662572747728944 1001.2974337345955 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B4662E09-4055-F23D-7267-17A9FD9895E6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1008.7850048653198;
	setAttr ".ow" 527.30036583071444;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -8.715707771013939 48.358132532813151 -7.4875711307243051 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "8932458E-4F4D-63A3-B745-0DB14370AD43";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.1516729443003 45.603826626824969 -6.8099171329130712 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E58CE25A-49EB-B8DB-A089-8185AC22BFC9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1011.3362723063891;
	setAttr ".ow" 391.02320054641137;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -10.184599362088711 45.603826626824969 -6.8099171329130712 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8B69968B-409E-C2F8-778F-1FA61A9B54F1";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EFEA7B61-4AD6-0861-F9B6-10A8CD4235D7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A160F835-4CBC-28AB-36AE-4EBE6C893432";
createNode displayLayerManager -n "layerManager";
	rename -uid "77F02E1F-4C82-8FBE-B0D8-53BB38156723";
createNode displayLayer -n "defaultLayer";
	rename -uid "2ED7EA50-416E-1D8D-2CDF-C9932862EF0D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BFA8231C-4CD4-C142-705D-F7A574BCF50A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "637FF301-4C74-C0D2-023E-D98D94F9B539";
	setAttr ".g" yes;
createNode reference -n "ab_rig_ARN";
	rename -uid "A1923D64-46B1-7B50-F395-369B2A88FB90";
	setAttr -s 294 ".phl";
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"ab_rig_ARN"
		"ab_rig_ARN" 16
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_C_Sword1|ab_rig_A:Jnt_C_Sword1_parentConstraint1" 
		"CTRL_R_swordW0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_C_BackWeapon2_EndW2" " -k 1 0"
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword.parent_switch" 
		"ab_rig_ARN.placeHolderList[270]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[365]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[393]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateZ" 
		"ab_rig_ARN.placeHolderList[451]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateX" 
		"ab_rig_ARN.placeHolderList[452]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateY" 
		"ab_rig_ARN.placeHolderList[453]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.rotateZ" 
		"ab_rig_ARN.placeHolderList[454]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateZ" 
		"ab_rig_ARN.placeHolderList[457]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateX" 
		"ab_rig_ARN.placeHolderList[458]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateY" 
		"ab_rig_ARN.placeHolderList[459]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.rotateZ" 
		"ab_rig_ARN.placeHolderList[460]" ""
		"ab_rig_ARN" 1428
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
		"rotate" " -type \"double3\" -45.67324995520964848 31.10398138797663847 29.27021943559881478"
		
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
		"rotate" " -type \"double3\" 55.60909292184535957 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"translate" " -type \"double3\" 0 -30.65927035642021536 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"rotate" " -type \"double3\" -1.94382135687464341 2.06114703616969486 -27.02936854102532394"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"translate" " -type \"double3\" 0 -6.75722106597899952 7.43008778587791419"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Leg_Grp|ab_rig_A:Jnt_L_Thigh_IK|ab_rig_A:Jnt_L_Knee_IK|ab_rig_A:Jnt_L_Ankle_IK|ab_rig_A:Jnt_L_Toe_IK" 
		"rotate" " -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" -25.53297898325815396 16.17504907904288913 31.35888056948355285"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"translate" " -type \"double3\" 0 36.00710320603396042 4.3552733441920566e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"rotate" " -type \"double3\" 58.93717842942645291 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"translate" " -type \"double3\" 0 30.65926207204695686 -6.564887630844396e-06"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"rotate" " -type \"double3\" -20.02235071138429845 -0.56588524543091656 -29.27575031187562971"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"translate" " -type \"double3\" 0 6.75721163909731626 -7.43007832233602272"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Leg_Grp|ab_rig_A:Jnt_R_Thigh_IK|ab_rig_A:Jnt_R_Knee_IK|ab_rig_A:Jnt_R_Ankle_IK|ab_rig_A:Jnt_R_Toe_IK" 
		"rotate" " -type \"double3\" -5.09953910762417717 -1.17634135869018364 -9.38939602230151316"
		
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
		"rotate" " -type \"double3\" -43.82116274890483254 -6.12549476998675324 -14.68982291544558905"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK" 
		"translate" " -type \"double3\" 19.50963169173477496 0 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_L_Arm_Grp|ab_rig_A:Jnt_L_Shoulder_IK|ab_rig_A:Jnt_L_Elbow_IK" 
		"rotate" " -type \"double3\" 0 -51.3006190352045337 0"
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
		"rotate" " -type \"double3\" -22.05921789453602599 -5.89719457937520808 -27.37697123012115341"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK" 
		"translate" " -type \"double3\" -19.50990047752174661 0.00023711547991922544 -2.3938250610200384e-05"
		
		2 "|ab_rig_A:All_Grp|ab_rig_A:Jnt_Grp|ab_rig_A:Jnt_R_Arm_Grp|ab_rig_A:Jnt_R_Shoulder_IK|ab_rig_A:Jnt_R_Elbow_IK" 
		"rotate" " -type \"double3\" 5.7826763084235996e-05 -38.09279861644397869 -0.00013283113331435408"
		
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
		"rotate" " -type \"double3\" 3.50948307682329697 0.86567990454274524 3.56402539750733105"
		
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
		"rotate" " -type \"double3\" -13.98906752916866303 -12.49730345812792542 0.33375918040576436"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" 5.1961425632916427 0 9.46214572027903422"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK" 
		"rotateX" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK" 
		"rotateY" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK" 
		"rotateZ" " -av"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK" 
		"rotate" " -type \"double3\" 0 0 0"
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
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK" 
		"visibility" " 1"
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
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp" "visibility" 
		" 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space" 
		"visibility" " 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1" 
		"rotate" " -type \"double3\" 0 0 7.65387062662377904"
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
		"rotate" " -type \"double3\" 0 0 5.09196187312210657"
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
		"rotate" " -type \"double3\" 0 0 -9.47359439326528019"
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
		"rotate" " -type \"double3\" 0 0 -1.71474928353747491"
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
		"rotate" " -type \"double3\" 0 0 -5.85546138336523558"
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
		"rotate" " -type \"double3\" 0 0 -24.6580823726534355"
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
		"rotate" " -type \"double3\" 0 0 -2.95516142604290533"
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
		"rotate" " -type \"double3\" 0 0 -23.60864397504210643"
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
		"rotate" " -type \"double3\" 0 0 -16.52511015458031096"
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
		"rotate" " -type \"double3\" 0 0 -5.34777255841789856"
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
		"rotate" " -type \"double3\" 0 0 -9.95489035207197936"
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
		"rotate" " -type \"double3\" 0 0 -19.64236074860511749"
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
		"rotate" " -type \"double3\" 0 -4.60376936095940259 -6.78665507366122878"
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
		"rotate" " -type \"double3\" 0 0 -2.40786557176649163"
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
		"rotate" " -type \"double3\" 0 0 -11.60426733356937667"
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
		"rotate" " -type \"double3\" 0 0 -48.69699160660646697"
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
		"rotate" " -type \"double3\" 0 0 -63.57333943664553999"
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
		"rotate" " -type \"double3\" 0 0 -55.69422983924970083"
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
		"rotate" " -type \"double3\" 0 0 -49.81649108275713189"
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
		"rotate" " -type \"double3\" 0 0 -64.89065743822823151"
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
		"rotate" " -type \"double3\" 0 0 -64.89065743822823151"
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
		"rotate" " -type \"double3\" 0 0 -58.14645702105521252"
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
		"rotate" " -type \"double3\" 0 0 -62.50990728166539867"
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
		"rotate" " -type \"double3\" 0 0 -64.89065743822823151"
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
		"rotate" " -type \"double3\" 0 0 -58.14645702105521252"
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
		"rotate" " -type \"double3\" 0 0 -44.50411260969806193"
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
		"rotate" " -type \"double3\" 0 0 -64.89065743822823151"
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
		"rotate" " -type \"double3\" -13.35708144769646033 0.63008811387148844 -0.24882693488271251"
		
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
		"rotate" " -type \"double3\" 0 0 -23.27698682180906786"
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
		"rotate" " -type \"double3\" 0 0 -74.64056795821234402"
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
		"Rig_R_Weapon2W0" " -k 1 1"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_L_Weapon2W1" " -k 1 0"
		2 "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1" 
		"Rig_C_Weapon_set_targetW2" " -k 1 0"
		2 "ab_rig_A:file3" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/chest_01.png\""
		
		2 "ab_rig_A:file3" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file7" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/pants_01.png\""
		
		2 "ab_rig_A:file7" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file8" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/sword_01.png\""
		
		2 "ab_rig_A:file8" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file11" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/chest_01.png\""
		
		2 "ab_rig_A:file11" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file13" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/eye_bace.png\""
		
		2 "ab_rig_A:file13" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file22" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/eye_bace.png\""
		
		2 "ab_rig_A:file22" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file26" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/eye_R.png\""
		
		2 "ab_rig_A:file26" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file27" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/eye_L.png\""
		
		2 "ab_rig_A:file27" "colorSpace" " -type \"string\" \"sRGB\""
		2 "ab_rig_A:file28" "fileTextureName" " -type \"string\" \"D:/ab_rig_A//sourceimages/TX_A/eye_bace.png\""
		
		2 "ab_rig_A:file28" "colorSpace" " -type \"string\" \"sRGB\""
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
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateZ" 
		"ab_rig_ARN.placeHolderList[461]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateY" 
		"ab_rig_ARN.placeHolderList[462]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.translateX" 
		"ab_rig_ARN.placeHolderList[463]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateZ" 
		"ab_rig_ARN.placeHolderList[464]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateX" 
		"ab_rig_ARN.placeHolderList[465]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1.rotateY" 
		"ab_rig_ARN.placeHolderList[466]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateX" 
		"ab_rig_ARN.placeHolderList[467]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateY" 
		"ab_rig_ARN.placeHolderList[468]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.rotateZ" 
		"ab_rig_ARN.placeHolderList[469]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateZ" 
		"ab_rig_ARN.placeHolderList[470]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateY" 
		"ab_rig_ARN.placeHolderList[471]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2.translateX" 
		"ab_rig_ARN.placeHolderList[472]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateZ" 
		"ab_rig_ARN.placeHolderList[473]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateY" 
		"ab_rig_ARN.placeHolderList[474]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.translateX" 
		"ab_rig_ARN.placeHolderList[475]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateZ" 
		"ab_rig_ARN.placeHolderList[476]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateX" 
		"ab_rig_ARN.placeHolderList[477]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist.rotateY" 
		"ab_rig_ARN.placeHolderList[478]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateZ" 
		"ab_rig_ARN.placeHolderList[479]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateX" 
		"ab_rig_ARN.placeHolderList[480]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips.rotateY" 
		"ab_rig_ARN.placeHolderList[481]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.parent_swaitch" 
		"ab_rig_ARN.placeHolderList[482]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateZ" 
		"ab_rig_ARN.placeHolderList[483]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateX" 
		"ab_rig_ARN.placeHolderList[484]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1.rotateY" 
		"ab_rig_ARN.placeHolderList[485]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateZ" 
		"ab_rig_ARN.placeHolderList[486]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateX" 
		"ab_rig_ARN.placeHolderList[487]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2.rotateY" 
		"ab_rig_ARN.placeHolderList[488]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateX" 
		"ab_rig_ARN.placeHolderList[489]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateY" 
		"ab_rig_ARN.placeHolderList[490]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Hips|ab_rig_A:Rig_C_Tail1_offset2|ab_rig_A:Rig_C_Tail1_offset3|ab_rig_A:Rig_C_Tail1|ab_rig_A:Rig_C_Tail2_offset1|ab_rig_A:Rig_C_Tail2_offset2|ab_rig_A:Rig_C_Tail2|ab_rig_A:Rig_C_Tail3_offset1|ab_rig_A:Rig_C_Tail3_offset2|ab_rig_A:Rig_C_Tail3.rotateZ" 
		"ab_rig_ARN.placeHolderList[491]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateX" 
		"ab_rig_ARN.placeHolderList[492]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateY" 
		"ab_rig_ARN.placeHolderList[493]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Tail4_Grp|ab_rig_A:Rig_C_Tail4_offset1|ab_rig_A:Rig_C_Tail4_offset2|ab_rig_A:Rig_C_Tail4.rotateZ" 
		"ab_rig_ARN.placeHolderList[494]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateX" 
		"ab_rig_ARN.placeHolderList[495]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateY" 
		"ab_rig_ARN.placeHolderList[496]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine.rotateZ" 
		"ab_rig_ARN.placeHolderList[497]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateX" 
		"ab_rig_ARN.placeHolderList[498]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateY" 
		"ab_rig_ARN.placeHolderList[499]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest.rotateZ" 
		"ab_rig_ARN.placeHolderList[500]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateX" 
		"ab_rig_ARN.placeHolderList[501]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateY" 
		"ab_rig_ARN.placeHolderList[502]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck.rotateZ" 
		"ab_rig_ARN.placeHolderList[503]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.parent_switch" 
		"ab_rig_ARN.placeHolderList[504]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateZ" 
		"ab_rig_ARN.placeHolderList[505]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateX" 
		"ab_rig_ARN.placeHolderList[506]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head.rotateY" 
		"ab_rig_ARN.placeHolderList[507]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.L_Arm_FKIK" 
		"ab_rig_ARN.placeHolderList[508]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.R_Arm_FKIK" 
		"ab_rig_ARN.placeHolderList[509]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.L_Leg_FKIK" 
		"ab_rig_ARN.placeHolderList[510]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.R_Leg_FKIK" 
		"ab_rig_ARN.placeHolderList[511]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.sword" 
		"ab_rig_ARN.placeHolderList[512]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_Other.tail" 
		"ab_rig_ARN.placeHolderList[513]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye.translateY" 
		"ab_rig_ARN.placeHolderList[514]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye.translateX" 
		"ab_rig_ARN.placeHolderList[515]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateY" 
		"ab_rig_ARN.placeHolderList[516]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_L_eye.translateX" 
		"ab_rig_ARN.placeHolderList[517]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateY" 
		"ab_rig_ARN.placeHolderList[518]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Neck_offset|ab_rig_A:Rig_C_Neck|ab_rig_A:Rig_C_Neck_offset1|ab_rig_A:Rig_C_Neck_offset2|ab_rig_A:Rig_C_Head|ab_rig_A:Rig_C_eye|ab_rig_A:Rig_R_eye_offset|ab_rig_A:Rig_R_eye.translateX" 
		"ab_rig_ARN.placeHolderList[519]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.parent_switch" 
		"ab_rig_ARN.placeHolderList[520]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateX" 
		"ab_rig_ARN.placeHolderList[521]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateY" 
		"ab_rig_ARN.placeHolderList[522]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle.rotateZ" 
		"ab_rig_ARN.placeHolderList[523]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[524]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[525]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[526]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[527]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[528]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[529]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[530]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[531]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_L_Arm|ab_rig_A:Rig_L_Clavicle|ab_rig_A:Rig_L_Shoulder_offset_FK|ab_rig_A:Rig_L_Shoulder_FK|ab_rig_A:Rig_L_Elbow_offset_FK|ab_rig_A:Rig_L_Elbow_FK|ab_rig_A:Rig_L_Hand_offset_FK|ab_rig_A:Rig_L_Hand_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[532]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.parent_switch" 
		"ab_rig_ARN.placeHolderList[533]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateX" 
		"ab_rig_ARN.placeHolderList[534]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateY" 
		"ab_rig_ARN.placeHolderList[535]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle.rotateZ" 
		"ab_rig_ARN.placeHolderList[536]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[537]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[538]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[539]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[540]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[541]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[542]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateX" 
		"ab_rig_ARN.placeHolderList[543]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateY" 
		"ab_rig_ARN.placeHolderList[544]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_R_Arm_RE|ab_rig_A:Rig_R_Arm|ab_rig_A:Rig_R_Clavicle|ab_rig_A:Rig_R_Shoulder_offset_FK|ab_rig_A:Rig_R_Shoulder_FK|ab_rig_A:Rig_R_Elbow_offset_FK|ab_rig_A:Rig_R_Elbow_FK|ab_rig_A:Rig_R_Hand_offset_FK|ab_rig_A:Rig_R_Hand_FK.rotateZ" 
		"ab_rig_ARN.placeHolderList[545]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_C_Waist|ab_rig_A:Rig_C_Spine|ab_rig_A:Rig_C_Chest_offset|ab_rig_A:Rig_C_Chest|ab_rig_A:Rig_C_Weapon_set_speace|ab_rig_A:Rig_C_Weapon_set_offset|ab_rig_A:Rig_C_Weapon_set.rotateZ" 
		"ab_rig_ARN.placeHolderList[546]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[547]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateY" 
		"ab_rig_ARN.placeHolderList[548]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.translateX" 
		"ab_rig_ARN.placeHolderList[549]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[550]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[551]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[552]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[553]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[554]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[555]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[556]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[557]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg2_IK_offset|ab_rig_A:Rig_L_Leg2_IK|ab_rig_A:Rig_L_Leg3_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[558]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[559]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[560]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[561]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[562]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[563]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg5_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[564]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[565]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[566]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_Leg1_IK|ab_rig_A:Rig_L_Leg4_IK|ab_rig_A:Rig_L_Leg6_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[567]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[568]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[569]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Leg_Grp_IK|ab_rig_A:Rig_L_LegPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[570]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[571]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[572]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[573]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[574]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateY" 
		"ab_rig_ARN.placeHolderList[575]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK.translateX" 
		"ab_rig_ARN.placeHolderList[576]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[577]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[578]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[579]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[580]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[581]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg2_IK_offset|ab_rig_A:Rig_R_Leg2_IK|ab_rig_A:Rig_R_Leg3_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[582]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[583]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[584]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[585]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[586]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[587]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg5_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[588]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[589]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[590]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_Leg1_IK|ab_rig_A:Rig_R_Leg4_IK|ab_rig_A:Rig_R_Leg6_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[591]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[592]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[593]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Leg_Grp_IK|ab_rig_A:Rig_R_LegPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[594]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[595]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[596]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[597]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[598]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[599]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK.translateY" 
		"ab_rig_ARN.placeHolderList[600]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_Hand_offset_IK|ab_rig_A:Rig_L_Hand_parent_IK|ab_rig_A:Rig_L_Hand_IK.translateX" 
		"ab_rig_ARN.placeHolderList[601]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_HandPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[602]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_HandPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[603]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_L_Arm_Grp_IK|ab_rig_A:Rig_L_HandPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[604]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK.parent_switch" 
		"ab_rig_ARN.placeHolderList[605]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK.rotateX" 
		"ab_rig_ARN.placeHolderList[606]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK.rotateY" 
		"ab_rig_ARN.placeHolderList[607]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK.rotateZ" 
		"ab_rig_ARN.placeHolderList[608]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[609]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK.translateY" 
		"ab_rig_ARN.placeHolderList[610]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_Hand_offset_IK|ab_rig_A:Rig_R_Hand_parent_IK|ab_rig_A:Rig_R_Hand_IK.translateX" 
		"ab_rig_ARN.placeHolderList[611]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_HandPole_IK.translateZ" 
		"ab_rig_ARN.placeHolderList[612]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_HandPole_IK.translateY" 
		"ab_rig_ARN.placeHolderList[613]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_C_root1|ab_rig_A:Rig_C_root2|ab_rig_A:Rig_R_Arm_Grp_IK|ab_rig_A:Rig_R_HandPole_IK.translateX" 
		"ab_rig_ARN.placeHolderList[614]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateX" 
		"ab_rig_ARN.placeHolderList[615]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateY" 
		"ab_rig_ARN.placeHolderList[616]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1.rotateZ" 
		"ab_rig_ARN.placeHolderList[617]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateX" 
		"ab_rig_ARN.placeHolderList[618]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateY" 
		"ab_rig_ARN.placeHolderList[619]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2.rotateZ" 
		"ab_rig_ARN.placeHolderList[620]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateX" 
		"ab_rig_ARN.placeHolderList[621]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateY" 
		"ab_rig_ARN.placeHolderList[622]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerIndex1_offset|ab_rig_A:Rig_L_FingerIndex1_space|ab_rig_A:Rig_L_FingerIndex1|ab_rig_A:Rig_L_FingerIndex2_offset|ab_rig_A:Rig_L_FingerIndex2_space|ab_rig_A:Rig_L_FingerIndex2|ab_rig_A:Rig_L_FingerIndex3_offset|ab_rig_A:Rig_L_FingerIndex3_space|ab_rig_A:Rig_L_FingerIndex3.rotateZ" 
		"ab_rig_ARN.placeHolderList[623]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateX" 
		"ab_rig_ARN.placeHolderList[624]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateY" 
		"ab_rig_ARN.placeHolderList[625]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1.rotateZ" 
		"ab_rig_ARN.placeHolderList[626]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateX" 
		"ab_rig_ARN.placeHolderList[627]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateY" 
		"ab_rig_ARN.placeHolderList[628]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2.rotateZ" 
		"ab_rig_ARN.placeHolderList[629]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateX" 
		"ab_rig_ARN.placeHolderList[630]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateY" 
		"ab_rig_ARN.placeHolderList[631]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerMiddle1_offset|ab_rig_A:Rig_L_FingerMiddle1_space|ab_rig_A:Rig_L_FingerMiddle1|ab_rig_A:Rig_L_FingerMiddle2_offset|ab_rig_A:Rig_L_FingerMiddle2_space|ab_rig_A:Rig_L_FingerMiddle2|ab_rig_A:Rig_L_FingerMiddle3_offset|ab_rig_A:Rig_L_FingerMiddle3_space|ab_rig_A:Rig_L_FingerMiddle3.rotateZ" 
		"ab_rig_ARN.placeHolderList[632]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateX" 
		"ab_rig_ARN.placeHolderList[633]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateY" 
		"ab_rig_ARN.placeHolderList[634]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1.rotateZ" 
		"ab_rig_ARN.placeHolderList[635]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateX" 
		"ab_rig_ARN.placeHolderList[636]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateY" 
		"ab_rig_ARN.placeHolderList[637]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2.rotateZ" 
		"ab_rig_ARN.placeHolderList[638]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateX" 
		"ab_rig_ARN.placeHolderList[639]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateY" 
		"ab_rig_ARN.placeHolderList[640]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerRing1_offset|ab_rig_A:Rig_L_FingerRing1_space|ab_rig_A:Rig_L_FingerRing1|ab_rig_A:Rig_L_FingerRing2_offset|ab_rig_A:Rig_L_FingerRing2_space|ab_rig_A:Rig_L_FingerRing2|ab_rig_A:Rig_L_FingerRing3_offset|ab_rig_A:Rig_L_FingerRing3_space|ab_rig_A:Rig_L_FingerRing3.rotateZ" 
		"ab_rig_ARN.placeHolderList[641]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateX" 
		"ab_rig_ARN.placeHolderList[642]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateY" 
		"ab_rig_ARN.placeHolderList[643]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1.rotateZ" 
		"ab_rig_ARN.placeHolderList[644]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateX" 
		"ab_rig_ARN.placeHolderList[645]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateY" 
		"ab_rig_ARN.placeHolderList[646]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2.rotateZ" 
		"ab_rig_ARN.placeHolderList[647]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateX" 
		"ab_rig_ARN.placeHolderList[648]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateY" 
		"ab_rig_ARN.placeHolderList[649]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerPinky1_offset|ab_rig_A:Rig_L_FingerPinky1_space|ab_rig_A:Rig_L_FingerPinky1|ab_rig_A:Rig_L_FingerPinky2_offset|ab_rig_A:Rig_L_FingerPinky2_space|ab_rig_A:Rig_L_FingerPinky2|ab_rig_A:Rig_L_FingerPinky3_offset|ab_rig_A:Rig_L_FingerPinky3_space|ab_rig_A:Rig_L_FingerPinky3.rotateZ" 
		"ab_rig_ARN.placeHolderList[650]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateX" 
		"ab_rig_ARN.placeHolderList[651]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateY" 
		"ab_rig_ARN.placeHolderList[652]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1.rotateZ" 
		"ab_rig_ARN.placeHolderList[653]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateX" 
		"ab_rig_ARN.placeHolderList[654]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateY" 
		"ab_rig_ARN.placeHolderList[655]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2.rotateZ" 
		"ab_rig_ARN.placeHolderList[656]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateX" 
		"ab_rig_ARN.placeHolderList[657]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateY" 
		"ab_rig_ARN.placeHolderList[658]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Fingers_Grp|ab_rig_A:Rig_L_FingerThumb1_offset|ab_rig_A:Rig_L_FingerThumb1_space|ab_rig_A:Rig_L_FingerThumb1|ab_rig_A:Rig_L_FingerThumb2_offset|ab_rig_A:Rig_L_FingerThumb2_space|ab_rig_A:Rig_L_FingerThumb2|ab_rig_A:Rig_L_FingerThumb3_offset|ab_rig_A:Rig_L_FingerThumb3_space|ab_rig_A:Rig_L_FingerThumb3.rotateZ" 
		"ab_rig_ARN.placeHolderList[659]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[660]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[661]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[662]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateZ" 
		"ab_rig_ARN.placeHolderList[663]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateY" 
		"ab_rig_ARN.placeHolderList[664]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1.translateX" 
		"ab_rig_ARN.placeHolderList[665]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateZ" 
		"ab_rig_ARN.placeHolderList[666]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateY" 
		"ab_rig_ARN.placeHolderList[667]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.translateX" 
		"ab_rig_ARN.placeHolderList[668]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateX" 
		"ab_rig_ARN.placeHolderList[669]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateY" 
		"ab_rig_ARN.placeHolderList[670]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_L_Weapon1_Grp|ab_rig_A:Rig_L_Weapon1_offset|ab_rig_A:Rig_L_Weapon1|ab_rig_A:Rig_L_Weapon2.rotateZ" 
		"ab_rig_ARN.placeHolderList[671]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateX" 
		"ab_rig_ARN.placeHolderList[672]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateY" 
		"ab_rig_ARN.placeHolderList[673]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.rotateZ" 
		"ab_rig_ARN.placeHolderList[674]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateZ" 
		"ab_rig_ARN.placeHolderList[675]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateY" 
		"ab_rig_ARN.placeHolderList[676]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1.translateX" 
		"ab_rig_ARN.placeHolderList[677]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateZ" 
		"ab_rig_ARN.placeHolderList[678]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateY" 
		"ab_rig_ARN.placeHolderList[679]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.translateX" 
		"ab_rig_ARN.placeHolderList[680]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateX" 
		"ab_rig_ARN.placeHolderList[681]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateY" 
		"ab_rig_ARN.placeHolderList[682]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Weapon1_Grp|ab_rig_A:Rig_R_Weapon1_offset|ab_rig_A:Rig_R_Weapon1|ab_rig_A:Rig_R_Weapon2.rotateZ" 
		"ab_rig_ARN.placeHolderList[683]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateX" 
		"ab_rig_ARN.placeHolderList[684]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateY" 
		"ab_rig_ARN.placeHolderList[685]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1.rotateZ" 
		"ab_rig_ARN.placeHolderList[686]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateX" 
		"ab_rig_ARN.placeHolderList[687]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateY" 
		"ab_rig_ARN.placeHolderList[688]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2.rotateZ" 
		"ab_rig_ARN.placeHolderList[689]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateX" 
		"ab_rig_ARN.placeHolderList[690]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateY" 
		"ab_rig_ARN.placeHolderList[691]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerIndex1_offset|ab_rig_A:Rig_R_FingerIndex1_space|ab_rig_A:Rig_R_FingerIndex1|ab_rig_A:Rig_R_FingerIndex2_offset|ab_rig_A:Rig_R_FingerIndex2_space|ab_rig_A:Rig_R_FingerIndex2|ab_rig_A:Rig_R_FingerIndex3_offset|ab_rig_A:Rig_R_FingerIndex3_space|ab_rig_A:Rig_R_FingerIndex3.rotateZ" 
		"ab_rig_ARN.placeHolderList[692]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateX" 
		"ab_rig_ARN.placeHolderList[693]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateY" 
		"ab_rig_ARN.placeHolderList[694]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1.rotateZ" 
		"ab_rig_ARN.placeHolderList[695]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateX" 
		"ab_rig_ARN.placeHolderList[696]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateY" 
		"ab_rig_ARN.placeHolderList[697]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2.rotateZ" 
		"ab_rig_ARN.placeHolderList[698]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateX" 
		"ab_rig_ARN.placeHolderList[699]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateY" 
		"ab_rig_ARN.placeHolderList[700]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerMiddle1_offset|ab_rig_A:Rig_R_FingerMiddle1_space|ab_rig_A:Rig_R_FingerMiddle1|ab_rig_A:Rig_R_FingerMiddle2_offset|ab_rig_A:Rig_R_FingerMiddle2_space|ab_rig_A:Rig_R_FingerMiddle2|ab_rig_A:Rig_R_FingerMiddle3_offset|ab_rig_A:Rig_R_FingerMiddle3_space|ab_rig_A:Rig_R_FingerMiddle3.rotateZ" 
		"ab_rig_ARN.placeHolderList[701]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateX" 
		"ab_rig_ARN.placeHolderList[702]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateY" 
		"ab_rig_ARN.placeHolderList[703]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1.rotateZ" 
		"ab_rig_ARN.placeHolderList[704]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateX" 
		"ab_rig_ARN.placeHolderList[705]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateY" 
		"ab_rig_ARN.placeHolderList[706]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2.rotateZ" 
		"ab_rig_ARN.placeHolderList[707]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateX" 
		"ab_rig_ARN.placeHolderList[708]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateY" 
		"ab_rig_ARN.placeHolderList[709]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerRing1_offset|ab_rig_A:Rig_R_FingerRing1_space|ab_rig_A:Rig_R_FingerRing1|ab_rig_A:Rig_R_FingerRing2_offset|ab_rig_A:Rig_R_FingerRing2_space|ab_rig_A:Rig_R_FingerRing2|ab_rig_A:Rig_R_FingerRing3_offset|ab_rig_A:Rig_R_FingerRing3_space|ab_rig_A:Rig_R_FingerRing3.rotateZ" 
		"ab_rig_ARN.placeHolderList[710]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateX" 
		"ab_rig_ARN.placeHolderList[711]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateY" 
		"ab_rig_ARN.placeHolderList[712]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1.rotateZ" 
		"ab_rig_ARN.placeHolderList[713]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateX" 
		"ab_rig_ARN.placeHolderList[714]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateY" 
		"ab_rig_ARN.placeHolderList[715]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2.rotateZ" 
		"ab_rig_ARN.placeHolderList[716]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateX" 
		"ab_rig_ARN.placeHolderList[717]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateY" 
		"ab_rig_ARN.placeHolderList[718]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerPinky1_offset|ab_rig_A:Rig_R_FingerPinky1_space|ab_rig_A:Rig_R_FingerPinky1|ab_rig_A:Rig_R_FingerPinky2_offset|ab_rig_A:Rig_R_FingerPinky2_space|ab_rig_A:Rig_R_FingerPinky2|ab_rig_A:Rig_R_FingerPinky3_offset|ab_rig_A:Rig_R_FingerPinky3_space|ab_rig_A:Rig_R_FingerPinky3.rotateZ" 
		"ab_rig_ARN.placeHolderList[719]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateX" 
		"ab_rig_ARN.placeHolderList[720]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateY" 
		"ab_rig_ARN.placeHolderList[721]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1.rotateZ" 
		"ab_rig_ARN.placeHolderList[722]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateX" 
		"ab_rig_ARN.placeHolderList[723]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateY" 
		"ab_rig_ARN.placeHolderList[724]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2.rotateZ" 
		"ab_rig_ARN.placeHolderList[725]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateX" 
		"ab_rig_ARN.placeHolderList[726]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateY" 
		"ab_rig_ARN.placeHolderList[727]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Fingers_Grp|ab_rig_A:Rig_R_Fingers2_Grp|ab_rig_A:Rig_R_FingerThumb1_offset|ab_rig_A:Rig_R_FingerThumb1_space|ab_rig_A:Rig_R_FingerThumb1|ab_rig_A:Rig_R_FingerThumb2_offset|ab_rig_A:Rig_R_FingerThumb2_space|ab_rig_A:Rig_R_FingerThumb2|ab_rig_A:Rig_R_FingerThumb3_offset|ab_rig_A:Rig_R_FingerThumb3_space|ab_rig_A:Rig_R_FingerThumb3.rotateZ" 
		"ab_rig_ARN.placeHolderList[728]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateX" 
		"ab_rig_ARN.placeHolderList[729]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateY" 
		"ab_rig_ARN.placeHolderList[730]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.translateZ" 
		"ab_rig_ARN.placeHolderList[731]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateX" 
		"ab_rig_ARN.placeHolderList[732]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateY" 
		"ab_rig_ARN.placeHolderList[733]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.rotateZ" 
		"ab_rig_ARN.placeHolderList[734]" ""
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.blendParent1" 
		"ab_rig_ARN.placeHolderList[735]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword.blendParent1" 
		"ab_rig_ARN.placeHolderList[736]" ""
		5 4 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_SwordTip_offset|ab_rig_A:Rig_R_SwordTip.translateZ" 
		"ab_rig_ARN.placeHolderList[737]" ""
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateX" 
		"ab_rig_ARN.placeHolderList[738]" "ab_rig_A:Rig_R_Sword.tx"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateY" 
		"ab_rig_ARN.placeHolderList[739]" "ab_rig_A:Rig_R_Sword.ty"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintTranslateZ" 
		"ab_rig_ARN.placeHolderList[740]" "ab_rig_A:Rig_R_Sword.tz"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateX" 
		"ab_rig_ARN.placeHolderList[741]" "ab_rig_A:Rig_R_Sword.rx"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateY" 
		"ab_rig_ARN.placeHolderList[742]" "ab_rig_A:Rig_R_Sword.ry"
		5 3 "ab_rig_ARN" "|ab_rig_A:All_Grp|ab_rig_A:Rig_Grp|ab_rig_A:Rig_R_Sword_Grp|ab_rig_A:Rig_R_Sword_space|ab_rig_A:Rig_R_Sword_offset|ab_rig_A:Rig_R_Sword|ab_rig_A:Rig_R_Sword_parentConstraint1.constraintRotateZ" 
		"ab_rig_ARN.placeHolderList[743]" "ab_rig_A:Rig_R_Sword.rz";
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
createNode animCurveTL -n "Rig_C_root1_translateZ";
	rename -uid "59717597-45F3-E7E0-6271-549D429571C0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root1_translateY";
	rename -uid "069385BF-46B1-F605-FD5F-CFBC1C4E5593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root1_rotateZ";
	rename -uid "69241522-4717-5101-498E-93924DA3A3F8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root1_rotateX";
	rename -uid "5F8F4E63-4114-5ACF-84F9-32A8F60FC009";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root1_rotateY";
	rename -uid "1F97FF16-4E87-0462-A5DB-5897153D48D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root1_translateX";
	rename -uid "900410F9-435D-1104-BDDC-98908C50C67F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root2_translateZ";
	rename -uid "BB1AA2CD-4950-65FF-CB28-9E8FF6AC7F83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root2_translateY";
	rename -uid "AC458D92-4936-DA8B-5467-47BA96AB80D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root2_rotateZ";
	rename -uid "6DDD8FBE-4CB9-B803-221F-28964A57F8ED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root2_rotateX";
	rename -uid "606167CC-4678-39C3-C364-EE8DEA9D00A2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_root2_rotateY";
	rename -uid "917FFD0C-4CE2-D580-EC73-1E86A0A8C4E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_root2_translateX";
	rename -uid "838BCAE8-40A4-63AC-49EA-839A15C73C3D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateZ";
	rename -uid "7D8ECEC6-4DCB-65C1-E24D-C9882B3793C7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.46892020036517335 22 -2.140240148459128
		 52 1.023941014775517 60 0.46892020036517335;
	setAttr -s 4 ".kix[0:3]"  0.26666666666666672 1 1 0.26666666666666672;
	setAttr -s 4 ".kiy[0:3]"  -0.99003712840763991 0 0 -0.99003712840763991;
	setAttr -s 4 ".kox[0:3]"  0.73333333333333317 1 1 0.73333333333333317;
	setAttr -s 4 ".koy[0:3]"  -2.7226021031210097 0 0 -2.7226021031210097;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateY";
	rename -uid "2B95B415-4B41-B47A-FA54-2AA238392417";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -19.378310865078419 8 -19.080824986093699
		 15 -21.422778012689289 21 -21.253918996210242 30 -18.967747852627305 38 -19.209539745251551
		 45 -21.969911355609245 51 -21.769821512739721 60 -19.378310865078419;
	setAttr -s 9 ".kix[0:8]"  0.34584799979268077 0.23756130048580729 
		0.22510644402644467 0.1995666431772255 0.34584799979268038 0.15597593144504548 0.18808566595029033 
		0.18943752701924443 0.34584799979268077;
	setAttr -s 9 ".kiy[0:8]"  0.93829055256855376 -0.97137254877389456 
		-0.97433417719885462 0.97988425588483352 0.93829055256855387 -0.98776085608301489 
		-0.98215262676634718 0.98189277589604096 0.93829055256855365;
	setAttr -s 9 ".kox[0:8]"  0.34584799979268077 0.23756130048580729 
		0.22510644402644467 0.1995666431772255 0.34584799979268077 0.15597593144504548 0.18808566595029033 
		0.18943752701924443 0.34584799979268077;
	setAttr -s 9 ".koy[0:8]"  0.93829055256855376 -0.97137254877389456 
		-0.97433417719885462 0.97988425588483352 0.93829055256855376 -0.98776085608301489 
		-0.98215262676634718 0.98189277589604096 0.93829055256855376;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateZ";
	rename -uid "E50AF4B5-4BB2-BA31-7D9E-C4A80B47CDB6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateX";
	rename -uid "463DB2C0-4BDE-7746-1799-32B9CB937BCA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Waist_rotateY";
	rename -uid "80359AC3-4A72-F792-DA6F-8FB46784837E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -35.904297640381898 30 -35.904297640381898
		 60 -35.904297640381898;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_Waist_translateX";
	rename -uid "96060D16-476E-D332-60CE-94ABE27ABED7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.1356675203603182 5 4.2516514185931271
		 35 2.6858687924502167 60 4.1356675203603182;
	setAttr -s 4 ".kix[0:3]"  0.83333333333333304 1 1 0.83333333333333304;
	setAttr -s 4 ".kiy[0:3]"  1.0873490459325761 0 0 1.0873490459325761;
	setAttr -s 4 ".kox[0:3]"  0.16666666666666741 1 1 0.16666666666666741;
	setAttr -s 4 ".koy[0:3]"  0.21746980918651548 0 0 0.21746980918651548;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateZ";
	rename -uid "175FB162-440C-021B-44D6-96A57388BFB9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.9187895699734208 6 -4.1498443646141761
		 12 -4.1498443646141761 18 -2.2106607057995347 24 -2.2106607057995347 30 -3.2456182765152146
		 36 -4.1498443646141761 42 -4.1498443646141761 48 -1.6877347753326657 54 -1.6877347753326657
		 60 -2.9187895699734208;
	setAttr -s 11 ".kix[0:10]"  0.99427889314545481 0.99856046918467667 
		0.99427889314545481 0.99427889314545481 0.99898190986844093 0.99643943994606976 0.99856046918467667 
		0.99427889314545481 0.99427889314545481 0.99856046918467667 0.99427889314545481;
	setAttr -s 11 ".kiy[0:10]"  -0.106815179845606 -0.053637574345586692 
		0.10681517984560596 0.10681517984560598 -0.045112567601522935 -0.08431157998734598 
		-0.053637574345586692 0.10681517984560596 0.10681517984560596 -0.053637574345586699 
		-0.106815179845606;
	setAttr -s 11 ".kox[0:10]"  0.99427889314545481 0.99856046918467667 
		0.99427889314545481 0.99427889314545481 0.99898190986844093 0.99643943994606976 0.99856046918467667 
		0.99427889314545481 0.99427889314545481 0.99856046918467667 0.99427889314545481;
	setAttr -s 11 ".koy[0:10]"  -0.106815179845606 -0.053637574345586692 
		0.10681517984560596 0.10681517984560598 -0.045112567601522935 -0.08431157998734598 
		-0.053637574345586692 0.10681517984560596 0.10681517984560596 -0.053637574345586699 
		-0.106815179845606;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateX";
	rename -uid "D88BFC36-4CC0-A97D-026E-AABFE0BD238E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.4210285892492607 3 7.9024384278080513
		 11 7.9024384278080513 18 6.3287269724763116 24 6.4587047854627713 33 8.2184658663437382
		 41 7.8033613205071646 48 5.9075756664485946 54 6.0615931463514947 60 7.4210285892492607;
	setAttr -s 10 ".kix[0:9]"  0.19999999999999996 0.99933643054681331 
		0.99849459485049208 0.99831362157087988 0.99783142799986502 0.99933643054681343 0.9964004081002048 
		0.99754833098499551 0.99758434506339866 0.19999999999999996;
	setAttr -s 10 ".kiy[0:9]"  0.023916686830707787 0.036423873791156768 
		-0.054850196484167321 -0.058050951637627038 0.065821282999878772 0.036423873791156337 
		-0.084771615165368921 -0.069980907032202153 0.069465635276949406 0.023916686830707787;
	setAttr -s 10 ".kox[0:9]"  0.10000000000000098 0.99933643054681343 
		0.99849459485049208 0.99831362157087988 0.99783142799986502 0.99933643054681343 0.9964004081002048 
		0.99754833098499551 0.99758434506339866 0.10000000000000098;
	setAttr -s 10 ".koy[0:9]"  0.011958343415353956 0.036423873791156296 
		-0.054850196484167321 -0.058050951637627038 0.065821282999878772 0.036423873791156296 
		-0.084771615165368921 -0.069980907032202153 0.069465635276949572 0.011958343415353956;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Hips_rotateY";
	rename -uid "CEAAAE33-477C-2FF1-A56E-13834AB55865";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.8048064291736003 12 -2.6842042674507356
		 30 -4.2075033131304824 44 -4.2075033131304824 60 -2.8048064291736003;
	setAttr -s 5 ".kix[0:4]"  0.99919150894455733 0.9997004583374588 
		0.9998607167736675 0.9997004583374588 0.99919150894455733;
	setAttr -s 5 ".kiy[0:4]"  0.040203587565023791 -0.024474345749673217 
		-0.016689728962684645 0.024474345749673217 0.040203587565023791;
	setAttr -s 5 ".kox[0:4]"  0.9991915087303338 0.9997004583374588 0.9998607167736675 
		0.9997004583374588 0.9991915087303338;
	setAttr -s 5 ".koy[0:4]"  0.040203592889183938 -0.024474345749673217 
		-0.016689728962684589 0.024474345749673217 0.040203592889183938;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateZ";
	rename -uid "8E70EC88-4327-BDD2-64B8-01B8D02C0277";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8646132991458586 30 1.8646132991458586
		 60 1.8646132991458586;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateX";
	rename -uid "A6752A62-420C-06C9-376C-DE98A326BE4B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.476895917332691 20 -15.230601803919585
		 31 -14.034167810747537 50 18.357605108166915 60 17.476895917332691;
	setAttr -s 5 ".kix[0:4]"  0.78977119361872195 0.9385991073367721 
		0.82907665981485912 0.84708231530600786 0.78977119361872195;
	setAttr -s 5 ".kiy[0:4]"  -0.61340155015296394 -0.34500973277085206 
		0.5591349498557896 0.53146171178723034 -0.61340155015296394;
	setAttr -s 5 ".kox[0:4]"  0.78977119361872195 0.93859910733677199 
		0.82907665981485912 0.84708232015478668 0.78977119361872195;
	setAttr -s 5 ".koy[0:4]"  -0.61340155015296394 -0.34500973277085206 
		0.5591349498557896 0.53146170405889426 -0.61340155015296394;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail1_rotateY";
	rename -uid "38218260-4318-8728-9CB7-F8A79A5B7BAA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 9.9520450461009435 27 -2.8792506663276267
		 57 10.321670848516581 60 9.9520450461009435;
	setAttr -s 4 ".kix[0:3]"  0.099999999999999645 1 1 0.099999999999999645;
	setAttr -s 4 ".kiy[0:3]"  -0.012441575415495038 0 0 -0.012441575415495038;
	setAttr -s 4 ".kox[0:3]"  0.89999999999999947 1 1 0.89999999999999947;
	setAttr -s 4 ".koy[0:3]"  -0.11197417873945509 0 0 -0.11197417873945509;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Tail1_parent_swaitch";
	rename -uid "62F999B6-4745-D2DD-7D51-6782ED6668A0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateZ";
	rename -uid "5F5D4F3E-4B2E-5B82-E31A-E29BDB57F4EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.7877751492366758 30 -3.7877751492366758
		 60 -3.7877751492366758;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateX";
	rename -uid "468F85B0-4C7F-4269-EFED-57AAA08ECF53";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.8456310315753619 30 -9.4917273220097886
		 60 8.8456310315753619;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail2_rotateY";
	rename -uid "02E88642-4F2A-FDB9-CE86-E18D55FFF55A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 19.347749066681676 7 23.310107158617033
		 37 -5.4180530138466603 60 19.347749066681676;
	setAttr -s 4 ".kix[0:3]"  0.76666666666666661 1 1 0.76666666666666661;
	setAttr -s 4 ".kiy[0:3]"  0.41259729782964161 0 0 0.41259729782964161;
	setAttr -s 4 ".kox[0:3]"  0.2333333333333325 1 1 0.2333333333333325;
	setAttr -s 4 ".koy[0:3]"  0.12557309064380401 0 0 0.12557309064380401;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail3_rotateZ";
	rename -uid "BE22EAF6-44C7-667C-42B0-9D9865FDAEF6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.564025397507331 30 3.564025397507331
		 60 3.564025397507331;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail3_rotateX";
	rename -uid "77D95B31-4F0E-9917-AA90-6BBCB2F24B3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.509483076823297 10 10.359093049237648
		 40 -16.060831130074849 60 3.509483076823297;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  0.40987970227223475 0 0 0.40987970227223475;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  0.20493985113611737 0 0 0.20493985113611737;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail3_rotateY";
	rename -uid "A385B9F7-4387-2872-96A6-64846B57414D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.86567990454274524 17 13.872222718469128
		 47 -7.8267797516255548 60 0.86567990454274524;
	setAttr -s 4 ".kix[0:3]"  0.87325721306374338 1 1 0.87325721306374338;
	setAttr -s 4 ".kiy[0:3]"  0.48725952000155298 0 0 0.48725952000155298;
	setAttr -s 4 ".kox[0:3]"  0.87325721306374315 1 1 0.87325721306374315;
	setAttr -s 4 ".koy[0:3]"  0.48725952000155337 0 0 0.48725952000155337;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateZ";
	rename -uid "4AF73C7E-4B26-7528-3006-18B3B3B82714";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.33375918040576436 20 -3.5156860338419875
		 30 -3.8190063484362429 49 0.33375918040576436 60 0.33375918040576436;
	setAttr -s 5 ".kix[0:4]"  0.99738366971398584 0.99738366971398584 
		0.99759343499108333 0.99738366971398584 0.99738366971398584;
	setAttr -s 5 ".kiy[0:4]"  -0.072289801409761142 -0.072289801409761142 
		0.069334972868612871 0.072289801409761142 -0.072289801409761142;
	setAttr -s 5 ".kox[0:4]"  0.99738366971398584 0.99738366971398584 
		0.99759343499108333 0.99738366971398584 0.99738366971398584;
	setAttr -s 5 ".koy[0:4]"  -0.072289801409761142 -0.072289801409761142 
		0.069334972868612871 0.072289801409761142 -0.072289801409761142;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateX";
	rename -uid "6DB6B9BA-4587-A2B4-886D-01B362ACD5A7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.989067529168663 13 9.736070691839755
		 22 8.0704325138962343 46 -24.822017234371224 60 -13.989067529168663;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[3:4]"  9 1;
	setAttr -s 5 ".kix[0:4]"  0.7229842715059579 0.46666666666666667 
		0.94530287789473677 0.95677824898094144 0.7229842715059579;
	setAttr -s 5 ".kiy[0:4]"  0.69086448971922076 0.18876932148573794 
		-0.32619391325395419 -0.29081846962832991 0.69086448971922076;
	setAttr -s 5 ".kox[0:4]"  0.7229842715059579 0.19999999999999996 
		0.94530287789473677 0.95677824898094144 0.7229842715059579;
	setAttr -s 5 ".koy[0:4]"  0.69086448971922076 0.08090113777960195 
		-0.32619391325395419 -0.29081846962832991 0.69086448971922076;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Tail4_rotateY";
	rename -uid "55A2CB14-49A4-1696-5E31-79AC1C9BBB53";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -12.497303458127925 18 9.2166712519154554
		 27 8.6071365620999885 49 -12.497303458127925 55 -15.36532365511551 60 -12.497303458127925;
	setAttr -s 6 ".kix[0:5]"  0.85811836182435508 0.9254892336962115 
		0.93884945392538255 0.93510839897621179 1 0.85811836182435508;
	setAttr -s 6 ".kiy[0:5]"  0.51345192287095898 0.37877391450890513 
		-0.34432790021142778 -0.35436179557642161 0 0.51345192287095898;
	setAttr -s 6 ".kox[0:5]"  0.85811836182435508 0.9254892336962115 
		0.93884945392538255 0.93510839897621179 1 0.85811836182435508;
	setAttr -s 6 ".koy[0:5]"  0.51345192287095898 0.37877391450890513 
		-0.34432790021142778 -0.35436179557642161 0 0.51345192287095898;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateZ";
	rename -uid "C876B2AD-403C-3EF6-059D-0FA77DB66077";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.725088497696837 30 -2.725088497696837
		 60 -2.725088497696837;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateX";
	rename -uid "957D099E-4158-7650-2145-FF8C1975A883";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.355745469665735 4 13.259980405014378
		 11 12.396454929039997 17 12.467776232856512 26 13.43339068512508 34 13.205614907482863
		 41 12.165361178808533 47 12.249873506142066 56 13.259980405014378 60 13.355745469665735;
	setAttr -s 10 ".kix[0:9]"  0.1333333333333333 0.99954601738844051 
		0.99949134497707948 0.99934557188812467 0.99980006507421104 0.99891208726127645 0.99925991940761005 
		0.99927081848045674 0.99980006507421104 0.1333333333333333;
	setAttr -s 10 ".kiy[0:9]"  0.00033809934419581911 -0.030129041187983801 
		-0.03189124199382587 0.03617219854525195 0.019995746487774482 -0.046633056122456322 
		-0.03846574405229386 0.038181557503564757 0.019995746487774468 0.00033809934419581911;
	setAttr -s 10 ".kox[0:9]"  0.1333333333333333 0.99954601738844062 
		0.99949134497707948 0.99934557188812467 0.99980006507421104 0.99891208726127645 0.99925991940761005 
		0.99927081848045674 0.99980006507421093 0.1333333333333333;
	setAttr -s 10 ".koy[0:9]"  0.00033809934419581911 -0.030129041187984051 
		-0.03189124199382587 0.03617219854525195 0.019995746487774468 -0.046633056122456322 
		-0.03846574405229386 0.038181557503564757 0.019995746487774194 0.00033809934419581911;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Spine_rotateY";
	rename -uid "A290F962-4012-91F9-6BE6-688A7579B5A4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.5770964041484667 30 -4.5770964041484667
		 60 -4.5770964041484667;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateZ";
	rename -uid "8D14D226-4779-56EB-5F66-67BF047AD97F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4227681820399978 30 -1.4227681820399984
		 60 -1.4227681820399991;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateX";
	rename -uid "9AA498C9-4CFC-1354-27A5-F8A7148C15F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.9274018889763269 7 7.2532591595599305
		 13 7.3089387425695058 22 8.0627809632425258 30 7.8849594759709412 37 7.0728473756964449
		 43 7.1388250134189066 52 7.9274018889763269 60 7.9274018889763269;
	setAttr -s 9 ".kix[0:8]"  0.9997232369443757 0.99968989687354326 
		0.99960099178173989 0.99987813108871848 0.99933652549035112 0.99954874637789892 0.99955539477139055 
		0.99987813108871848 0.9997232369443757;
	setAttr -s 9 ".kiy[0:8]"  -0.023525507719492529 -0.024902009737451842 
		0.028246366650629254 0.015611629336220675 -0.036421268798229066 -0.030038369036465402 
		0.029816317401881971 0.015611629336220661 -0.023525507719492529;
	setAttr -s 9 ".kox[0:8]"  0.9997232369443757 0.99968989687354326 
		0.99960099178173989 0.99987813108871848 0.99933652549035112 0.99954874637789892 0.99955539477139055 
		0.99987813108871848 0.9997232369443757;
	setAttr -s 9 ".koy[0:8]"  -0.023525507719492529 -0.024902009737451842 
		0.028246366650629254 0.015611629336220661 -0.036421268798229066 -0.030038369036465402 
		0.029816317401881971 0.015611629336220661 -0.023525507719492529;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Chest_rotateY";
	rename -uid "36EAB38A-4776-3084-E785-BE81331D115F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.16290042341316074 10 1.9883926981713109
		 40 -6.3094521993687946 60 -0.16290042341316074;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  0.12873307936167674 0 0 0.12873307936167674;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  0.064366539680838372 0 0 0.064366539680838372;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateZ";
	rename -uid "F637BD36-4A77-564E-44BD-1CAA830AE9C2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.260330350189676 10 -13.50893361411145
		 40 -16.407178167556033 60 -14.260330350189676;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  0.044963475542756204 0 0 0.044963475542756204;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  0.022481737771378102 0 0 0.022481737771378102;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateX";
	rename -uid "068622F5-4A21-4B3A-EE95-618DF09E5B3A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 9.5800876292718851 7 8.0637465320129387
		 13 8.1889859454361922 22 9.8845941455646873 30 9.4846224224267086 37 7.6579484860430211
		 43 7.8063511895257669 52 9.5800876292718851 60 9.5800876292718851;
	setAttr -s 9 ".kix[0:8]"  0.99860212876733045 0.99843405234634519 
		0.99798618992082655 0.99938388621984886 0.99665678307000416 0.99772322723661311 0.99775668081956947 
		0.99938388621984886 0.99860212876733045;
	setAttr -s 9 ".kiy[0:8]"  -0.052856299731970112 -0.055941425752797577 
		0.063431575160261877 0.035097691720569847 -0.081702244525781398 -0.067441543818019756 
		0.066944797258008087 0.035097691720569792 -0.052856299731970112;
	setAttr -s 9 ".kox[0:8]"  0.99860212876733045 0.99843405234634519 
		0.99798618992082655 0.99938388621984886 0.99665678307000416 0.99772322723661311 0.99775668081956947 
		0.99938388621984886 0.99860212876733045;
	setAttr -s 9 ".koy[0:8]"  -0.052856299731970112 -0.055941425752797577 
		0.063431575160261877 0.035097691720569792 -0.081702244525781398 -0.067441543818019756 
		0.066944797258008087 0.035097691720569792 -0.052856299731970112;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Neck_rotateY";
	rename -uid "88AF392A-4B65-5897-C6D4-3F85E5C240E7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 29.999999999999996 30 29.999999999999996
		 60 29.999999999999996;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateZ";
	rename -uid "F308C238-4E7E-17D6-DB48-0B90D66623CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.719438359970864 30 6.719438359970864
		 60 6.719438359970864;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateX";
	rename -uid "AACA02DA-4ED4-6EDB-1F20-B2AE0797F491";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.8044111706818144 5 7.5050519003276239
		 12 4.4723697058097169 18 4.7228485326562186 27 8.1140649329132248 35 7.3141214866372648
		 42 3.660773613869881 48 3.9575790208353703 57 7.5050519003276239 60 7.8044111706818144;
	setAttr -s 10 ".kix[0:9]"  0.10000000000000003 0.99444342768213412 
		0.99377998341986162 0.99201698220122747 0.99754235523640389 0.98682479897114139 0.99098509676244129 
		0.99111623764738899 0.99754235523640389 0.10000000000000003;
	setAttr -s 10 ".kiy[0:9]"  0.0029248107267610957 -0.10527235695949837 
		-0.11136132431872196 0.12610434974404883 0.070066036775374818 -0.16179250951625176 
		-0.13397215380344946 0.13299850928369322 0.070066036775374707 0.0029248107267610957;
	setAttr -s 10 ".kox[0:9]"  0.16666666666666663 0.99444342768213401 
		0.99377998341986162 0.99201698220122747 0.99754235523640389 0.98682479897114139 0.99098509676244129 
		0.99111623764738899 0.997542355236404 0.16666666666666663;
	setAttr -s 10 ".koy[0:9]"  0.0048746845446019094 -0.10527235695949823 
		-0.11136132431872196 0.12610434974404883 0.070066036775374707 -0.16179250951625176 
		-0.13397215380344946 0.13299850928369322 0.070066036775374513 0.0048746845446019094;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_C_Head_rotateY";
	rename -uid "50177018-47A6-5A1D-3F24-D5A572167C5F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.4756898616939598 30 -7.4756898616939598
		 60 -7.4756898616939598;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Head_parent_switch";
	rename -uid "C9540879-4DD9-C329-20C2-569B90E8FF62";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_R_Arm_FKIK";
	rename -uid "B8A813AA-4BE8-E88C-27A8-6FBF671E0742";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_sword";
	rename -uid "A340BEFE-4F07-BD9D-3AE1-17AFF570C100";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_L_Leg_FKIK";
	rename -uid "297A207E-4F27-7727-4F2B-56A816BB3640";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_L_Arm_FKIK";
	rename -uid "16560F40-4666-DC2E-27E4-63AB2056D954";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_R_Leg_FKIK";
	rename -uid "247E28EE-4D53-C7A5-8FEF-998778E270F8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_C_Other_tail";
	rename -uid "D2231F82-4F2F-611E-80E0-998ED0520D72";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_C_eye_translateY";
	rename -uid "E060C54B-45EE-2919-56A1-6EA446E7A052";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.0080095865264106988 4 0.041207562571437338
		 12 0.051733026234992589 19 -0.031128525268939541 25 -0.025154058688274833 34 0.055733852302910274
		 42 0.047178919246442443 49 -0.050486863014844216 55 -0.043407406410862645 60 0.0080095865264106988;
	setAttr -s 10 ".kix[0:9]"  0.94510741004048671 0.995424534492521 0.98969644200186135 
		0.98847604080756224 0.98524305377623 0.995424534492521 0.97580529104774372 0.9833575138720394 
		0.98359687019252251 0.94510741004048671;
	setAttr -s 10 ".kiy[0:9]"  0.32675982538641929 0.095551013235591217 
		-0.14318153752791044 -0.15137739841008788 0.17116110827430664 0.095551013235590967 
		-0.21864133635529279 -0.18168103894298399 0.18038070004153503 0.32675982538641929;
	setAttr -s 10 ".kox[0:9]"  0.94510741004048726 0.99542453449252088 
		0.98969644200186135 0.98847604080756224 0.98524305377623 0.99542453449252088 0.97580529104774372 
		0.9833575138720394 0.98359687019252251 0.94510741004048726;
	setAttr -s 10 ".koy[0:9]"  0.32675982538641779 0.095551013235590815 
		-0.14318153752791044 -0.15137739841008788 0.17116110827430664 0.095551013235590815 
		-0.21864133635529279 -0.18168103894298399 0.18038070004153489 0.32675982538641779;
createNode animCurveTL -n "Rig_C_eye_translateX";
	rename -uid "A9B64734-44F6-0ED4-0F8A-5A900CCDCF63";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.2 60 0.2;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_eye_translateY";
	rename -uid "C5B99D74-4775-FC04-49B8-E7B605BC944A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15624028142224056 60 -0.15624028142224056;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_L_eye_translateX";
	rename -uid "D77610BC-4795-9EFB-9F7F-26BD111C5EBB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.35068467282871379 60 0.35068467282871379;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_eye_translateY";
	rename -uid "BD2F9891-4BF8-5024-E518-87AAA6BE9C48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig_R_eye_translateX";
	rename -uid "025F2DD0-4BC1-1CA1-7462-2F951A25B2C2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.25305770925939763 60 -0.25305770925939763;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig_L_Clavicle_rotateZ";
	rename -uid "3C2F1A93-448F-E15A-7AD2-3CB3D0290B3D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.522799309265991 5 12.961355305744272
		 13 12.961355305744272 20 9.5072534018467501 26 9.7925386171128057 35 13.654996426187076
		 43 12.743893315618209 50 8.582878400920892 56 8.9209277102550235 60 10.522799309265991;
	setAttr -s 10 ".kix[0:9]"  0.13333333333333353 0.97346740346049732 
		0.99280963116519627 0.99195347822087332 0.98968081729425139 0.99589388696477166 0.98468570692628887 
		0.98835226406287902 0.98852104117278727 0.13333333333333353;
	setAttr -s 10 ".kiy[0:9]"  0.033371916982981142 0.22882572932228895 
		-0.1197039525898238 -0.12660291088877554 0.14328949675319061 0.090528260262741633 
		-0.17433891870455931 -0.15218344890881222 0.15108325902848571 0.033371916982981142;
	setAttr -s 10 ".kox[0:9]"  0.16666666666666607 0.97346740346049698 
		0.99280963116519627 0.99195347822087332 0.98968081729425139 0.99589388696477166 0.98468570692628887 
		0.98835226406287902 0.98852104117278727 0.16666666666666607;
	setAttr -s 10 ".koy[0:9]"  0.041714896228726428 0.22882572932229009 
		-0.1197039525898238 -0.12660291088877554 0.14328949675319061 0.090528260262741633 
		-0.17433891870455931 -0.15218344890881222 0.15108325902848621 0.041714896228726428;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateX";
	rename -uid "6C468284-4372-0CC3-C561-BBBA2CD18AE0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4848083448933731e-17 30 -2.4848083448933731e-17
		 60 -2.4848083448933731e-17;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Clavicle_rotateY";
	rename -uid "15888B5B-4E92-EF2C-476F-55B1B4DF4816";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.295276294970332 30 -4.295276294970332
		 60 -4.295276294970332;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_L_Clavicle_parent_switch";
	rename -uid "6B068B1D-4A49-DFF1-AA47-15A6A56680FE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateZ";
	rename -uid "B2EEDA8D-45E5-7CF3-947F-FBA67F44501D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.6899037409132052 5 -3.153388100103069
		 13 -3.153388100103069 20 -4.0169135760774548 26 -3.9455922722609396 35 -2.979977819992369
		 43 -3.207753597634587 50 -4.248007326308918 54 -4.3848841736868449 60 -3.6899037409132052;
	setAttr -s 10 ".kix[0:9]"  0.13333333333333353 0.99980006507421093 
		0.99954601738844062 0.99949134497707937 0.99934557188812467 0.99980006507421104 0.99891208726127645 
		0.99843393412484949 0.99957330373920883 0.13333333333333353;
	setAttr -s 10 ".kiy[0:9]"  0.0098744712808835483 0.019995746487774361 
		-0.030129041187984054 -0.03189124199382587 0.036172198545251957 0.019995746487774482 
		-0.046633056122456308 -0.05594353571213994 0.029209766378445749 0.0098744712808835483;
	setAttr -s 10 ".kox[0:9]"  0.16666666666666607 0.99980006507421104 
		0.99954601738844062 0.99949134497707937 0.99934557188812467 0.99980006507421104 0.99891208726127645 
		0.99843393412484949 0.99957330373920883 0.16666666666666607;
	setAttr -s 10 ".koy[0:9]"  0.012343089101104467 0.019995746487774472 
		-0.030129041187984054 -0.03189124199382587 0.036172198545251957 0.019995746487774472 
		-0.046633056122456308 -0.05594353571213994 0.029209766378445749 0.012343089101104467;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateX";
	rename -uid "A069AFC1-4DFB-133D-64DD-28967A15ECD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.929397760200462 60 -25.929397760200462;
createNode animCurveTA -n "Rig_L_Shoulder_FK_rotateY";
	rename -uid "0A32AA90-417B-BB2A-7A77-3296D9F13926";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -14.247778839376611 60 -14.247778839376611;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateZ";
	rename -uid "6AE7DA83-46A7-C3D6-4CB3-30A6B6036311";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.984540137878145 7 14.383741871839714
		 15 14.383741871839714 22 11.818222045305941 28 12.030116452693331 37 14.898940929802407
		 45 14.222222882907635 52 11.131646357034693 55 10.930767105702667 60 11.984540137878145;
	setAttr -s 10 ".kix[0:9]"  0.066666666666667096 0.99823935729190649 
		0.99601404118761583 0.99553686350688497 0.99426752773897564 0.99823935729190649 0.9905181647709278 
		0.99352370175238969 0.10000000000000031 0.066666666666667096;
	setAttr -s 10 ".kiy[0:9]"  0.012858898827600385 0.059314294680466874 
		-0.089196579290431885 -0.094373478259910784 0.10692092070229017 0.059314294680467047 
		-0.13738182288364462 -0.11362505910330152 0.0033078457092851343 0.012858898827600385;
	setAttr -s 10 ".kox[0:9]"  0.2333333333333325 0.99823935729190649 
		0.99601404118761583 0.99553686350688497 0.99426752773897564 0.99823935729190649 0.9905181647709278 
		0.99352370175238958 0.099999999999999645 0.2333333333333325;
	setAttr -s 10 ".koy[0:9]"  0.045006145896601263 0.059314294680467013 
		-0.089196579290431885 -0.094373478259910784 0.10692092070229017 0.059314294680467013 
		-0.13738182288364462 -0.11362505910330201 0.0033078457092851343 0.045006145896601263;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateX";
	rename -uid "9AD6B5DD-4720-6CAB-6415-E79923622ABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_L_Elbow_FK_rotateY";
	rename -uid "8DFDE4AF-4256-38F3-3717-8D9D70FDF426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -39.794927300432207 10 -38.906379512882772
		 38 -42.737423447411707 60 -39.794927300432207;
	setAttr -s 4 ".kix[0:3]"  0.73333333333333339 1 1 0.73333333333333339;
	setAttr -s 4 ".kiy[0:3]"  0.059257206913891469 0 0 0.059257206913891469;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  0.026935094051768971 0 0 0.026935094051768971;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateZ";
	rename -uid "FB1AADD1-4D14-E726-C47F-D398F8DBBAF2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.66715056881517 3 13.884158984635089
		 12 21.965014175613572 20 21.965014175613572 27 15.056810367818533 33 15.627380798350652
		 42 23.352296416499186 50 21.530090195361449 57 13.208060365966816 60 12.66715056881517;
	setAttr -s 10 ".kix[0:9]"  0.10000000000000031 0.95631954869959979 
		0.98744094600374877 0.97213484742032297 0.96893149851490912 0.96054029749191572 0.98744094600374877 
		0.93679932630705764 0.95570871938642299 0.10000000000000031;
	setAttr -s 10 ".kiy[0:9]"  0.0089070729791848602 0.29232331548303436 
		0.15798853805014387 -0.23442235053651647 -0.24732923641505203 0.27814085800928606 
		0.15798853805014396 -0.34986714940194547 -0.29431419212936927 0.0089070729791848602;
	setAttr -s 10 ".kox[0:9]"  0.099999999999999645 0.95631954869959923 
		0.98744094600374877 0.97213484742032297 0.96893149851490912 0.96054029749191572 0.98744094600374877 
		0.93679932630705764 0.95570871938642266 0.099999999999999645;
	setAttr -s 10 ".koy[0:9]"  0.0089070729791848602 0.29232331548303664 
		0.15798853805014387 -0.23442235053651647 -0.24732923641505203 0.27814085800928606 
		0.15798853805014387 -0.34986714940194547 -0.29431419212937049 0.0089070729791848602;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateX";
	rename -uid "A22BEA20-460D-E29E-2B1B-77BF35494063";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.165679062581816 60 10.165679062581816;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_FK_rotateY";
	rename -uid "EFAF4A89-4F92-B995-8C07-48805CD5B996";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateZ";
	rename -uid "945D312C-41BD-9ECF-7F4F-76840EC84E13";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.5625589617858826 5 -1.124002965307602
		 13 -1.124002965307602 20 -4.5781048692051201 26 -4.2928196539390635 35 -0.43036184486480022
		 43 -1.3414649554336651 50 -5.5024798701309807 56 -5.1644305607968484 60 -3.5625589617858826;
	setAttr -s 10 ".kix[0:9]"  0.13333333333333353 0.97346740346049732 
		0.99280963116519627 0.99195347822087332 0.98968081729425139 0.99589388696477166 0.98468570692628887 
		0.98835226406287902 0.98852104117278727 0.13333333333333353;
	setAttr -s 10 ".kiy[0:9]"  0.033371916982981142 0.22882572932228903 
		-0.1197039525898238 -0.12660291088877554 0.14328949675319061 0.090528260262741633 
		-0.17433891870455931 -0.15218344890881222 0.15108325902848571 0.033371916982981142;
	setAttr -s 10 ".kox[0:9]"  0.16666666666666607 0.97346740346049698 
		0.99280963116519627 0.99195347822087332 0.98968081729425139 0.99589388696477166 0.98468570692628887 
		0.98835226406287902 0.98852104117278727 0.16666666666666607;
	setAttr -s 10 ".koy[0:9]"  0.041714896228726386 0.22882572932229009 
		-0.1197039525898238 -0.12660291088877554 0.14328949675319061 0.090528260262741633 
		-0.17433891870455931 -0.15218344890881222 0.15108325902848621 0.041714896228726386;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateX";
	rename -uid "8799A24A-482A-B2AB-CFBC-B7A9884AB49C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.916760998934771 30 10.916760998934771
		 60 10.916760998934771;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Clavicle_rotateY";
	rename -uid "AAC8023D-4BA2-CAF7-7280-24B66E0D59C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.5725047439116917 30 5.5725047439116917
		 60 5.5725047439116917;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Clavicle_parent_switch";
	rename -uid "6D90A9A4-42C6-EF23-8464-C29CF70F6102";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateZ";
	rename -uid "861EAA51-431E-0699-7A6C-6CB5C3C50F6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -15.704145586392046 60 -15.704145586392046;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateX";
	rename -uid "97364C7C-4038-8C9A-DC91-B6A922C19B94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -11.778109189794037 60 -11.778109189794037;
createNode animCurveTA -n "Rig_R_Shoulder_FK_rotateY";
	rename -uid "9F423EF2-4F32-086D-253E-0EB189F9973E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.999999999999998 51 -14.999999999999998
		 60 -14.999999999999998;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateZ";
	rename -uid "7CBB94C3-4F23-E908-321E-E3B6B0883972";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateX";
	rename -uid "C55FAC4E-4F54-9362-BD45-A694B7815FD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_R_Elbow_FK_rotateY";
	rename -uid "A5835F54-4599-3202-79BB-15A2E01DB3BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -36.55868428069229 60 -36.55868428069229;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateZ";
	rename -uid "547AC50E-4B0E-9356-2897-2A8D22A2D27F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateX";
	rename -uid "A28A8405-4737-AF65-F70D-DE9FFCD7F34D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.759618288943543 60 12.759618288943543;
createNode animCurveTA -n "Rig_R_Hand_FK_rotateY";
	rename -uid "86B97E18-409E-33D5-C910-4599703C1EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.8335818923455349 60 8.8335818923455349;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateZ";
	rename -uid "4A544966-47C8-F936-8F0C-DAB3C47821D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 35.349203102165475 30 35.349203102165475
		 60 35.349203102165475;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateY";
	rename -uid "D3C05ABC-40AE-F146-C811-EF95DC500D0C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateZ";
	rename -uid "78BD6D41-4630-B90D-8D40-E79E7E91D9AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_L_Leg1_IK_parent_switch";
	rename -uid "B7B1694D-49F7-5C16-CA01-6A8E1E735532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateX";
	rename -uid "2E733105-4A06-B7F7-9A95-F492C62E012D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg1_IK_rotateY";
	rename -uid "BE9F4EEB-4251-315B-1259-0A8DCC38ED8A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.4274277894803271 30 -4.4274277894803271
		 60 -4.4274277894803271;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Leg1_IK_translateX";
	rename -uid "0A1F0BC5-4771-33D7-C97F-A0A88692CC9C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 22.408229382791777 30 22.408229382791777
		 60 22.408229382791777;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateZ";
	rename -uid "BDC87192-44EE-EE81-0216-82A194EAC957";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateX";
	rename -uid "4124CDA2-4CED-B0D7-8774-AAAE2726A517";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg2_IK_rotateY";
	rename -uid "324C50C0-4013-1CDD-4779-01AF4F7EAC4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateZ";
	rename -uid "56337E6A-43C3-4A1A-7566-F3A0842BAF72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateX";
	rename -uid "707F2FEE-454E-5793-D023-DA8D69D8D52B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg3_IK_rotateY";
	rename -uid "217BD135-4835-F561-677D-ACA8BE799B86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateZ";
	rename -uid "37B47277-4546-9A44-305C-94B8C81DF94D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateX";
	rename -uid "90A60880-4113-EFAB-40C6-B8B25E14101E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg4_IK_rotateY";
	rename -uid "E09AA3EF-463A-8D19-B8AB-409A33762E58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.022250192725599454 5 0 35 0.30037760179559292
		 60 0.022250192725599454;
	setAttr -s 4 ".kix[0:3]"  0.83333333333333304 1 1 0.83333333333333304;
	setAttr -s 4 ".kiy[0:3]"  -0.0036406792712343925 0 0 -0.0036406792712343925;
	setAttr -s 4 ".kox[0:3]"  0.16666666666666741 1 1 0.16666666666666741;
	setAttr -s 4 ".koy[0:3]"  -0.00072813585424687775 0 0 -0.00072813585424687775;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateZ";
	rename -uid "3AF3D306-49E6-C821-AA7F-4DA172DFFB09";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 19 0 30 2.6022042492597657 42 2.6022042492597657
		 52 0 60 0;
	setAttr -s 6 ".kix[0:5]"  1 1 0.9982499392990396 0.99897023940110063 
		1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0.059135933995023225 -0.045370263288939831 
		0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 0.9982499392990396 0.99897023940110063 
		1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0.059135933995023225 -0.045370263288939741 
		0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateX";
	rename -uid "7E8E2E82-40F8-0640-B130-C880D0C253C4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19 0 30 0 42 0 60 0;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg5_IK_rotateY";
	rename -uid "597B6508-4A57-2FB7-133C-1DA62F2528D2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19 0 30 0 42 0 60 0;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateZ";
	rename -uid "A7559281-4F26-3E1B-01D5-8A8279B91FE2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateX";
	rename -uid "71CE1A75-40C7-9AA6-AA5D-469BC6F05EFE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Leg6_IK_rotateY";
	rename -uid "1D94963F-446D-F167-C7F3-BFBA498BE6D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateZ";
	rename -uid "44363063-4AD9-EB27-CC80-6D96A0D58276";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.457147878079454 30 28.457147878079454
		 60 28.457147878079454;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateY";
	rename -uid "A4F5A3A5-4D7A-06DC-6F50-6CB02B4F3379";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.76007515875600262 30 -0.76007515875600262
		 60 -0.76007515875600262;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_LegPole_IK_translateX";
	rename -uid "CAA25C01-4A3B-5AD2-3A9C-E7AE414BFAF0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0476354263254537 10 3.456349638505861
		 40 -1.9772623227614208 60 2.0476354263254537;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  4.8298772989042504 0 0 4.8298772989042504;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  2.4149386494521252 0 0 2.4149386494521252;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateZ";
	rename -uid "F19651AB-4187-8A84-6748-6E9CFF571AE9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -32.106549475874189 30 -32.106549475874189
		 60 -32.106549475874189;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateY";
	rename -uid "EF153FF0-40D8-96FA-6D88-91872D1EDFCB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateZ";
	rename -uid "6FD1A62E-46EF-8141-3BC1-CF86E6EC1498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Leg1_IK_parent_switch";
	rename -uid "4D3FCD00-4043-E7D6-93AC-C08C68396DEF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateX";
	rename -uid "4140196D-47C2-15B3-00F2-698C665AE6EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg1_IK_rotateY";
	rename -uid "4DDBA0A9-44D5-7B82-5A12-35AEECB843CC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 68.353312157519412 30 68.353312157519412
		 60 68.353312157519412;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Leg1_IK_translateX";
	rename -uid "D59D0FCD-4A1E-F4C3-B295-1197EFC75DF1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.1250944419128 30 13.1250944419128 60 13.1250944419128;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateZ";
	rename -uid "3E2465D0-487F-BE55-F9F2-76A750968F43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateX";
	rename -uid "1C6C2810-47CB-0534-044D-A3B12EA58272";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg2_IK_rotateY";
	rename -uid "43C87EA8-4015-4A6F-B43A-64B6B1D03C9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateZ";
	rename -uid "92F38164-47DA-4F87-4576-B591844A6417";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateX";
	rename -uid "30FDE586-420C-707A-5578-61A4E91163EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg3_IK_rotateY";
	rename -uid "0B161450-47D6-26FE-49D9-B6A851BDEB92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateZ";
	rename -uid "24417FE4-4651-9D4A-5611-0795D8745016";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateX";
	rename -uid "42724766-4CCD-30A1-1277-71BC6672A8B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg4_IK_rotateY";
	rename -uid "F825AF21-453B-72C9-130E-8CBEB6053F0D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateZ";
	rename -uid "3DF962A5-4E4D-E42F-3FAF-D4BC54B2D790";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 9.4621457202790342 2 9.5612058338423367
		 17 7.5226211797194713 32 8.5465863994930604 47 7.5226211797194713 60 9.4621457202790342;
	setAttr -s 6 ".kix[0:5]"  0.43333333333333379 1 1 1 1 0.43333333333333379;
	setAttr -s 6 ".kiy[0:5]"  0.021379635256417673 0 0 0 0 0.021379635256417673;
	setAttr -s 6 ".kox[0:5]"  0.066666666666667762 1 1 1 1 0.066666666666667762;
	setAttr -s 6 ".koy[0:5]"  0.0032891746548335266 0 0 0 0 0.0032891746548335266;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateX";
	rename -uid "F712AA39-4B2C-4A54-9ED6-39920AC699EA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.1961425632916427 2 5.3395974797111485
		 17 2.3874002668097609 32 4.3249780453618696 47 2.3874002668097609 60 5.1961425632916427;
	setAttr -s 6 ".kix[0:5]"  0.43333333333333379 1 1 1 1 0.43333333333333379;
	setAttr -s 6 ".kiy[0:5]"  0.030961137419138321 0 0 0 0 0.030961137419138321;
	setAttr -s 6 ".kox[0:5]"  0.066666666666667762 1 1 1 1 0.066666666666667762;
	setAttr -s 6 ".koy[0:5]"  0.0047632519106366872 0 0 0 0 0.0047632519106366872;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg5_IK_rotateY";
	rename -uid "5B75A298-4250-AF05-08A1-C3BD0F856A0A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateZ";
	rename -uid "DC1D7198-4AE3-C30C-C964-1CBE2924001F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateX";
	rename -uid "7395562F-46AA-972F-4D0E-D7B6B4D9DBEB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Leg6_IK_rotateY";
	rename -uid "1C576048-412D-2784-B890-BAB395AEE524";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateZ";
	rename -uid "CA157779-455B-DA30-B274-C1BB989C9D9F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.357062833240882 30 -22.357062833240882
		 60 -22.357062833240882;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateY";
	rename -uid "A865FF0A-4BB6-4DEE-A9FC-429714BFF79E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.427536646198611 30 -8.427536646198611
		 60 -8.427536646198611;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_LegPole_IK_translateX";
	rename -uid "8D003F8D-4017-2275-A2F4-81A949158CA8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 53.482692375695379 10 54.287671925512754
		 40 51.182750804788597 60 53.482692375695379;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  2.759929885088134 0 0 2.759929885088134;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  1.3799649425440776 0 0 1.3799649425440776;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Hand_IK_translateZ";
	rename -uid "D31F22F7-490B-C16D-B13E-0EB25EA396F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 25.493634225255075 5 24.986884141977328
		 35 31.828010266226954 60 25.493634225255075;
	setAttr -s 4 ".kix[0:3]"  0.83333333333333304 1 1 0.83333333333333304;
	setAttr -s 4 ".kiy[0:3]"  -4.7507820307288959 0 0 -4.7507820307288959;
	setAttr -s 4 ".kox[0:3]"  0.16666666666666741 1 1 0.16666666666666741;
	setAttr -s 4 ".koy[0:3]"  -0.95015640614578345 0 0 -0.95015640614578345;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Hand_IK_translateY";
	rename -uid "8713641A-484C-AB3F-4584-3E8817E60D70";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.0260304472940236 3 -0.96146364707031928
		 11 -0.96146364707031928 18 -5.1193406112322251 24 -4.7759283849072673 33 -0.12649278740048153
		 41 -1.2232336308411593 48 -4.3512086428058101 54 -3.9442816107905561 60 -2.0260304472940236;
	setAttr -s 10 ".kix[0:9]"  0.19999999999999996 0.10007117032456886 
		0.11939350555113316 0.112876624780003 0.099644842270958212 0.15751226132905505 0.11753088978709755 
		0.15727056006901535 0.14592479481555057 0.19999999999999996;
	setAttr -s 10 ".kiy[0:9]"  2.1994277460976996 0.99498028164877272 
		-0.99284701280318688 -0.99360901142163294 0.99502306777722294 0.9875170315143974 
		-0.9930692271668945 -0.98755555334147049 0.9892956859594807 2.1994277460976996;
	setAttr -s 10 ".kox[0:9]"  0.10000000000000098 0.10007117032456923 
		0.11939350555113316 0.112876624780003 0.099644842270958212 0.15751226132905505 0.11753088978709755 
		0.15727056006901535 0.14592479481555076 0.10000000000000098;
	setAttr -s 10 ".koy[0:9]"  1.0997138730488518 0.99498028164877284 
		-0.99284701280318688 -0.99360901142163294 0.99502306777722294 0.9875170315143974 
		-0.9930692271668945 -0.98755555334147049 0.9892956859594807 1.0997138730488518;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_IK_rotateZ";
	rename -uid "AAF7BE24-4CBB-5E28-A4DD-8ABF2A33F6F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.706406514477024 24 38.173971764015818
		 54 27.60749269086984 60 28.706406514477024;
	setAttr -s 4 ".kix[0:3]"  0.20000000000000004 1 1 0.20000000000000004;
	setAttr -s 4 ".kiy[0:3]"  0.035408611232539466 0 0 0.035408611232539466;
	setAttr -s 4 ".kox[0:3]"  0.80000000000000016 1 1 0.80000000000000016;
	setAttr -s 4 ".koy[0:3]"  0.14163444493015753 0 0 0.14163444493015753;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_L_Hand_IK_parent_switch";
	rename -uid "847984BB-4406-290C-603F-7EB37F84BD18";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_IK_rotateX";
	rename -uid "F9FF3A4A-4F9E-C4AB-F42D-A9AFAEC37A7F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.060332181092686 9 4.3564788355615907
		 15 5.4150156258168973 24 19.746475767909978 32 16.365872390501291 39 6.724175399693789
		 45 4.9476029919527811 54 12.71601719211926 60 14.060332181092686;
	setAttr -s 9 ".kix[0:8]"  0.20000000000000004 0.90377971468490925 
		0.88093008942493733 0.9475538151884797 0.91036010522679145 0.94740120686850926 0.9788195832159271 
		0.88177846016996553 0.20000000000000004;
	setAttr -s 9 ".kiy[0:8]"  -0.050207751604895767 -0.42799792911188722 
		0.47324642370098469 0.31959625673927455 -0.41381696293345088 -0.32004836075832688 
		0.20472475061164097 0.47166380736737118 -0.050207751604895767;
	setAttr -s 9 ".kox[0:8]"  0.066666666666666638 0.90377971468490925 
		0.88093008942493733 0.9475538151884797 0.91036010522679145 0.94740120686850926 0.9788195832159271 
		0.88177846016996564 0.066666666666666638;
	setAttr -s 9 ".koy[0:8]"  -0.016735917201631867 -0.42799792911188722 
		0.47324642370098469 0.31959625673927455 -0.41381696293345088 -0.32004836075832688 
		0.20472475061164097 0.47166380736737096 -0.016735917201631867;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Hand_IK_rotateY";
	rename -uid "9984DA5E-42A1-7913-A065-8AA4BCF18EF3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -56.238061726388679 21 -62.701386007138595
		 51 -54.457349934753502 60 -56.238061726388679;
	setAttr -s 4 ".kix[0:3]"  0.30000000000000004 1 1 0.30000000000000004;
	setAttr -s 4 ".kiy[0:3]"  -0.054388746637962115 0 0 -0.054388746637962115;
	setAttr -s 4 ".kox[0:3]"  0.69999999999999984 1 1 0.69999999999999984;
	setAttr -s 4 ".koy[0:3]"  -0.12690707548857771 0 0 -0.12690707548857771;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Hand_IK_translateX";
	rename -uid "8D31CB53-4BDD-F670-9288-A4BE5BAE4900";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.3359501650143821 9 -2.6779198397010031
		 39 -1.0947269013370171 60 -2.3359501650143821;
	setAttr -s 4 ".kix[0:3]"  0.69999999999999951 1 1 0.69999999999999951;
	setAttr -s 4 ".kiy[0:3]"  -1.3963761716370353 0 0 -1.3963761716370353;
	setAttr -s 4 ".kox[0:3]"  0.29999999999999893 1 1 0.29999999999999893;
	setAttr -s 4 ".koy[0:3]"  -0.59844693070158694 0 0 -0.59844693070158694;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_HandPole_IK_translateZ";
	rename -uid "36B9F954-474A-3534-3801-DA9EE74FE9B1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.97599137011332 30 29.326261062851188
		 60 -1.97599137011332;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_HandPole_IK_translateY";
	rename -uid "421D5F84-4B32-6D86-AACA-BAB7A8C92A9C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -32.30945577781813 30 -32.30945577781813
		 60 -32.30945577781813;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_HandPole_IK_translateX";
	rename -uid "02AF55E2-45EC-9488-B546-5BA29836E462";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 34.674943485878572 30 34.674943485878572
		 60 34.674943485878572;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Hand_IK_translateZ";
	rename -uid "F18666F9-44A9-DA11-DBF6-68B80FF90F23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.1392284313110039 10 -5.232028571409546
		 40 -12.588370888172308 60 -7.1392284313110039;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666663 1 1 0.66666666666666663;
	setAttr -s 4 ".kiy[0:3]"  6.5389709482335654 0 0 6.5389709482335654;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333331 1 1 0.33333333333333331;
	setAttr -s 4 ".koy[0:3]"  3.2694854741167854 0 0 3.2694854741167854;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Hand_IK_translateY";
	rename -uid "389C6F57-4E44-A93F-7522-F6A714E616B1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.9654929485248225 3 -7.6622690458525744
		 10 -6.4619309833166625 18 -8.4064410559272424 24 -8.1294491774090396 33 -5.5582730591716665
		 41 -6.554850734350163 48 -10.733247775053982 54 -11.402851908523989 60 -8.9654929485248225;
	setAttr -s 10 ".kix[0:9]"  0.19999999999999996 0.097225910003538196 
		0.55769682222239247 0.1394671235023314 0.12321075698986893 0.33861960459827495 0.09617098469954298 
		0.089028976465344176 0.17989059546052819 0.19999999999999996;
	setAttr -s 10 ".kiy[0:9]"  2.9604125908907264 0.99526233849371781 
		-0.83004473041098525 -0.99022670205462826 0.99238052649272768 0.94092335680527572 
		-0.99536482844328 -0.99602903639880558 0.98368662370942939 2.9604125908907264;
	setAttr -s 10 ".kox[0:9]"  0.10000000000000098 0.097225910003537974 
		0.55769682222239247 0.1394671235023314 0.12321075698986893 0.33861960459827495 0.09617098469954298 
		0.089028976465344176 0.17989059546052816 0.10000000000000098;
	setAttr -s 10 ".koy[0:9]"  1.4802062954453685 0.99526233849371792 
		-0.83004473041098525 -0.99022670205462826 0.99238052649272768 0.94092335680527572 
		-0.99536482844328 -0.99602903639880558 0.98368662370942939 1.4802062954453685;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_IK_rotateZ";
	rename -uid "5BF00841-43B1-1BAD-C589-AF99CAD82840";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.3878054786886162 10 -0.3878054786886162
		 40 -0.3878054786886162 60 -0.3878054786886162;
	setAttr -s 4 ".kix[0:3]"  0.66666666666666696 1 1 0.66666666666666696;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  0.33333333333333348 1 1 0.33333333333333348;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Hand_IK_parent_switch";
	rename -uid "74AA9D44-4016-94B9-CD4C-EFAC65C63D36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_IK_rotateX";
	rename -uid "1E5768CB-4F5A-C3EA-78EA-0BADEC7B79D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.313011987403801 6 11.233559477749916
		 13 9.4503386143507981 20 10.303092293929881 35 16.867713832758291 43 17.902557275905124
		 52 16.867713832758291 60 14.313011987403801;
	setAttr -s 8 ".kix[0:7]"  0.95315805909945861 0.98135548691601038 
		0.99939505057144906 0.98477301865801359 0.98536273252705286 1 0.99194321563953169 
		0.98630771145399709;
	setAttr -s 8 ".kiy[0:7]"  -0.30247266715151766 -0.19220147840180626 
		-0.034778339426874728 0.17384505090218583 0.17047077563858196 0 -0.12668329387376007 
		-0.16491542779976243;
	setAttr -s 8 ".kox[0:7]"  0.95315805909945861 0.98135548691601038 
		0.99939505057144906 0.98477301865801359 0.98536273252705286 1 0.99194321563953169 
		0.98630771145399709;
	setAttr -s 8 ".koy[0:7]"  -0.30247266715151766 -0.19220147840180626 
		-0.034778339426874728 0.17384505090218583 0.17047077563858196 0 -0.12668329387376007 
		-0.16491542779976243;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Hand_IK_rotateY";
	rename -uid "C5820399-429D-1D93-16FA-20B14CDC8DC3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.0078559099179585 11 -2.4138395578873006
		 21 2.2415112487611206 25 3.285079773890403 29 2.5289390042770714 36 0.52867733776943637
		 42 0.71872246206830648 51 2.496861501172611 55 2.9933043519045706 60 2.0078559099179585;
	setAttr -s 10 ".kix[0:9]"  0.97646791204225003 0.99998303050093429 
		0.95865788951907316 0.99943855163546391 0.99150225423048943 0.99735263191788015 0.99764829904461794 
		0.99582976618409247 1 0.97646791204225003;
	setAttr -s 10 ".kiy[0:9]"  -0.21566273844094772 0.0058256939644657727 
		0.28456115487331801 -0.033504947467590251 -0.13008950709360864 -0.072716762898779069 
		0.068541019932450473 0.091230898174554403 0 -0.21566273844094772;
	setAttr -s 10 ".kox[0:9]"  0.97646793045581304 0.99998303050093429 
		0.95865788951907316 0.99943855163546391 0.99150225423048943 0.99735263191788015 0.99764829904461794 
		0.99582976618409247 1 0.97646793045581304;
	setAttr -s 10 ".koy[0:9]"  -0.21566265506884016 0.0058256939644657727 
		0.28456115487331801 -0.033504947467590251 -0.13008950709360864 -0.072716762898779069 
		0.068541019932450473 0.091230898174554403 0 -0.21566265506884016;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Hand_IK_translateX";
	rename -uid "36CEAF7C-4A42-8FD4-4354-95BD25C55838";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -10.444093144125201 16 -8.0320783163828811
		 46 -12.418150538166467 60 -10.444093144125201;
	setAttr -s 4 ".kix[0:3]"  0.46666666666666656 1 1 0.46666666666666656;
	setAttr -s 4 ".kiy[0:3]"  3.0566049972251808 0 0 3.0566049972251808;
	setAttr -s 4 ".kox[0:3]"  0.53333333333333344 1 1 0.53333333333333344;
	setAttr -s 4 ".koy[0:3]"  3.4932628539716397 0 0 3.4932628539716397;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_HandPole_IK_translateZ";
	rename -uid "F6A99AA2-4FEF-5C0D-CFC4-8AA9FBF1849F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.658313544693812 30 -6.5915431027000579
		 60 14.658313544693812;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_HandPole_IK_translateY";
	rename -uid "18CEBFE8-4090-E6F7-F385-ADA0A78F0D4F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.1925490613409693 30 6.1925490613409693
		 60 6.1925490613409693;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_HandPole_IK_translateX";
	rename -uid "AA9E9C37-4BCD-581F-AE16-198D0000CB6A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -73.577538131805198 30 -73.577538131805198
		 60 -73.577538131805198;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateZ";
	rename -uid "E3FB8971-49EB-9EA8-5206-C193EFDE9BDC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.653870626623779 5 10.133866464481152
		 20 0.56816823274557404 35 10.133866464481152 50 0.56816823274557404 60 7.653870626623779;
	setAttr -s 6 ".kix[0:5]"  0.9678921108322005 0.98322596493754044 
		1 1 0.99865379415601263 0.9678921108322005;
	setAttr -s 6 ".kiy[0:5]"  0.2513659917108661 -0.18239161678279639 
		0 0 -0.051870988209214756 0.2513659917108661;
	setAttr -s 6 ".kox[0:5]"  0.9678921108322005 0.98322596493754044 
		1 1 0.99865379415601263 0.9678921108322005;
	setAttr -s 6 ".koy[0:5]"  0.2513659917108661 -0.18239161678279639 
		0 0 -0.051870988209214756 0.2513659917108661;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateX";
	rename -uid "B7EF5ED2-4CC4-1D8E-CA1B-8B95EC355E1C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex1_rotateY";
	rename -uid "705F9607-4B39-F14F-362E-09AC1D1B0CF2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateZ";
	rename -uid "CA8CBF04-47AC-6AA6-B147-CD915D259450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.0919618731221066 8 10.35238733033728
		 23 0.78668909860171277 38 10.35238733033728 53 0.78668909860171277 60 5.0919618731221066;
	setAttr -s 6 ".kix[0:5]"  0.94552834679525866 0.99523132486138688 
		1 1 0.99225369781088013 0.94552834679525866;
	setAttr -s 6 ".kiy[0:5]"  0.32553977546011953 -0.097542862448508891 
		0 0 -0.12422801286599698 0.32553977546011953;
	setAttr -s 6 ".kox[0:5]"  0.94552834679525866 0.99523132486138688 
		1 1 0.99225369781088013 0.94552834679525866;
	setAttr -s 6 ".koy[0:5]"  0.32553977546011953 -0.097542862448508891 
		0 0 -0.12422801286599698 0.32553977546011953;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateX";
	rename -uid "6452D752-4633-4165-BDD9-76BE349D368C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex2_rotateY";
	rename -uid "81B891C7-4976-6962-9C40-C58F223BD06D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateZ";
	rename -uid "310E689D-449B-6252-EEEF-D195BF68DE7C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.4735943932652802 11 -1.5857904884000773
		 26 -11.151488720135635 41 -1.5857904884000773 56 -11.151488720135635 60 -9.4735943932652802;
	setAttr -s 6 ".kix[0:5]"  0.93618795414992217 0.99942960191402452 
		1 1 0.97718053075380029 0.93618795414992217;
	setAttr -s 6 ".kiy[0:5]"  0.35149980726108981 -0.033770857525008136 
		0 0 -0.21241047600276491 0.35149980726108981;
	setAttr -s 6 ".kox[0:5]"  0.93618795414992217 0.99942960191402452 
		1 1 0.97718053075380029 0.93618795414992217;
	setAttr -s 6 ".koy[0:5]"  0.35149980726108981 -0.033770857525008136 
		0 0 -0.21241047600276491 0.35149980726108981;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateX";
	rename -uid "634BC440-43BC-1F2E-C32D-959F3C547C02";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerIndex3_rotateY";
	rename -uid "4A718AE3-4582-61BD-98BD-29AB7600AC06";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateZ";
	rename -uid "C10B426D-4B59-1786-B021-6B94F4CAFFF7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.7147492835374749 7 2.5905234909829211
		 22 -6.975174740752653 37 2.5905234909829211 52 -6.975174740752653 60 -1.7147492835374749;
	setAttr -s 6 ".kix[0:5]"  0.95186062668515892 0.99225369781088013 
		1 1 0.99523132486138688 0.95186062668515892;
	setAttr -s 6 ".kiy[0:5]"  0.30653115235899986 -0.12422801286599709 
		0 0 -0.09754286244850896 0.30653115235899986;
	setAttr -s 6 ".kox[0:5]"  0.95186062668515892 0.99225369781088013 
		1 1 0.99523132486138688 0.95186062668515892;
	setAttr -s 6 ".koy[0:5]"  0.30653115235899986 -0.12422801286599709 
		0 0 -0.09754286244850896 0.30653115235899986;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateX";
	rename -uid "079CDA87-40A9-E180-A497-2CB41D548627";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle1_rotateY";
	rename -uid "3EF4AC29-46C0-FED3-0A94-BCBBDC0085C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateZ";
	rename -uid "4CC31558-47E1-6296-CDB4-4B937B32872C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.8554613833652356 10 1.2302410105129531
		 25 -8.335457221222601 40 1.2302410105129531 55 -8.335457221222601 60 -5.8554613833652356;
	setAttr -s 6 ".kix[0:5]"  0.93755436541808457 0.99865379415601263 
		1 1 0.98322596493754044 0.93755436541808457;
	setAttr -s 6 ".kiy[0:5]"  0.34783877283231773 -0.051870988209214611 
		0 0 -0.18239161678279597 0.34783877283231773;
	setAttr -s 6 ".kox[0:5]"  0.93755436541808457 0.99865379415601263 
		1 1 0.98322596493754044 0.93755436541808457;
	setAttr -s 6 ".koy[0:5]"  0.34783877283231773 -0.051870988209214611 
		0 0 -0.18239161678279597 0.34783877283231773;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateX";
	rename -uid "79BB024E-49E7-57C3-A619-2DBBBD4BD2B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle2_rotateY";
	rename -uid "A8E06014-4438-66E6-BEE0-85B58CC96058";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateZ";
	rename -uid "69D527D0-423B-8505-B6C1-609124546ED5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -24.658082372653435 13 -15.557206217956283
		 28 -25.122904449691841 43 -15.557206217956283 58 -25.122904449691841 60 -24.658082372653435;
	setAttr -s 6 ".kix[0:5]"  0.93891037098241337 0.99996222538282198 
		1 1 0.96288739594172801 0.93891037098241337;
	setAttr -s 6 ".kiy[0:5]"  0.34416175740727917 -0.0086918241718508468 
		0 0 -0.26990343224301122 0.34416175740727917;
	setAttr -s 6 ".kox[0:5]"  0.93891037098241337 0.99996222538282198 
		1 1 0.96288739594172801 0.93891037098241337;
	setAttr -s 6 ".koy[0:5]"  0.34416175740727917 -0.0086918241718508468 
		0 0 -0.26990343224301122 0.34416175740727917;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateX";
	rename -uid "96FC63CA-4B99-2A44-F311-9281A4D74822";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerMiddle3_rotateY";
	rename -uid "4FBD3905-4AA9-DEA1-085D-4399D21C623F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateZ";
	rename -uid "E72DF8B3-40D0-56D6-EB56-1CB63E11C7E1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.9551614260429053 9 3.2434110281217414
		 24 -6.322287203613822 39 3.2434110281217414 60 -2.9551614260429053;
	setAttr -s 5 ".kix[0:4]"  0.94070189714606633 0.99731273744696269 
		1 0.99880298223922281 0.94070189714606633;
	setAttr -s 5 ".kiy[0:4]"  0.33923434482049647 -0.073261884537907704 
		0 0.04891423790712339 0.33923434482049647;
	setAttr -s 5 ".kox[0:4]"  0.94070189714606633 0.99731273744696269 
		1 0.99880298223922281 0.94070189714606633;
	setAttr -s 5 ".koy[0:4]"  0.33923434482049647 -0.073261884537907704 
		0 0.04891423790712339 0.33923434482049647;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateX";
	rename -uid "D02B5740-44BD-EF2B-1BC2-4B8A14F18C49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing1_rotateY";
	rename -uid "26457B0E-40D1-1D0A-D501-659D14881589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateZ";
	rename -uid "44396209-48C5-F303-A52B-50AAC6599C0E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -23.608643975042106 12 -15.037778359407016
		 27 -24.603476591142606 42 -15.037778359407016 60 -23.608643975042106;
	setAttr -s 5 ".kix[0:4]"  0.9366445702442695 0.99981395476957058 
		1 0.99987544583508003 0.9366445702442695;
	setAttr -s 5 ".kiy[0:4]"  0.35028124276347955 -0.01928874926041731 
		0 0.015782674554710455 0.35028124276347955;
	setAttr -s 5 ".kox[0:4]"  0.9366445702442695 0.99981395476957058 
		1 0.99987544583508003 0.9366445702442695;
	setAttr -s 5 ".koy[0:4]"  0.35028124276347955 -0.01928874926041731 
		0 0.015782674554710455 0.35028124276347955;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateX";
	rename -uid "C590260F-43D6-415A-45A8-208B2DF523DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing2_rotateY";
	rename -uid "4B533A4E-4DEC-43FB-67C2-1E85C49BE34C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateZ";
	rename -uid "0D6FFCCB-47A3-9775-54AA-A3936787F7ED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -16.525110154580311 15 -6.9594119228447555
		 30 -16.525110154580311 45 -6.9594119228447555 60 -16.525110154580311;
	setAttr -s 5 ".kix[0:4]"  0.94852025655468053 1 1 1 0.94852025655468053;
	setAttr -s 5 ".kiy[0:4]"  0.31671647084647031 0 0 0 0.31671647084647031;
	setAttr -s 5 ".kox[0:4]"  0.94852025655468053 1 1 1 0.94852025655468053;
	setAttr -s 5 ".koy[0:4]"  0.31671647084647031 0 0 0 0.31671647084647031;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateX";
	rename -uid "F0E80B08-4552-F3B1-0D70-638B071FCA58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerRing3_rotateY";
	rename -uid "55829944-4980-E9AD-29A6-21B479FE7026";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateZ";
	rename -uid "3C06A7EA-4642-E7CD-CDB3-83B80E6A34E3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.3477725584178986 11 2.5400313464473139
		 26 -7.0256668852882553 41 2.5400313464473139 56 -7.0256668852882553 60 -5.3477725584178986;
	setAttr -s 6 ".kix[0:5]"  0.93618795414992195 0.99942960191402452 
		1 1 0.97718053075380029 0.93618795414992195;
	setAttr -s 6 ".kiy[0:5]"  0.35149980726109015 -0.033770857525008163 
		0 0 -0.21241047600276516 0.35149980726109015;
	setAttr -s 6 ".kox[0:5]"  0.93618795414992195 0.99942960191402452 
		1 1 0.97718053075380029 0.93618795414992195;
	setAttr -s 6 ".koy[0:5]"  0.35149980726109015 -0.033770857525008163 
		0 0 -0.21241047600276516 0.35149980726109015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateX";
	rename -uid "2B20D700-44D7-4A4B-3E60-3A9B40527AEF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky1_rotateY";
	rename -uid "A85F41A5-47D1-3EE1-9FAB-3C908195185E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateZ";
	rename -uid "C1DF55B0-4727-FF46-BB5B-D5B7ACBC3F4B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.9548903520719794 14 -0.51106620151113213
		 29 -10.076764433246684 44 -0.51106620151113213 59 -10.076764433246684 60 -9.9548903520719794;
	setAttr -s 6 ".kix[0:5]"  0.94291424878138341 0.99999757901340336 
		1 1 0.95541409278893064 0.94291424878138341;
	setAttr -s 6 ".kiy[0:5]"  0.33303561287802147 -0.0022004470755012267 
		0 0 -0.29526921834201547 0.33303561287802147;
	setAttr -s 6 ".kox[0:5]"  0.94291424878138341 0.99999757901340336 
		1 1 0.95541409278893064 0.94291424878138341;
	setAttr -s 6 ".koy[0:5]"  0.33303561287802147 -0.0022004470755012267 
		0 0 -0.29526921834201547 0.33303561287802147;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateX";
	rename -uid "BDE5B950-454C-2D82-8799-E3966C3551E5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky2_rotateY";
	rename -uid "74C2094E-485A-1321-BA4B-A4A0AC206DFD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateZ";
	rename -uid "C5D4D408-4AAF-3D01-FF24-8D94DBB819C0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.642360748605117 2 -20.107182825643527
		 17 -10.541484593907972 32 -20.107182825643527 47 -10.541484593907972 60 -19.642360748605117;
	setAttr -s 6 ".kix[0:5]"  0.99267698792411718 0.96288739594172823 
		1 1 0.99996222538282198 0.99267698792411718;
	setAttr -s 6 ".kiy[0:5]"  -0.12079899687456831 0.26990343224301105 
		0 0 0.0086918241718509058 -0.12079899687456831;
	setAttr -s 6 ".kox[0:5]"  0.99267698792411718 0.96288739594172823 
		1 1 0.99996222538282198 0.99267698792411718;
	setAttr -s 6 ".koy[0:5]"  -0.12079899687456831 0.26990343224301105 
		0 0 0.0086918241718509058 -0.12079899687456831;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateX";
	rename -uid "774C1B13-4175-50E4-FDE8-47B7A345052C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerPinky3_rotateY";
	rename -uid "CB5FBF51-4D0D-E31B-BABF-C6AC3E557584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateZ";
	rename -uid "BF7DD821-4338-C034-DDCF-799A6F80C9C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.7866550736612288 30 -6.7866550736612288
		 60 -6.7866550736612288;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateX";
	rename -uid "CFA87D34-43F4-4D90-DADA-58AB2BED2765";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb1_rotateY";
	rename -uid "C0EF1045-4F3C-F08C-FE94-F3920A9A2C87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.6037693609594026 30 -4.6037693609594026
		 60 -4.6037693609594026;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateZ";
	rename -uid "8084D7A0-428A-A330-11B6-E69294BEDF2A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.4078655717664916 15 6.0196639294162528
		 30 -2.4078655717664916 45 6.0196639294162528 60 -2.4078655717664916;
	setAttr -s 5 ".kix[0:4]"  0.95935027463565692 1 1 1 0.95935027463565692;
	setAttr -s 5 ".kiy[0:4]"  0.28221809041322954 0 0 0 0.28221809041322954;
	setAttr -s 5 ".kox[0:4]"  0.95935027463565692 1 1 1 0.95935027463565692;
	setAttr -s 5 ".koy[0:4]"  0.28221809041322954 0 0 0 0.28221809041322954;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateX";
	rename -uid "5FF83ADE-4E3C-BC0E-CE32-FBB6B826B745";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb2_rotateY";
	rename -uid "D0911B02-4D5C-F061-A768-21840729C8F3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateZ";
	rename -uid "CE604E6E-41A8-CAF4-30F2-D6AE3D6A358B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.604267333569377 3 -12.480730401692385
		 18 -4.0532009005096148 30 -11.604267333569377 33 -12.480730401692385 48 -4.0532009005096148
		 60 -11.604267333569377;
	setAttr -s 7 ".kix[0:6]"  0.98850125202439809 0.9767158161229833 
		0.99985558480992787 0.9593502746356567 0.9767158161229833 0.99985558480992787 0.98850125202439809;
	setAttr -s 7 ".kiy[0:6]"  -0.15121268050728198 0.21453721014130553 
		0.016994396852997223 -0.28221809041323032 0.21453721014130547 0.016994396852997227 
		-0.15121268050728198;
	setAttr -s 7 ".kox[0:6]"  0.98850125202439809 0.9767158161229833 
		0.99985558480992787 0.9593502746356567 0.9767158161229833 0.99985558480992787 0.98850125202439809;
	setAttr -s 7 ".koy[0:6]"  -0.15121268050728198 0.21453721014130553 
		0.016994396852997223 -0.28221809041323032 0.21453721014130547 0.016994396852997227 
		-0.15121268050728198;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateX";
	rename -uid "93BC9FC1-4B8E-6F10-133A-E1ABB39A6D02";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_FingerThumb3_rotateY";
	rename -uid "8D81D306-48AE-7E03-C78C-3B81D47BD8A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateZ";
	rename -uid "7AA66C45-4CA7-975B-C290-DCA6FBC5D76C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateY";
	rename -uid "8102E3D5-4207-F367-7A4A-94BA84883BA7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateZ";
	rename -uid "145D84A1-4A31-CECE-278B-E495B3E26D79";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateX";
	rename -uid "776B84C9-4F8F-5454-0048-48AA3A87B381";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon1_rotateY";
	rename -uid "4C7A9C35-4B43-6E4A-F3CC-5AB5C29ECCDF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon1_translateX";
	rename -uid "B3289058-4632-933E-95F8-2FB7659A36EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateZ";
	rename -uid "42FA5D60-43EA-C3D7-D90B-BC81332FE6CD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateY";
	rename -uid "FBF39F13-41DD-1F2E-2827-5B826A587E80";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateZ";
	rename -uid "EB3E0798-48F1-6A3F-61BC-D59553B1B05B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateX";
	rename -uid "E074634C-4E62-9DC3-9EA6-3481C051BEB6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_L_Weapon2_rotateY";
	rename -uid "01624FFA-47D2-F07C-837E-E9849F611414";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_L_Weapon2_translateX";
	rename -uid "221B878D-49F1-4A18-CD4C-E98A8268DC7C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateZ";
	rename -uid "146E6FD5-4F16-7735-A0B6-3E81245F0B4F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateY";
	rename -uid "B68A73EF-4DFE-A2D4-83F9-40BD1893BD1B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateZ";
	rename -uid "B1E29416-472D-19F9-4D7D-19A0D6FE9B44";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -29.999999999999996 60 -29.999999999999996;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateX";
	rename -uid "018FFABE-41A3-0433-AFEA-078B74808ACD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -29.999999999999996 60 -29.999999999999996;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon1_rotateY";
	rename -uid "77E1914A-4732-7373-A793-DE9CDFC62C67";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 14.999999999999998 60 14.999999999999998;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon1_translateX";
	rename -uid "F98F58F8-4648-A6F1-E19A-F08DD14D1DA8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateZ";
	rename -uid "EE3477CB-4032-7A30-8AA3-A88EEBCD46CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateY";
	rename -uid "0931FD85-4B8D-FC68-0373-7B983DF9597F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateZ";
	rename -uid "1A3C7420-4122-E87D-FB1B-7F8F3AA2D3F9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateX";
	rename -uid "AA4D80E6-4603-078F-8DF8-7BB28A980AFE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_Weapon2_rotateY";
	rename -uid "AE8168BC-4C4E-8CA5-1E2B-99A4CCE89755";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_Weapon2_translateX";
	rename -uid "45A40257-451F-D882-D738-5796BC0BB357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateZ";
	rename -uid "5E8C26FF-4B7B-DD66-CC8B-479881625D6C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -48.696991606606467 30 -48.696991606606467
		 60 -48.696991606606467;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateX";
	rename -uid "3206513F-48AD-91E8-1D03-2589DE12F343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex1_rotateY";
	rename -uid "A0909C8C-46F5-0BBE-84BA-B1BC9DEA49D2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateZ";
	rename -uid "C67F69AD-4EF9-C410-EF51-61BBB887CBD3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -63.57333943664554 30 -63.57333943664554
		 60 -63.57333943664554;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateX";
	rename -uid "8BEB5613-476C-C4BF-2506-DF8D62CF2F54";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex2_rotateY";
	rename -uid "EC2FF013-45B0-FE16-E879-8FABA4CA2650";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateZ";
	rename -uid "29950EA6-48B6-63D3-7206-F6AC72409B93";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -55.694229839249701 30 -55.694229839249701
		 60 -55.694229839249701;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateX";
	rename -uid "98E33085-4038-1540-7D8A-BD9DC97CFECB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerIndex3_rotateY";
	rename -uid "DCCE11A5-4BB5-BBC3-2F9F-B69C456079BE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateZ";
	rename -uid "38F60DE2-498B-3E70-EB78-1492C9261B3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -49.816491082757132 30 -49.816491082757132
		 60 -49.816491082757132;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateX";
	rename -uid "B6B66F24-413D-0634-A6F3-F18DCCAA6288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle1_rotateY";
	rename -uid "677AB531-4311-4A2B-B5FF-2E9F6C22BC12";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateZ";
	rename -uid "12DDA9DC-4169-974B-D315-01B889F02300";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.890657438228232 30 -64.890657438228232
		 60 -64.890657438228232;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateX";
	rename -uid "01C4BB0A-43B2-1381-38B5-95AAD59EE5B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle2_rotateY";
	rename -uid "EAA45A93-4B14-83B4-7005-089E3DC50AED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateZ";
	rename -uid "155537C4-4467-D259-0C71-45B0FBC1E56C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.890657438228232 30 -64.890657438228232
		 60 -64.890657438228232;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateX";
	rename -uid "697291F7-432B-02D2-75AA-3E8F0EFDFC23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerMiddle3_rotateY";
	rename -uid "550250D5-418A-46C2-4CB0-47860C3A8D04";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateZ";
	rename -uid "30305DF0-4D52-56D0-031C-E7A6A395C885";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -58.146457021055213 30 -58.146457021055213
		 60 -58.146457021055213;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateX";
	rename -uid "31F2508B-4E12-3EBE-5FD5-42A9D931CD17";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing1_rotateY";
	rename -uid "86307DBC-4635-51FF-72F1-99AA08BCF7D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateZ";
	rename -uid "4AE10621-457F-503C-D339-8491F68077F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -62.509907281665399 30 -62.509907281665399
		 60 -62.509907281665399;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateX";
	rename -uid "4C08EB2F-47D2-57F1-8940-4C8AAB113A47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing2_rotateY";
	rename -uid "C04CF0F3-4068-DBDF-DC06-61B7E1C7968A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateZ";
	rename -uid "42DD198F-421F-6552-3E32-5DA29D519079";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.890657438228232 30 -64.890657438228232
		 60 -64.890657438228232;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateX";
	rename -uid "8BAAF6BE-4595-F619-ACFE-85B26B8D4B2B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerRing3_rotateY";
	rename -uid "9520A2C0-4141-2E87-0159-67B1C2C1E91F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateZ";
	rename -uid "9B414D80-4A55-1C4F-89CD-4BA468E7F58B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -58.146457021055213 30 -58.146457021055213
		 60 -58.146457021055213;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateX";
	rename -uid "0762A739-49F0-9218-0476-E897DB4EA083";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky1_rotateY";
	rename -uid "4D5A07AB-46A7-6645-55AE-7BA9D522873C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateZ";
	rename -uid "754E198A-4998-2A11-E717-E9AB51AB262D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -44.504112609698062 30 -44.504112609698062
		 60 -44.504112609698062;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateX";
	rename -uid "BD3B62A1-4F54-4FB6-BB28-90BEDF733007";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky2_rotateY";
	rename -uid "BBE91F35-4952-0717-FC91-DB9D6EAFF248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateZ";
	rename -uid "FD5A85DE-4737-BB40-B474-C9810FF78921";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.890657438228232 30 -64.890657438228232
		 60 -64.890657438228232;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateX";
	rename -uid "B6AD46D8-42E8-DEFF-E105-9183B4C4975D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerPinky3_rotateY";
	rename -uid "719095E7-4B21-6F95-4494-1BA919ABC4BA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateZ";
	rename -uid "3DA80AD8-4907-97DA-DA77-F9B1FB56D504";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.24882693488271251 30 -0.24882693488271251
		 60 -0.24882693488271251;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateX";
	rename -uid "88EF5967-4838-A955-66CE-C0911B613EE9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -13.35708144769646 30 -13.35708144769646
		 60 -13.35708144769646;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb1_rotateY";
	rename -uid "6AB38728-41C3-F57B-C02E-A88CAAE08F7F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.63008811387148844 30 0.63008811387148844
		 60 0.63008811387148844;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateZ";
	rename -uid "3D32C2B1-432E-0A77-AE03-3784AC8F2845";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -23.276986821809068 30 -23.276986821809068
		 60 -23.276986821809068;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateX";
	rename -uid "F2DDED96-49A6-90BE-664D-3EAD89A6E6AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb2_rotateY";
	rename -uid "FF431C0C-4E93-0A41-678A-18AB0F811F25";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateZ";
	rename -uid "3C661F9F-401B-1181-8507-528E453256C4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -74.640567958212344 30 -74.640567958212344
		 60 -74.640567958212344;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateX";
	rename -uid "F0923524-464D-D0EF-8DEA-B49BF852AB8D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig_R_FingerThumb3_rotateY";
	rename -uid "CD121F1E-4055-AF30-A0D3-54876BA1E640";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig_R_Sword_parent_switch";
	rename -uid "577E7287-4438-A51A-3C67-D69A239D1B47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig_R_SwordTip_translateZ";
	rename -uid "076128CC-4492-69FB-76A7-FAB55B8C49D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F834C647-4F18-79B2-4F6A-BA8E381C72B5";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast -10 -aet 93 ";
	setAttr ".st" 6;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3DDAE7B9-408B-A974-1976-A39271851809";
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
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
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
createNode animCurveTL -n "Rig_R_eye_translateZ";
	rename -uid "8619C158-4B0F-B4F5-7319-AE9538506AA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_R_eye_rotateX";
	rename -uid "9F2E852B-47B4-0F3E-22A2-138E036CF436";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_R_eye_rotateY";
	rename -uid "8EAA9FD7-4F0A-60AB-04BA-EAA064831A1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_R_eye_rotateZ";
	rename -uid "5DB4EE41-4860-FC0A-EFD1-5EA0C6ED27A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "Rig_L_eye_translateZ";
	rename -uid "56CA5E69-4238-B945-DD12-86A4C6E90EF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_L_eye_rotateX";
	rename -uid "BCFDFFB8-4FF4-2920-99FD-7F8DFA11AAB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_L_eye_rotateY";
	rename -uid "21224E8A-49F2-A32F-605D-009500310CBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_L_eye_rotateZ";
	rename -uid "D566A069-47B1-88F7-0E9D-FAA253B5A2A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "Rig_C_Weapon_set_rotateZ";
	rename -uid "E19E63E5-4F69-4E34-D8F0-49A262FDD487";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode pairBlend -n "pairBlend1";
	rename -uid "7D74DCC8-459A-6279-B3BE-0BB979F877BF";
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "5D613EA4-4593-460D-619A-F1A58AD82D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.578186050538768 60 23.578186050538768;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "BAECDBED-4B71-46F7-3AC7-AF9F0B8F289C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -9.3589689694769227 60 -9.3589689694769227;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "3759EC06-437E-0645-9A37-15AC74E9744A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -35.059261267791861 60 -35.059261267791861;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "9E8F069C-46E1-5463-B839-A4A6383B5A78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -41.161331682929557 60 -41.161331682929557;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "C2E718DC-4389-64CA-12DB-A1AED5A0F398";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.288265754960122 60 20.288265754960122;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "9B11A2DD-4BAB-2452-3CBF-C388AB1F4A76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -60.315615934383295 60 -60.315615934383295;
createNode animCurveTU -n "Rig_R_Sword_blendParent1";
	rename -uid "6AFFE5A0-4F68-B0F4-7376-769356CFDDC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "04484AEF-44AF-8A11-9080-569841BC8810";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -165.47618390075775 ;
	setAttr ".tgi[0].vh" -type "double2" 289.28570279053326 44.047617297323995 ;
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
connectAttr "Rig_C_root1_translateZ.o" "ab_rig_ARN.phl[461]";
connectAttr "Rig_C_root1_translateY.o" "ab_rig_ARN.phl[462]";
connectAttr "Rig_C_root1_translateX.o" "ab_rig_ARN.phl[463]";
connectAttr "Rig_C_root1_rotateZ.o" "ab_rig_ARN.phl[464]";
connectAttr "Rig_C_root1_rotateX.o" "ab_rig_ARN.phl[465]";
connectAttr "Rig_C_root1_rotateY.o" "ab_rig_ARN.phl[466]";
connectAttr "Rig_C_root2_rotateX.o" "ab_rig_ARN.phl[467]";
connectAttr "Rig_C_root2_rotateY.o" "ab_rig_ARN.phl[468]";
connectAttr "Rig_C_root2_rotateZ.o" "ab_rig_ARN.phl[469]";
connectAttr "Rig_C_root2_translateZ.o" "ab_rig_ARN.phl[470]";
connectAttr "Rig_C_root2_translateY.o" "ab_rig_ARN.phl[471]";
connectAttr "Rig_C_root2_translateX.o" "ab_rig_ARN.phl[472]";
connectAttr "Rig_C_Waist_translateZ.o" "ab_rig_ARN.phl[473]";
connectAttr "Rig_C_Waist_translateY.o" "ab_rig_ARN.phl[474]";
connectAttr "Rig_C_Waist_translateX.o" "ab_rig_ARN.phl[475]";
connectAttr "Rig_C_Waist_rotateZ.o" "ab_rig_ARN.phl[476]";
connectAttr "Rig_C_Waist_rotateX.o" "ab_rig_ARN.phl[477]";
connectAttr "Rig_C_Waist_rotateY.o" "ab_rig_ARN.phl[478]";
connectAttr "Rig_C_Hips_rotateZ.o" "ab_rig_ARN.phl[479]";
connectAttr "Rig_C_Hips_rotateX.o" "ab_rig_ARN.phl[480]";
connectAttr "Rig_C_Hips_rotateY.o" "ab_rig_ARN.phl[481]";
connectAttr "Rig_C_Tail1_parent_swaitch.o" "ab_rig_ARN.phl[482]";
connectAttr "Rig_C_Tail1_rotateZ.o" "ab_rig_ARN.phl[483]";
connectAttr "Rig_C_Tail1_rotateX.o" "ab_rig_ARN.phl[484]";
connectAttr "Rig_C_Tail1_rotateY.o" "ab_rig_ARN.phl[485]";
connectAttr "Rig_C_Tail2_rotateZ.o" "ab_rig_ARN.phl[486]";
connectAttr "Rig_C_Tail2_rotateX.o" "ab_rig_ARN.phl[487]";
connectAttr "Rig_C_Tail2_rotateY.o" "ab_rig_ARN.phl[488]";
connectAttr "Rig_C_Tail3_rotateX.o" "ab_rig_ARN.phl[489]";
connectAttr "Rig_C_Tail3_rotateY.o" "ab_rig_ARN.phl[490]";
connectAttr "Rig_C_Tail3_rotateZ.o" "ab_rig_ARN.phl[491]";
connectAttr "Rig_C_Tail4_rotateX.o" "ab_rig_ARN.phl[492]";
connectAttr "Rig_C_Tail4_rotateY.o" "ab_rig_ARN.phl[493]";
connectAttr "Rig_C_Tail4_rotateZ.o" "ab_rig_ARN.phl[494]";
connectAttr "Rig_C_Spine_rotateX.o" "ab_rig_ARN.phl[495]";
connectAttr "Rig_C_Spine_rotateY.o" "ab_rig_ARN.phl[496]";
connectAttr "Rig_C_Spine_rotateZ.o" "ab_rig_ARN.phl[497]";
connectAttr "Rig_C_Chest_rotateX.o" "ab_rig_ARN.phl[498]";
connectAttr "Rig_C_Chest_rotateY.o" "ab_rig_ARN.phl[499]";
connectAttr "Rig_C_Chest_rotateZ.o" "ab_rig_ARN.phl[500]";
connectAttr "Rig_C_Neck_rotateX.o" "ab_rig_ARN.phl[501]";
connectAttr "Rig_C_Neck_rotateY.o" "ab_rig_ARN.phl[502]";
connectAttr "Rig_C_Neck_rotateZ.o" "ab_rig_ARN.phl[503]";
connectAttr "Rig_C_Head_parent_switch.o" "ab_rig_ARN.phl[504]";
connectAttr "Rig_C_Head_rotateZ.o" "ab_rig_ARN.phl[505]";
connectAttr "Rig_C_Head_rotateX.o" "ab_rig_ARN.phl[506]";
connectAttr "Rig_C_Head_rotateY.o" "ab_rig_ARN.phl[507]";
connectAttr "Rig_C_Other_L_Arm_FKIK.o" "ab_rig_ARN.phl[508]";
connectAttr "Rig_C_Other_R_Arm_FKIK.o" "ab_rig_ARN.phl[509]";
connectAttr "Rig_C_Other_L_Leg_FKIK.o" "ab_rig_ARN.phl[510]";
connectAttr "Rig_C_Other_R_Leg_FKIK.o" "ab_rig_ARN.phl[511]";
connectAttr "Rig_C_Other_sword.o" "ab_rig_ARN.phl[512]";
connectAttr "Rig_C_Other_tail.o" "ab_rig_ARN.phl[513]";
connectAttr "Rig_C_eye_translateY.o" "ab_rig_ARN.phl[514]";
connectAttr "Rig_C_eye_translateX.o" "ab_rig_ARN.phl[515]";
connectAttr "Rig_L_eye_translateY.o" "ab_rig_ARN.phl[516]";
connectAttr "Rig_L_eye_translateX.o" "ab_rig_ARN.phl[517]";
connectAttr "Rig_R_eye_translateY.o" "ab_rig_ARN.phl[518]";
connectAttr "Rig_R_eye_translateX.o" "ab_rig_ARN.phl[519]";
connectAttr "Rig_L_Clavicle_parent_switch.o" "ab_rig_ARN.phl[520]";
connectAttr "Rig_L_Clavicle_rotateX.o" "ab_rig_ARN.phl[521]";
connectAttr "Rig_L_Clavicle_rotateY.o" "ab_rig_ARN.phl[522]";
connectAttr "Rig_L_Clavicle_rotateZ.o" "ab_rig_ARN.phl[523]";
connectAttr "Rig_L_Shoulder_FK_rotateX.o" "ab_rig_ARN.phl[524]";
connectAttr "Rig_L_Shoulder_FK_rotateY.o" "ab_rig_ARN.phl[525]";
connectAttr "Rig_L_Shoulder_FK_rotateZ.o" "ab_rig_ARN.phl[526]";
connectAttr "Rig_L_Elbow_FK_rotateX.o" "ab_rig_ARN.phl[527]";
connectAttr "Rig_L_Elbow_FK_rotateY.o" "ab_rig_ARN.phl[528]";
connectAttr "Rig_L_Elbow_FK_rotateZ.o" "ab_rig_ARN.phl[529]";
connectAttr "Rig_L_Hand_FK_rotateX.o" "ab_rig_ARN.phl[530]";
connectAttr "Rig_L_Hand_FK_rotateY.o" "ab_rig_ARN.phl[531]";
connectAttr "Rig_L_Hand_FK_rotateZ.o" "ab_rig_ARN.phl[532]";
connectAttr "Rig_R_Clavicle_parent_switch.o" "ab_rig_ARN.phl[533]";
connectAttr "Rig_R_Clavicle_rotateX.o" "ab_rig_ARN.phl[534]";
connectAttr "Rig_R_Clavicle_rotateY.o" "ab_rig_ARN.phl[535]";
connectAttr "Rig_R_Clavicle_rotateZ.o" "ab_rig_ARN.phl[536]";
connectAttr "Rig_R_Shoulder_FK_rotateX.o" "ab_rig_ARN.phl[537]";
connectAttr "Rig_R_Shoulder_FK_rotateY.o" "ab_rig_ARN.phl[538]";
connectAttr "Rig_R_Shoulder_FK_rotateZ.o" "ab_rig_ARN.phl[539]";
connectAttr "Rig_R_Elbow_FK_rotateX.o" "ab_rig_ARN.phl[540]";
connectAttr "Rig_R_Elbow_FK_rotateY.o" "ab_rig_ARN.phl[541]";
connectAttr "Rig_R_Elbow_FK_rotateZ.o" "ab_rig_ARN.phl[542]";
connectAttr "Rig_R_Hand_FK_rotateX.o" "ab_rig_ARN.phl[543]";
connectAttr "Rig_R_Hand_FK_rotateY.o" "ab_rig_ARN.phl[544]";
connectAttr "Rig_R_Hand_FK_rotateZ.o" "ab_rig_ARN.phl[545]";
connectAttr "Rig_C_Weapon_set_rotateZ.o" "ab_rig_ARN.phl[546]";
connectAttr "Rig_L_Leg1_IK_translateZ.o" "ab_rig_ARN.phl[547]";
connectAttr "Rig_L_Leg1_IK_translateY.o" "ab_rig_ARN.phl[548]";
connectAttr "Rig_L_Leg1_IK_translateX.o" "ab_rig_ARN.phl[549]";
connectAttr "Rig_L_Leg1_IK_rotateZ.o" "ab_rig_ARN.phl[550]";
connectAttr "Rig_L_Leg1_IK_rotateX.o" "ab_rig_ARN.phl[551]";
connectAttr "Rig_L_Leg1_IK_rotateY.o" "ab_rig_ARN.phl[552]";
connectAttr "Rig_L_Leg2_IK_rotateX.o" "ab_rig_ARN.phl[553]";
connectAttr "Rig_L_Leg2_IK_rotateY.o" "ab_rig_ARN.phl[554]";
connectAttr "Rig_L_Leg2_IK_rotateZ.o" "ab_rig_ARN.phl[555]";
connectAttr "Rig_L_Leg3_IK_rotateX.o" "ab_rig_ARN.phl[556]";
connectAttr "Rig_L_Leg3_IK_rotateY.o" "ab_rig_ARN.phl[557]";
connectAttr "Rig_L_Leg3_IK_rotateZ.o" "ab_rig_ARN.phl[558]";
connectAttr "Rig_L_Leg4_IK_rotateX.o" "ab_rig_ARN.phl[559]";
connectAttr "Rig_L_Leg4_IK_rotateY.o" "ab_rig_ARN.phl[560]";
connectAttr "Rig_L_Leg4_IK_rotateZ.o" "ab_rig_ARN.phl[561]";
connectAttr "Rig_L_Leg5_IK_rotateX.o" "ab_rig_ARN.phl[562]";
connectAttr "Rig_L_Leg5_IK_rotateY.o" "ab_rig_ARN.phl[563]";
connectAttr "Rig_L_Leg5_IK_rotateZ.o" "ab_rig_ARN.phl[564]";
connectAttr "Rig_L_Leg6_IK_rotateX.o" "ab_rig_ARN.phl[565]";
connectAttr "Rig_L_Leg6_IK_rotateY.o" "ab_rig_ARN.phl[566]";
connectAttr "Rig_L_Leg6_IK_rotateZ.o" "ab_rig_ARN.phl[567]";
connectAttr "Rig_L_LegPole_IK_translateZ.o" "ab_rig_ARN.phl[568]";
connectAttr "Rig_L_LegPole_IK_translateY.o" "ab_rig_ARN.phl[569]";
connectAttr "Rig_L_LegPole_IK_translateX.o" "ab_rig_ARN.phl[570]";
connectAttr "Rig_R_Leg1_IK_rotateX.o" "ab_rig_ARN.phl[571]";
connectAttr "Rig_R_Leg1_IK_rotateY.o" "ab_rig_ARN.phl[572]";
connectAttr "Rig_R_Leg1_IK_rotateZ.o" "ab_rig_ARN.phl[573]";
connectAttr "Rig_R_Leg1_IK_translateZ.o" "ab_rig_ARN.phl[574]";
connectAttr "Rig_R_Leg1_IK_translateY.o" "ab_rig_ARN.phl[575]";
connectAttr "Rig_R_Leg1_IK_translateX.o" "ab_rig_ARN.phl[576]";
connectAttr "Rig_R_Leg2_IK_rotateX.o" "ab_rig_ARN.phl[577]";
connectAttr "Rig_R_Leg2_IK_rotateY.o" "ab_rig_ARN.phl[578]";
connectAttr "Rig_R_Leg2_IK_rotateZ.o" "ab_rig_ARN.phl[579]";
connectAttr "Rig_R_Leg3_IK_rotateX.o" "ab_rig_ARN.phl[580]";
connectAttr "Rig_R_Leg3_IK_rotateY.o" "ab_rig_ARN.phl[581]";
connectAttr "Rig_R_Leg3_IK_rotateZ.o" "ab_rig_ARN.phl[582]";
connectAttr "Rig_R_Leg4_IK_rotateX.o" "ab_rig_ARN.phl[583]";
connectAttr "Rig_R_Leg4_IK_rotateY.o" "ab_rig_ARN.phl[584]";
connectAttr "Rig_R_Leg4_IK_rotateZ.o" "ab_rig_ARN.phl[585]";
connectAttr "Rig_R_Leg5_IK_rotateX.o" "ab_rig_ARN.phl[586]";
connectAttr "Rig_R_Leg5_IK_rotateY.o" "ab_rig_ARN.phl[587]";
connectAttr "Rig_R_Leg5_IK_rotateZ.o" "ab_rig_ARN.phl[588]";
connectAttr "Rig_R_Leg6_IK_rotateX.o" "ab_rig_ARN.phl[589]";
connectAttr "Rig_R_Leg6_IK_rotateY.o" "ab_rig_ARN.phl[590]";
connectAttr "Rig_R_Leg6_IK_rotateZ.o" "ab_rig_ARN.phl[591]";
connectAttr "Rig_R_LegPole_IK_translateZ.o" "ab_rig_ARN.phl[592]";
connectAttr "Rig_R_LegPole_IK_translateY.o" "ab_rig_ARN.phl[593]";
connectAttr "Rig_R_LegPole_IK_translateX.o" "ab_rig_ARN.phl[594]";
connectAttr "Rig_L_Hand_IK_parent_switch.o" "ab_rig_ARN.phl[595]";
connectAttr "Rig_L_Hand_IK_rotateZ.o" "ab_rig_ARN.phl[596]";
connectAttr "Rig_L_Hand_IK_rotateX.o" "ab_rig_ARN.phl[597]";
connectAttr "Rig_L_Hand_IK_rotateY.o" "ab_rig_ARN.phl[598]";
connectAttr "Rig_L_Hand_IK_translateZ.o" "ab_rig_ARN.phl[599]";
connectAttr "Rig_L_Hand_IK_translateY.o" "ab_rig_ARN.phl[600]";
connectAttr "Rig_L_Hand_IK_translateX.o" "ab_rig_ARN.phl[601]";
connectAttr "Rig_L_HandPole_IK_translateZ.o" "ab_rig_ARN.phl[602]";
connectAttr "Rig_L_HandPole_IK_translateY.o" "ab_rig_ARN.phl[603]";
connectAttr "Rig_L_HandPole_IK_translateX.o" "ab_rig_ARN.phl[604]";
connectAttr "Rig_R_Hand_IK_parent_switch.o" "ab_rig_ARN.phl[605]";
connectAttr "Rig_R_Hand_IK_rotateX.o" "ab_rig_ARN.phl[606]";
connectAttr "Rig_R_Hand_IK_rotateY.o" "ab_rig_ARN.phl[607]";
connectAttr "Rig_R_Hand_IK_rotateZ.o" "ab_rig_ARN.phl[608]";
connectAttr "Rig_R_Hand_IK_translateZ.o" "ab_rig_ARN.phl[609]";
connectAttr "Rig_R_Hand_IK_translateY.o" "ab_rig_ARN.phl[610]";
connectAttr "Rig_R_Hand_IK_translateX.o" "ab_rig_ARN.phl[611]";
connectAttr "Rig_R_HandPole_IK_translateZ.o" "ab_rig_ARN.phl[612]";
connectAttr "Rig_R_HandPole_IK_translateY.o" "ab_rig_ARN.phl[613]";
connectAttr "Rig_R_HandPole_IK_translateX.o" "ab_rig_ARN.phl[614]";
connectAttr "Rig_L_FingerIndex1_rotateX.o" "ab_rig_ARN.phl[615]";
connectAttr "Rig_L_FingerIndex1_rotateY.o" "ab_rig_ARN.phl[616]";
connectAttr "Rig_L_FingerIndex1_rotateZ.o" "ab_rig_ARN.phl[617]";
connectAttr "Rig_L_FingerIndex2_rotateX.o" "ab_rig_ARN.phl[618]";
connectAttr "Rig_L_FingerIndex2_rotateY.o" "ab_rig_ARN.phl[619]";
connectAttr "Rig_L_FingerIndex2_rotateZ.o" "ab_rig_ARN.phl[620]";
connectAttr "Rig_L_FingerIndex3_rotateX.o" "ab_rig_ARN.phl[621]";
connectAttr "Rig_L_FingerIndex3_rotateY.o" "ab_rig_ARN.phl[622]";
connectAttr "Rig_L_FingerIndex3_rotateZ.o" "ab_rig_ARN.phl[623]";
connectAttr "Rig_L_FingerMiddle1_rotateX.o" "ab_rig_ARN.phl[624]";
connectAttr "Rig_L_FingerMiddle1_rotateY.o" "ab_rig_ARN.phl[625]";
connectAttr "Rig_L_FingerMiddle1_rotateZ.o" "ab_rig_ARN.phl[626]";
connectAttr "Rig_L_FingerMiddle2_rotateX.o" "ab_rig_ARN.phl[627]";
connectAttr "Rig_L_FingerMiddle2_rotateY.o" "ab_rig_ARN.phl[628]";
connectAttr "Rig_L_FingerMiddle2_rotateZ.o" "ab_rig_ARN.phl[629]";
connectAttr "Rig_L_FingerMiddle3_rotateX.o" "ab_rig_ARN.phl[630]";
connectAttr "Rig_L_FingerMiddle3_rotateY.o" "ab_rig_ARN.phl[631]";
connectAttr "Rig_L_FingerMiddle3_rotateZ.o" "ab_rig_ARN.phl[632]";
connectAttr "Rig_L_FingerRing1_rotateX.o" "ab_rig_ARN.phl[633]";
connectAttr "Rig_L_FingerRing1_rotateY.o" "ab_rig_ARN.phl[634]";
connectAttr "Rig_L_FingerRing1_rotateZ.o" "ab_rig_ARN.phl[635]";
connectAttr "Rig_L_FingerRing2_rotateX.o" "ab_rig_ARN.phl[636]";
connectAttr "Rig_L_FingerRing2_rotateY.o" "ab_rig_ARN.phl[637]";
connectAttr "Rig_L_FingerRing2_rotateZ.o" "ab_rig_ARN.phl[638]";
connectAttr "Rig_L_FingerRing3_rotateX.o" "ab_rig_ARN.phl[639]";
connectAttr "Rig_L_FingerRing3_rotateY.o" "ab_rig_ARN.phl[640]";
connectAttr "Rig_L_FingerRing3_rotateZ.o" "ab_rig_ARN.phl[641]";
connectAttr "Rig_L_FingerPinky1_rotateX.o" "ab_rig_ARN.phl[642]";
connectAttr "Rig_L_FingerPinky1_rotateY.o" "ab_rig_ARN.phl[643]";
connectAttr "Rig_L_FingerPinky1_rotateZ.o" "ab_rig_ARN.phl[644]";
connectAttr "Rig_L_FingerPinky2_rotateX.o" "ab_rig_ARN.phl[645]";
connectAttr "Rig_L_FingerPinky2_rotateY.o" "ab_rig_ARN.phl[646]";
connectAttr "Rig_L_FingerPinky2_rotateZ.o" "ab_rig_ARN.phl[647]";
connectAttr "Rig_L_FingerPinky3_rotateX.o" "ab_rig_ARN.phl[648]";
connectAttr "Rig_L_FingerPinky3_rotateY.o" "ab_rig_ARN.phl[649]";
connectAttr "Rig_L_FingerPinky3_rotateZ.o" "ab_rig_ARN.phl[650]";
connectAttr "Rig_L_FingerThumb1_rotateX.o" "ab_rig_ARN.phl[651]";
connectAttr "Rig_L_FingerThumb1_rotateY.o" "ab_rig_ARN.phl[652]";
connectAttr "Rig_L_FingerThumb1_rotateZ.o" "ab_rig_ARN.phl[653]";
connectAttr "Rig_L_FingerThumb2_rotateX.o" "ab_rig_ARN.phl[654]";
connectAttr "Rig_L_FingerThumb2_rotateY.o" "ab_rig_ARN.phl[655]";
connectAttr "Rig_L_FingerThumb2_rotateZ.o" "ab_rig_ARN.phl[656]";
connectAttr "Rig_L_FingerThumb3_rotateX.o" "ab_rig_ARN.phl[657]";
connectAttr "Rig_L_FingerThumb3_rotateY.o" "ab_rig_ARN.phl[658]";
connectAttr "Rig_L_FingerThumb3_rotateZ.o" "ab_rig_ARN.phl[659]";
connectAttr "Rig_L_Weapon1_rotateX.o" "ab_rig_ARN.phl[660]";
connectAttr "Rig_L_Weapon1_rotateY.o" "ab_rig_ARN.phl[661]";
connectAttr "Rig_L_Weapon1_rotateZ.o" "ab_rig_ARN.phl[662]";
connectAttr "Rig_L_Weapon1_translateZ.o" "ab_rig_ARN.phl[663]";
connectAttr "Rig_L_Weapon1_translateY.o" "ab_rig_ARN.phl[664]";
connectAttr "Rig_L_Weapon1_translateX.o" "ab_rig_ARN.phl[665]";
connectAttr "Rig_L_Weapon2_translateZ.o" "ab_rig_ARN.phl[666]";
connectAttr "Rig_L_Weapon2_translateY.o" "ab_rig_ARN.phl[667]";
connectAttr "Rig_L_Weapon2_translateX.o" "ab_rig_ARN.phl[668]";
connectAttr "Rig_L_Weapon2_rotateX.o" "ab_rig_ARN.phl[669]";
connectAttr "Rig_L_Weapon2_rotateY.o" "ab_rig_ARN.phl[670]";
connectAttr "Rig_L_Weapon2_rotateZ.o" "ab_rig_ARN.phl[671]";
connectAttr "Rig_R_Weapon1_rotateX.o" "ab_rig_ARN.phl[672]";
connectAttr "Rig_R_Weapon1_rotateY.o" "ab_rig_ARN.phl[673]";
connectAttr "Rig_R_Weapon1_rotateZ.o" "ab_rig_ARN.phl[674]";
connectAttr "Rig_R_Weapon1_translateZ.o" "ab_rig_ARN.phl[675]";
connectAttr "Rig_R_Weapon1_translateY.o" "ab_rig_ARN.phl[676]";
connectAttr "Rig_R_Weapon1_translateX.o" "ab_rig_ARN.phl[677]";
connectAttr "Rig_R_Weapon2_translateZ.o" "ab_rig_ARN.phl[678]";
connectAttr "Rig_R_Weapon2_translateY.o" "ab_rig_ARN.phl[679]";
connectAttr "Rig_R_Weapon2_translateX.o" "ab_rig_ARN.phl[680]";
connectAttr "Rig_R_Weapon2_rotateX.o" "ab_rig_ARN.phl[681]";
connectAttr "Rig_R_Weapon2_rotateY.o" "ab_rig_ARN.phl[682]";
connectAttr "Rig_R_Weapon2_rotateZ.o" "ab_rig_ARN.phl[683]";
connectAttr "Rig_R_FingerIndex1_rotateX.o" "ab_rig_ARN.phl[684]";
connectAttr "Rig_R_FingerIndex1_rotateY.o" "ab_rig_ARN.phl[685]";
connectAttr "Rig_R_FingerIndex1_rotateZ.o" "ab_rig_ARN.phl[686]";
connectAttr "Rig_R_FingerIndex2_rotateX.o" "ab_rig_ARN.phl[687]";
connectAttr "Rig_R_FingerIndex2_rotateY.o" "ab_rig_ARN.phl[688]";
connectAttr "Rig_R_FingerIndex2_rotateZ.o" "ab_rig_ARN.phl[689]";
connectAttr "Rig_R_FingerIndex3_rotateX.o" "ab_rig_ARN.phl[690]";
connectAttr "Rig_R_FingerIndex3_rotateY.o" "ab_rig_ARN.phl[691]";
connectAttr "Rig_R_FingerIndex3_rotateZ.o" "ab_rig_ARN.phl[692]";
connectAttr "Rig_R_FingerMiddle1_rotateX.o" "ab_rig_ARN.phl[693]";
connectAttr "Rig_R_FingerMiddle1_rotateY.o" "ab_rig_ARN.phl[694]";
connectAttr "Rig_R_FingerMiddle1_rotateZ.o" "ab_rig_ARN.phl[695]";
connectAttr "Rig_R_FingerMiddle2_rotateX.o" "ab_rig_ARN.phl[696]";
connectAttr "Rig_R_FingerMiddle2_rotateY.o" "ab_rig_ARN.phl[697]";
connectAttr "Rig_R_FingerMiddle2_rotateZ.o" "ab_rig_ARN.phl[698]";
connectAttr "Rig_R_FingerMiddle3_rotateX.o" "ab_rig_ARN.phl[699]";
connectAttr "Rig_R_FingerMiddle3_rotateY.o" "ab_rig_ARN.phl[700]";
connectAttr "Rig_R_FingerMiddle3_rotateZ.o" "ab_rig_ARN.phl[701]";
connectAttr "Rig_R_FingerRing1_rotateX.o" "ab_rig_ARN.phl[702]";
connectAttr "Rig_R_FingerRing1_rotateY.o" "ab_rig_ARN.phl[703]";
connectAttr "Rig_R_FingerRing1_rotateZ.o" "ab_rig_ARN.phl[704]";
connectAttr "Rig_R_FingerRing2_rotateX.o" "ab_rig_ARN.phl[705]";
connectAttr "Rig_R_FingerRing2_rotateY.o" "ab_rig_ARN.phl[706]";
connectAttr "Rig_R_FingerRing2_rotateZ.o" "ab_rig_ARN.phl[707]";
connectAttr "Rig_R_FingerRing3_rotateX.o" "ab_rig_ARN.phl[708]";
connectAttr "Rig_R_FingerRing3_rotateY.o" "ab_rig_ARN.phl[709]";
connectAttr "Rig_R_FingerRing3_rotateZ.o" "ab_rig_ARN.phl[710]";
connectAttr "Rig_R_FingerPinky1_rotateX.o" "ab_rig_ARN.phl[711]";
connectAttr "Rig_R_FingerPinky1_rotateY.o" "ab_rig_ARN.phl[712]";
connectAttr "Rig_R_FingerPinky1_rotateZ.o" "ab_rig_ARN.phl[713]";
connectAttr "Rig_R_FingerPinky2_rotateX.o" "ab_rig_ARN.phl[714]";
connectAttr "Rig_R_FingerPinky2_rotateY.o" "ab_rig_ARN.phl[715]";
connectAttr "Rig_R_FingerPinky2_rotateZ.o" "ab_rig_ARN.phl[716]";
connectAttr "Rig_R_FingerPinky3_rotateX.o" "ab_rig_ARN.phl[717]";
connectAttr "Rig_R_FingerPinky3_rotateY.o" "ab_rig_ARN.phl[718]";
connectAttr "Rig_R_FingerPinky3_rotateZ.o" "ab_rig_ARN.phl[719]";
connectAttr "Rig_R_FingerThumb1_rotateX.o" "ab_rig_ARN.phl[720]";
connectAttr "Rig_R_FingerThumb1_rotateY.o" "ab_rig_ARN.phl[721]";
connectAttr "Rig_R_FingerThumb1_rotateZ.o" "ab_rig_ARN.phl[722]";
connectAttr "Rig_R_FingerThumb2_rotateX.o" "ab_rig_ARN.phl[723]";
connectAttr "Rig_R_FingerThumb2_rotateY.o" "ab_rig_ARN.phl[724]";
connectAttr "Rig_R_FingerThumb2_rotateZ.o" "ab_rig_ARN.phl[725]";
connectAttr "Rig_R_FingerThumb3_rotateX.o" "ab_rig_ARN.phl[726]";
connectAttr "Rig_R_FingerThumb3_rotateY.o" "ab_rig_ARN.phl[727]";
connectAttr "Rig_R_FingerThumb3_rotateZ.o" "ab_rig_ARN.phl[728]";
connectAttr "pairBlend1.otx" "ab_rig_ARN.phl[729]";
connectAttr "pairBlend1.oty" "ab_rig_ARN.phl[730]";
connectAttr "pairBlend1.otz" "ab_rig_ARN.phl[731]";
connectAttr "pairBlend1.orx" "ab_rig_ARN.phl[732]";
connectAttr "pairBlend1.ory" "ab_rig_ARN.phl[733]";
connectAttr "pairBlend1.orz" "ab_rig_ARN.phl[734]";
connectAttr "ab_rig_ARN.phl[735]" "pairBlend1.w";
connectAttr "Rig_R_Sword_blendParent1.o" "ab_rig_ARN.phl[736]";
connectAttr "Rig_R_SwordTip_translateZ.o" "ab_rig_ARN.phl[737]";
connectAttr "ab_rig_ARN.phl[738]" "pairBlend1.itx2";
connectAttr "ab_rig_ARN.phl[739]" "pairBlend1.ity2";
connectAttr "ab_rig_ARN.phl[740]" "pairBlend1.itz2";
connectAttr "ab_rig_ARN.phl[741]" "pairBlend1.irx2";
connectAttr "ab_rig_ARN.phl[742]" "pairBlend1.iry2";
connectAttr "ab_rig_ARN.phl[743]" "pairBlend1.irz2";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Rig_R_Sword_parent_switch.o" "ab_rig_ARN.phl[270]";
connectAttr "Rig_L_Leg1_IK_parent_switch.o" "ab_rig_ARN.phl[365]";
connectAttr "Rig_R_Leg1_IK_parent_switch.o" "ab_rig_ARN.phl[393]";
connectAttr "Rig_L_eye_translateZ.o" "ab_rig_ARN.phl[451]";
connectAttr "Rig_L_eye_rotateX.o" "ab_rig_ARN.phl[452]";
connectAttr "Rig_L_eye_rotateY.o" "ab_rig_ARN.phl[453]";
connectAttr "Rig_L_eye_rotateZ.o" "ab_rig_ARN.phl[454]";
connectAttr "Rig_R_eye_translateZ.o" "ab_rig_ARN.phl[457]";
connectAttr "Rig_R_eye_rotateX.o" "ab_rig_ARN.phl[458]";
connectAttr "Rig_R_eye_rotateY.o" "ab_rig_ARN.phl[459]";
connectAttr "Rig_R_eye_rotateZ.o" "ab_rig_ARN.phl[460]";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ab_rig_A_idle.ma
