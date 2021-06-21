//Maya ASCII 2019 scene
//Name: gliderBlocky.ma
//Last modified: Tue, Jun 08, 2021 09:05:33 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19043)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "A2C7832C-4A71-D37C-FE3F-2FB19D33C410";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.2840881321346629 30.167953446409598 -23.915084137440964 ;
	setAttr ".r" -type "double3" -44.138352729569171 -537.79999999994027 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F6DFB103-4BF2-5BCC-5B29-688C4D96818A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 37.928896423951429;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "2E375E9E-4429-6A05-17B9-A7AC40434214";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "676E817F-4F75-DCA4-C04B-D1AF73C5692B";
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
	rename -uid "E659C834-4237-5846-A5AC-069743121F15";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EB977325-4570-C746-8925-14B4AF35CACC";
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
	rename -uid "F5799FF3-47AA-BF94-0670-798360E4AE64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "40818181-4D03-5F0E-5FCE-B686459C8703";
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
createNode transform -n "pCube1";
	rename -uid "7D9EFDE7-43DD-2120-3480-ED808DD58795";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "93FCC865-4871-088B-184B-FA807F66CCF9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.64194631576538086 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".pt";
	setAttr ".pt[37]" -type "float3" -1.8626451e-09 -2.3283064e-10 3.7252903e-09 ;
	setAttr ".pt[38]" -type "float3" 0 0 1.7462298e-09 ;
	setAttr ".pt[40]" -type "float3" 5.5511151e-17 4.6566129e-10 7.4505806e-09 ;
	setAttr ".pt[42]" -type "float3" 0 0 1.7462298e-09 ;
	setAttr ".pt[43]" -type "float3" 1.8626451e-09 0 3.7252903e-09 ;
	setAttr ".pt[46]" -type "float3" -2.9802322e-08 3.7252903e-09 9.3132257e-10 ;
	setAttr ".pt[47]" -type "float3" 0 1.8626451e-09 6.0535967e-08 ;
	setAttr ".pt[48]" -type "float3" 7.4505806e-09 0 -9.3132257e-10 ;
	setAttr ".pt[49]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".pt[50]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[51]" -type "float3" 0 5.5879354e-09 6.0535967e-08 ;
	setAttr ".pt[52]" -type "float3" 2.9802322e-08 0 9.3132257e-10 ;
	setAttr ".pt[55]" -type "float3" -2.9802322e-08 9.3132257e-10 1.1920929e-07 ;
	setAttr ".pt[56]" -type "float3" 2.9802322e-08 -4.6566129e-10 1.1920929e-07 ;
	setAttr ".pt[59]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[60]" -type "float3" -1.4901161e-08 -3.7252903e-09 0 ;
	setAttr ".pt[61]" -type "float3" 7.4505806e-09 -1.8626451e-09 6.0535967e-08 ;
	setAttr ".pt[62]" -type "float3" 8.8817842e-16 5.5879354e-09 -5.9837475e-08 ;
	setAttr ".pt[63]" -type "float3" 0 -1.8626451e-09 6.0535967e-08 ;
	setAttr ".pt[64]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[65]" -type "float3" 0 -1.8626451e-09 -9.3132257e-10 ;
	setAttr ".pt[68]" -type "float3" 0 -2.3283064e-10 9.3132257e-10 ;
	setAttr ".pt[69]" -type "float3" 0 0 6.9849193e-09 ;
	setAttr ".pt[70]" -type "float3" -2.3283064e-10 0 -2.3283064e-10 ;
	setAttr ".pt[71]" -type "float3" 2.220446e-16 -9.3132257e-10 2.9802322e-08 ;
	setAttr ".pt[72]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".pt[73]" -type "float3" 1.8626451e-09 0 6.9849193e-09 ;
	setAttr ".pt[74]" -type "float3" 0 -2.3283064e-10 9.3132257e-10 ;
	setAttr ".pt[101]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[102]" -type "float3" 1.4901161e-08 9.3132257e-10 1.1920929e-07 ;
	setAttr ".pt[103]" -type "float3" -7.4505806e-09 0 1.1920929e-07 ;
	setAttr ".pt[104]" -type "float3" -8.8817842e-16 3.7252903e-09 1.1920929e-07 ;
	setAttr ".pt[105]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[106]" -type "float3" 0 9.3132257e-10 1.1920929e-07 ;
	setAttr ".pt[107]" -type "float3" 2.9802322e-08 0 1.1920929e-07 ;
	setAttr ".pt[123]" -type "float3" 2.9802322e-08 0 1.1967495e-07 ;
	setAttr ".pt[124]" -type "float3" 0 -1.8626451e-09 1.1920929e-07 ;
	setAttr ".pt[125]" -type "float3" 7.4505806e-09 1.8626451e-09 1.1920929e-07 ;
	setAttr ".pt[126]" -type "float3" -8.8817842e-16 0 1.1920929e-07 ;
	setAttr ".pt[127]" -type "float3" 7.4505806e-09 1.8626451e-09 1.1920929e-07 ;
	setAttr ".pt[128]" -type "float3" 0 -3.7252903e-09 1.1920929e-07 ;
	setAttr ".pt[129]" -type "float3" -2.9802322e-08 0 1.1967495e-07 ;
	setAttr ".pt[133]" -type "float3" 0.30308247 -0.0066499785 1.1713625 ;
	setAttr ".pt[134]" -type "float3" 0.20483646 0.00067102152 1.1751425 ;
	setAttr ".pt[135]" -type "float3" 0.2039496 0.022443384 1.1801976 ;
	setAttr ".pt[136]" -type "float3" 0.30521855 0.015662577 1.1776199 ;
	setAttr ".pt[137]" -type "float3" 0.10245156 -0.0035879365 1.1750213 ;
	setAttr ".pt[138]" -type "float3" 0.10208783 0.019303137 1.1805921 ;
	setAttr ".pt[139]" -type "float3" -1.252268e-08 -0.0075185192 1.1603676 ;
	setAttr ".pt[140]" -type "float3" -1.252268e-08 0.017203717 1.1689671 ;
	setAttr ".pt[141]" -type "float3" -0.10245155 -0.0035879365 1.1750213 ;
	setAttr ".pt[142]" -type "float3" -0.10208786 0.019303137 1.1805921 ;
	setAttr ".pt[143]" -type "float3" -0.20483652 0.00067102152 1.1751425 ;
	setAttr ".pt[144]" -type "float3" -0.20394966 0.022443384 1.1801976 ;
	setAttr ".pt[145]" -type "float3" -0.3030825 -0.0066499785 1.1713625 ;
	setAttr ".pt[146]" -type "float3" -0.30521855 0.015662581 1.1776199 ;
	setAttr ".pt[147]" -type "float3" -0.30234444 -0.019093446 1.1739606 ;
	setAttr ".pt[148]" -type "float3" -0.20537397 -0.012894787 1.1783683 ;
	setAttr ".pt[149]" -type "float3" -0.10270837 -0.019817846 1.1792049 ;
	setAttr ".pt[150]" -type "float3" -1.252268e-08 -0.022443384 1.1640689 ;
	setAttr ".pt[151]" -type "float3" 0.10270835 -0.019817846 1.1792049 ;
	setAttr ".pt[152]" -type "float3" 0.20537391 -0.012894787 1.1783683 ;
	setAttr ".pt[153]" -type "float3" 0.30234444 -0.019093448 1.1739606 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "pCube1";
	rename -uid "B0E6EDC4-4499-68A7-3734-1EAD8D572FA5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 117 ".uvst[0].uvsp[0:116]" -type "float2" 0.375 0 0.40625 0
		 0.4375 0 0.46875 0 0.5 0 0.53125 0 0.5625 0 0.59375 0 0.625 0 0.375 0.125 0.40625
		 0.125 0.4375 0.125 0.46875 0.125 0.5 0.125 0.53125 0.125 0.5625 0.125 0.59375 0.125
		 0.625 0.125 0.375 0.25 0.40625 0.25 0.4375 0.25 0.46875 0.25 0.5 0.25 0.53125 0.25
		 0.5625 0.25 0.59375 0.25 0.625 0.25 0.375 0.33333334 0.40625 0.33333334 0.4375 0.33333334
		 0.46875 0.33333334 0.5 0.33333334 0.53125 0.33333334 0.5625 0.33333334 0.59375 0.33333334
		 0.625 0.33333334 0.375 0.41666669 0.40625 0.41666669 0.4375 0.41666669 0.46875 0.41666669
		 0.5 0.41666669 0.53125 0.41666669 0.5625 0.41666669 0.59375 0.41666669 0.625 0.41666669
		 0.375 0.5 0.40625 0.5 0.4375 0.5 0.46875 0.5 0.5 0.5 0.53125 0.5 0.5625 0.5 0.59375
		 0.5 0.625 0.5 0.375 0.625 0.40625 0.625 0.4375 0.625 0.46875 0.625 0.5 0.625 0.53125
		 0.625 0.5625 0.625 0.59375 0.625 0.625 0.625 0.375 0.75 0.40625 0.75 0.4375 0.75
		 0.46875 0.75 0.5 0.75 0.53125 0.75 0.5625 0.75 0.59375 0.75 0.625 0.75 0.375 0.83333331
		 0.40625 0.83333331 0.4375 0.83333331 0.46875 0.83333331 0.5 0.83333331 0.53125 0.83333331
		 0.5625 0.83333331 0.59375 0.83333331 0.625 0.83333331 0.375 0.91666663 0.40625 0.91666663
		 0.4375 0.91666663 0.46875 0.91666663 0.5 0.91666663 0.53125 0.91666663 0.5625 0.91666663
		 0.59375 0.91666663 0.625 0.91666663 0.375 0.99999994 0.40625 0.99999994 0.4375 0.99999994
		 0.46875 0.99999994 0.5 0.99999994 0.53125 0.99999994 0.5625 0.99999994 0.59375 0.99999994
		 0.625 0.99999994 0.875 0 0.79166669 0 0.70833337 0 0.875 0.125 0.79166669 0.125 0.70833337
		 0.125 0.875 0.25 0.79166669 0.25 0.70833337 0.25 0.125 0 0.20833334 0 0.29166669
		 0 0.125 0.125 0.20833334 0.125 0.29166669 0.125 0.125 0.25 0.20833334 0.25 0.29166669
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 94 ".vt[0:93]"  -8.65257931 -0.25406328 1.24329305 -5.88451958 -0.56897855 2.48509455
		 -3.87925696 -0.68982822 3.025851011 -1.94561589 -0.64988881 3.50604725 -2.3841858e-07 -0.63990736 3.47643733
		 1.94561541 -0.64988881 3.50604725 3.87925649 -0.68982816 3.025851011 5.8845191 -0.56897855 2.48509455
		 8.65257931 -0.25406331 1.24329305 -8.84307861 0.32549763 1.26294804 -5.85743332 0.070277266 2.79548597
		 -3.90021992 -0.061728634 3.34496713 -1.95016479 0.0046151727 3.97391748 -2.3841858e-07 0.045374226 3.97391748
		 1.95016432 0.0046151727 3.97391748 3.90021944 -0.061728634 3.34496713 5.85743284 0.070277251 2.79548597
		 8.84307861 0.32549763 1.26294804 -8.57331848 0.82688957 1.31329894 -5.83569193 0.65424705 2.5940299
		 -3.92163682 0.58111614 3.015329123 -1.95587897 0.68561798 3.48052168 -2.3841858e-07 0.74656302 3.46121407
		 1.9558785 0.68561798 3.48052168 3.92163634 0.58111614 3.015329123 5.83569145 0.65424705 2.5940299
		 8.57331848 0.82688951 1.31329894 -10.47285652 0.88118738 -0.078276992 -5.8511796 0.6178652 0.76853985
		 -3.94042611 0.58598602 0.89460576 -1.97322309 1.23476243 1.10668552 -2.3841858e-07 0.86283207 1.10668552
		 1.97322261 1.23476243 1.10668552 3.94042563 0.58598602 0.89460576 5.85117912 0.61786515 0.76853985
		 10.47285652 0.88118726 -0.078276992 -10.32764721 0.86921883 -1.3421433 -5.81029224 0.61677372 -0.76152515
		 -3.94054151 0.58870119 -0.7833333 -1.97344089 1.23479116 -0.77859652 -2.3841858e-07 0.86283201 -0.73453242
		 1.97344041 1.23479116 -0.77859652 3.94054103 0.58870119 -0.7833333 5.81029177 0.61677366 -0.76152515
		 10.32764721 0.86921877 -1.3421433 -8.050745964 0.8030526 -2.18808222 -5.73555899 0.65026641 -2.096435785
		 -3.92521858 0.56381643 -2.19800925 -1.96268106 0.77055258 -2.2408793 -2.3841858e-07 0.78383553 -1.93913496
		 1.96268058 0.77055258 -2.2408793 3.92521811 0.56381649 -2.19800925 5.73555851 0.65026635 -2.096435785
		 8.050745964 0.8030526 -2.18808222 -8.31829453 0.27866307 -2.24000072 -5.77037096 0.063380674 -1.97389758
		 -3.89987063 -0.076003447 -2.045866966 -1.95056963 0.0050825924 -2.043557167 -2.3841858e-07 0.07991676 -1.7645638
		 1.95056915 0.0050825924 -2.043557167 3.89987016 -0.076003447 -2.045866966 5.77037048 0.063380629 -1.97389758
		 8.31829453 0.27866307 -2.24000072 -8.16688633 -0.33004671 -2.22021651 -5.83063602 -0.5661363 -2.15044188
		 -3.87484932 -0.69027972 -2.18848634 -1.9403075 -0.64075637 -2.2007308 -2.3841858e-07 -0.6175859 -2.0071902275
		 1.94030702 -0.64075637 -2.2007308 3.87484884 -0.69027966 -2.18848634 5.83063555 -0.56613636 -2.15044188
		 8.16688633 -0.33004671 -2.22021651 -10.39455414 0.042424917 -1.35061491 -5.8719635 -0.59634745 -0.79092985
		 -3.85923958 -0.69384241 -0.7833333 -1.93204415 -1.17806447 -0.77859652 -2.3841858e-07 -0.64994204 -0.77859652
		 1.93204367 -1.17806447 -0.77859652 3.8592391 -0.69384241 -0.7833333 5.87196302 -0.59634745 -0.79092985
		 10.39455414 0.042424917 -1.35061491 -10.55232906 0.055428803 -0.086585939 -5.87378645 -0.59534359 0.71080327
		 -3.85923958 -0.69384241 0.89460576 -1.93222344 -1.17837667 1.10668552 -2.3841858e-07 -0.65047646 1.10668552
		 1.93222296 -1.17837667 1.10668552 3.8592391 -0.69384241 0.89460576 5.87378597 -0.59534365 0.71080327
		 10.55232811 0.055428922 -0.086585939 10.90558434 0.5006994 -1.41423678 11.018233299 0.50998414 0.051054239
		 -10.90558338 0.50069934 -1.41423678 -11.018232346 0.50998402 0.051054239;
	setAttr -s 184 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 9 10 1
		 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 24 1 24 25 1 25 26 1 27 28 1 28 29 1 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1
		 34 35 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1 42 43 1 43 44 1 45 46 0 46 47 0
		 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1
		 59 60 1 60 61 1 61 62 1 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0
		 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 81 82 1 82 83 1 83 84 1
		 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 0 9 0 1 10 1 2 11 1 3 12 1 4 13 1 5 14 1
		 6 15 1 7 16 1 8 17 0 9 18 1 10 19 1 11 20 1 12 21 1 13 22 1 14 23 1 15 24 1 16 25 1
		 17 26 1 18 27 1 19 28 1 20 29 1 21 30 1 22 31 1 23 32 1 24 33 1 25 34 1 26 35 1 27 36 1
		 28 37 1 29 38 1 30 39 0 31 40 1 32 41 0 33 42 1 34 43 1 35 44 1 36 45 1 37 46 1 38 47 1
		 39 48 1 40 49 1 41 50 1 42 51 1 43 52 1 44 53 1 45 54 1 46 55 1 47 56 1 48 57 1 49 58 1
		 50 59 1 51 60 1 52 61 1 53 62 1 54 63 0 55 64 1 56 65 1 57 66 1 58 67 1 59 68 1 60 69 1
		 61 70 1 62 71 0 63 72 0 64 73 1 65 74 1 66 75 1 67 76 1 68 77 1 69 78 1 70 79 1 71 80 0
		 72 81 0 73 82 1 74 83 1 75 84 1 76 85 1 77 86 1 78 87 1 79 88 1 80 89 0 81 0 0 82 1 1
		 83 2 1 84 3 1 85 4 1;
	setAttr ".ed[166:183]" 86 5 1 87 6 1 88 7 1 89 8 0 62 90 1 90 91 1 91 17 1
		 80 90 1 89 91 1 90 44 1 91 35 1 54 92 1 92 93 1 93 9 1 72 92 1 81 93 1 92 36 1 93 27 1;
	setAttr -s 92 -ch 368 ".fc[0:91]" -type "polyFaces" 
		f 4 0 81 -9 -81
		mu 0 4 0 1 10 9
		f 4 1 82 -10 -82
		mu 0 4 1 2 11 10
		f 4 2 83 -11 -83
		mu 0 4 2 3 12 11
		f 4 3 84 -12 -84
		mu 0 4 3 4 13 12
		f 4 4 85 -13 -85
		mu 0 4 4 5 14 13
		f 4 5 86 -14 -86
		mu 0 4 5 6 15 14
		f 4 6 87 -15 -87
		mu 0 4 6 7 16 15
		f 4 7 88 -16 -88
		mu 0 4 7 8 17 16
		f 4 8 90 -17 -90
		mu 0 4 9 10 19 18
		f 4 9 91 -18 -91
		mu 0 4 10 11 20 19
		f 4 10 92 -19 -92
		mu 0 4 11 12 21 20
		f 4 11 93 -20 -93
		mu 0 4 12 13 22 21
		f 4 12 94 -21 -94
		mu 0 4 13 14 23 22
		f 4 13 95 -22 -95
		mu 0 4 14 15 24 23
		f 4 14 96 -23 -96
		mu 0 4 15 16 25 24
		f 4 15 97 -24 -97
		mu 0 4 16 17 26 25
		f 4 16 99 -25 -99
		mu 0 4 18 19 28 27
		f 4 17 100 -26 -100
		mu 0 4 19 20 29 28
		f 4 18 101 -27 -101
		mu 0 4 20 21 30 29
		f 4 19 102 -28 -102
		mu 0 4 21 22 31 30
		f 4 20 103 -29 -103
		mu 0 4 22 23 32 31
		f 4 21 104 -30 -104
		mu 0 4 23 24 33 32
		f 4 22 105 -31 -105
		mu 0 4 24 25 34 33
		f 4 23 106 -32 -106
		mu 0 4 25 26 35 34
		f 4 24 108 -33 -108
		mu 0 4 27 28 37 36
		f 4 25 109 -34 -109
		mu 0 4 28 29 38 37
		f 4 26 110 -35 -110
		mu 0 4 29 30 39 38
		f 4 27 111 -36 -111
		mu 0 4 30 31 40 39
		f 4 28 112 -37 -112
		mu 0 4 31 32 41 40
		f 4 29 113 -38 -113
		mu 0 4 32 33 42 41
		f 4 30 114 -39 -114
		mu 0 4 33 34 43 42
		f 4 31 115 -40 -115
		mu 0 4 34 35 44 43
		f 4 32 117 -41 -117
		mu 0 4 36 37 46 45
		f 4 33 118 -42 -118
		mu 0 4 37 38 47 46
		f 4 34 119 -43 -119
		mu 0 4 38 39 48 47
		f 4 35 120 -44 -120
		mu 0 4 39 40 49 48
		f 4 36 121 -45 -121
		mu 0 4 40 41 50 49
		f 4 37 122 -46 -122
		mu 0 4 41 42 51 50
		f 4 38 123 -47 -123
		mu 0 4 42 43 52 51
		f 4 39 124 -48 -124
		mu 0 4 43 44 53 52
		f 4 40 126 -49 -126
		mu 0 4 45 46 55 54
		f 4 41 127 -50 -127
		mu 0 4 46 47 56 55
		f 4 42 128 -51 -128
		mu 0 4 47 48 57 56
		f 4 43 129 -52 -129
		mu 0 4 48 49 58 57
		f 4 44 130 -53 -130
		mu 0 4 49 50 59 58
		f 4 45 131 -54 -131
		mu 0 4 50 51 60 59
		f 4 46 132 -55 -132
		mu 0 4 51 52 61 60
		f 4 47 133 -56 -133
		mu 0 4 52 53 62 61
		f 4 48 135 -57 -135
		mu 0 4 54 55 64 63
		f 4 49 136 -58 -136
		mu 0 4 55 56 65 64
		f 4 50 137 -59 -137
		mu 0 4 56 57 66 65
		f 4 51 138 -60 -138
		mu 0 4 57 58 67 66
		f 4 52 139 -61 -139
		mu 0 4 58 59 68 67
		f 4 53 140 -62 -140
		mu 0 4 59 60 69 68
		f 4 54 141 -63 -141
		mu 0 4 60 61 70 69
		f 4 55 142 -64 -142
		mu 0 4 61 62 71 70
		f 4 56 144 -65 -144
		mu 0 4 63 64 73 72
		f 4 57 145 -66 -145
		mu 0 4 64 65 74 73
		f 4 58 146 -67 -146
		mu 0 4 65 66 75 74
		f 4 59 147 -68 -147
		mu 0 4 66 67 76 75
		f 4 60 148 -69 -148
		mu 0 4 67 68 77 76
		f 4 61 149 -70 -149
		mu 0 4 68 69 78 77
		f 4 62 150 -71 -150
		mu 0 4 69 70 79 78
		f 4 63 151 -72 -151
		mu 0 4 70 71 80 79
		f 4 64 153 -73 -153
		mu 0 4 72 73 82 81
		f 4 65 154 -74 -154
		mu 0 4 73 74 83 82
		f 4 66 155 -75 -155
		mu 0 4 74 75 84 83
		f 4 67 156 -76 -156
		mu 0 4 75 76 85 84
		f 4 68 157 -77 -157
		mu 0 4 76 77 86 85
		f 4 69 158 -78 -158
		mu 0 4 77 78 87 86
		f 4 70 159 -79 -159
		mu 0 4 78 79 88 87
		f 4 71 160 -80 -160
		mu 0 4 79 80 89 88
		f 4 72 162 -1 -162
		mu 0 4 81 82 91 90
		f 4 73 163 -2 -163
		mu 0 4 82 83 92 91
		f 4 74 164 -3 -164
		mu 0 4 83 84 93 92
		f 4 75 165 -4 -165
		mu 0 4 84 85 94 93
		f 4 76 166 -5 -166
		mu 0 4 85 86 95 94
		f 4 77 167 -6 -167
		mu 0 4 86 87 96 95
		f 4 78 168 -7 -168
		mu 0 4 87 88 97 96
		f 4 79 169 -8 -169
		mu 0 4 88 89 98 97
		f 4 -152 -143 170 -174
		mu 0 4 100 99 102 103
		f 4 -161 173 171 -175
		mu 0 4 101 100 103 104
		f 4 -170 174 172 -89
		mu 0 4 8 101 104 17
		f 4 -171 -134 -125 -176
		mu 0 4 103 102 105 106
		f 4 -172 175 -116 -177
		mu 0 4 104 103 106 107
		f 4 -173 176 -107 -98
		mu 0 4 17 104 107 26
		f 4 143 180 -178 134
		mu 0 4 108 109 112 111
		f 4 152 181 -179 -181
		mu 0 4 109 110 113 112
		f 4 161 80 -180 -182
		mu 0 4 110 0 9 113
		f 4 177 182 116 125
		mu 0 4 111 112 115 114
		f 4 178 183 107 -183
		mu 0 4 112 113 116 115
		f 4 179 89 98 -184
		mu 0 4 113 9 18 116;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus1";
	rename -uid "87C78811-41D5-77ED-4EAC-429831C9F63C";
	setAttr ".t" -type "double3" -1.8140667209644148 0.55606487369519897 0.85514810688535814 ;
	setAttr ".r" -type "double3" 0 0 88.683445102539906 ;
	setAttr ".s" -type "double3" 1.6335252972784293 0.89934080987494769 1.9199938886489065 ;
createNode transform -n "pTorus2" -p "pTorus1";
	rename -uid "1ED90FB4-47CE-65AB-AE82-8097A5FD53BC";
	setAttr ".rp" -type "double3" -1.1102230246251565e-16 4.4408920985006262e-16 -5.5511151231257827e-17 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-16 4.4408920985006262e-16 -5.5511151231257827e-17 ;
createNode mesh -n "polySurfaceShape1" -p "|pTorus1|pTorus2";
	rename -uid "F43EBAA5-4512-4DCB-9A80-53BCD3D52A40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:55]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0.0625 1 0 1 0 0.85714287
		 0.0625 0.85714287 0.125 1 0.125 0.85714287 0.1875 1 0.1875 0.85714287 0.75 1 0.6875
		 1 0.6875 0.85714287 0.75 0.85714287 0.8125 1 0.8125 0.85714287 0.875 1 0.875 0.85714287
		 0.9375 1 0.9375 0.85714287 1 1 1 0.85714287 0 0.71428573 0.0625 0.71428573 0.125
		 0.71428573 0.1875 0.71428573 0.6875 0.71428573 0.75 0.71428573 0.8125 0.71428573
		 0.875 0.71428573 0.9375 0.71428573 1 0.71428573 0 0.5714286 0.0625 0.5714286 0.125
		 0.5714286 0.1875 0.5714286 0.6875 0.5714286 0.75 0.5714286 0.8125 0.5714286 0.875
		 0.5714286 0.9375 0.5714286 1 0.5714286 0 0.42857146 0.0625 0.42857146 0.125 0.42857146
		 0.1875 0.42857146 0.6875 0.42857146 0.75 0.42857146 0.8125 0.42857146 0.875 0.42857146
		 0.9375 0.42857146 1 0.42857146 0 0.28571433 0.0625 0.28571433 0.125 0.28571433 0.1875
		 0.28571433 0.6875 0.28571433 0.75 0.28571433 0.8125 0.28571433 0.875 0.28571433 0.9375
		 0.28571433 1 0.28571433 0 0.14285718 0.0625 0.14285718 0.125 0.14285718 0.1875 0.14285718
		 0.6875 0.14285718 0.75 0.14285718 0.8125 0.14285718 0.875 0.14285718 0.9375 0.14285718
		 1 0.14285718 0 2.9802322e-08 0.0625 2.9802322e-08 0.125 2.9802322e-08 0.1875 2.9802322e-08
		 0.6875 2.9802322e-08 0.75 2.9802322e-08 0.8125 2.9802322e-08 0.875 2.9802322e-08
		 0.9375 2.9802322e-08 1 2.9802322e-08;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 63 ".vt[0:62]"  0.92170912 0.0032731183 -0.27227131 0.64118594 -0.00029298407 -0.63256568
		 0.34441552 -0.00049291836 -0.83149129 4.5597551e-07 -0.00049291836 -0.89999992 -1.3411045e-07 -0.00049291836 0.89999998
		 0.35983446 0.00015075272 0.843822 0.7353276 0.003636878 0.71550781 0.99287981 0.0062440783 0.47347105
		 1.061388254 0.0062440783 0.12905593 0.95173639 0.10876451 -0.29048437 0.66578567 0.10531256 -0.66080719
		 0.35882396 0.10519709 -0.86627632 4.7505102e-07 0.10519709 -0.93765098 -1.397209e-07 0.10519709 0.93765104
		 0.37040478 0.10568054 0.87553781 0.75780958 0.10915402 0.73881954 1.0276649 0.11193408 0.48787946
		 1.099039316 0.11193408 0.12905593 1.019938707 0.1344521 -0.3308233 0.72284174 0.13130039 -0.72284096
		 0.39119941 0.13130039 -0.9444375 5.1791324e-07 0.13130039 -1.022251964 -1.5232743e-07 0.13130039 1.022252083
		 0.39568287 0.13148756 0.9480235 0.80756223 0.13483699 0.79058939 1.10582602 0.1380374 0.52025491
		 1.18364036 0.1380374 0.12905593 1.073633552 0.060937222 -0.36397189 0.77081525 0.058160622 -0.77081442
		 0.41716251 0.058160622 -1.0071178675 5.5228611e-07 0.058160622 -1.090096712 -1.6243709e-07 0.058160622 1.090096831
		 0.41805947 0.058198094 1.0078359842 0.84702051 0.061341763 0.83175361 1.16850638 0.064897612 0.54621798
		 1.25148511 0.064897612 0.12905593 1.073633552 -0.056369841 -0.36397189 0.77081525 -0.059146449 -0.77081442
		 0.41716251 -0.059146449 -1.0071178675 5.5228611e-07 -0.059146449 -1.090096712 -1.6243709e-07 -0.059146449 1.090096831
		 0.41805947 -0.059108987 1.0078359842 0.84702051 -0.05596533 0.83175361 1.16850638 -0.052409451 0.54621798
		 1.25148511 -0.052409451 0.12905593 1.019938707 -0.12913451 -0.3308233 0.72284174 -0.13228622 -0.72284096
		 0.39119941 -0.13228622 -0.9444375 5.1791324e-07 -0.13228622 -1.022251964 -1.5232743e-07 -0.13228622 1.022252083
		 0.39568287 -0.13209903 0.9480235 0.80756223 -0.12874962 0.79058939 1.10582602 -0.12554923 0.52025491
		 1.18364036 -0.12554923 0.12905593 0.95173639 -0.1026155 -0.29048437 0.66578567 -0.10606746 -0.66080719
		 0.35882396 -0.10618293 -0.86627632 4.7505102e-07 -0.10618293 -0.93765098 -1.397209e-07 -0.10618293 0.93765104
		 0.37040478 -0.10569948 0.87553781 0.75780958 -0.102226 0.73881954 1.0276649 -0.099445932 0.48787946
		 1.099039316 -0.099445932 0.12905593;
	setAttr -s 119 ".ed[0:118]"  0 1 0 1 2 0 2 3 0 4 5 0 5 6 0 6 7 0 7 8 0
		 8 0 0 9 10 0 10 11 0 11 12 0 13 14 0 14 15 0 15 16 0 16 17 0 17 9 0 18 19 0 19 20 0
		 20 21 0 22 23 0 23 24 0 24 25 0 25 26 0 26 18 0 27 28 0 28 29 0 29 30 0 31 32 0 32 33 0
		 33 34 0 34 35 0 35 27 0 36 37 0 37 38 0 38 39 0 40 41 0 41 42 0 42 43 0 43 44 0 44 36 0
		 45 46 0 46 47 0 47 48 0 49 50 0 50 51 0 51 52 0 52 53 0 53 45 0 54 55 0 55 56 0 56 57 0
		 58 59 0 59 60 0 60 61 0 61 62 0 62 54 0 0 9 1 1 10 1 2 11 1 3 12 0 4 13 0 5 14 1
		 6 15 1 7 16 1 8 17 1 9 18 1 10 19 1 11 20 1 12 21 0 13 22 0 14 23 1 15 24 1 16 25 1
		 17 26 1 18 27 1 19 28 1 20 29 1 21 30 0 22 31 0 23 32 1 24 33 1 25 34 1 26 35 1 27 36 1
		 28 37 1 29 38 1 30 39 0 31 40 0 32 41 1 33 42 1 34 43 1 35 44 1 36 45 1 37 46 1 38 47 1
		 39 48 0 40 49 0 41 50 1 42 51 1 43 52 1 44 53 1 45 54 1 46 55 1 47 56 1 48 57 0 49 58 0
		 50 59 1 51 60 1 52 61 1 53 62 1 54 0 1 55 1 1 56 2 1 57 3 0 58 4 0 59 5 1 60 6 1
		 61 7 1 62 8 1;
	setAttr -s 56 -ch 224 ".fc[0:55]" -type "polyFaces" 
		f 4 -1 56 8 -58
		mu 0 4 0 1 2 3
		f 4 -2 57 9 -59
		mu 0 4 4 0 3 5
		f 4 -3 58 10 -60
		mu 0 4 6 4 5 7
		f 4 -4 60 11 -62
		mu 0 4 8 9 10 11
		f 4 -5 61 12 -63
		mu 0 4 12 8 11 13
		f 4 -6 62 13 -64
		mu 0 4 14 12 13 15
		f 4 -7 63 14 -65
		mu 0 4 16 14 15 17
		f 4 -8 64 15 -57
		mu 0 4 18 16 17 19
		f 4 -9 65 16 -67
		mu 0 4 3 2 20 21
		f 4 -10 66 17 -68
		mu 0 4 5 3 21 22
		f 4 -11 67 18 -69
		mu 0 4 7 5 22 23
		f 4 -12 69 19 -71
		mu 0 4 11 10 24 25
		f 4 -13 70 20 -72
		mu 0 4 13 11 25 26
		f 4 -14 71 21 -73
		mu 0 4 15 13 26 27
		f 4 -15 72 22 -74
		mu 0 4 17 15 27 28
		f 4 -16 73 23 -66
		mu 0 4 19 17 28 29
		f 4 -17 74 24 -76
		mu 0 4 21 20 30 31
		f 4 -18 75 25 -77
		mu 0 4 22 21 31 32
		f 4 -19 76 26 -78
		mu 0 4 23 22 32 33
		f 4 -20 78 27 -80
		mu 0 4 25 24 34 35
		f 4 -21 79 28 -81
		mu 0 4 26 25 35 36
		f 4 -22 80 29 -82
		mu 0 4 27 26 36 37
		f 4 -23 81 30 -83
		mu 0 4 28 27 37 38
		f 4 -24 82 31 -75
		mu 0 4 29 28 38 39
		f 4 -25 83 32 -85
		mu 0 4 31 30 40 41
		f 4 -26 84 33 -86
		mu 0 4 32 31 41 42
		f 4 -27 85 34 -87
		mu 0 4 33 32 42 43
		f 4 -28 87 35 -89
		mu 0 4 35 34 44 45
		f 4 -29 88 36 -90
		mu 0 4 36 35 45 46
		f 4 -30 89 37 -91
		mu 0 4 37 36 46 47
		f 4 -31 90 38 -92
		mu 0 4 38 37 47 48
		f 4 -32 91 39 -84
		mu 0 4 39 38 48 49
		f 4 -33 92 40 -94
		mu 0 4 41 40 50 51
		f 4 -34 93 41 -95
		mu 0 4 42 41 51 52
		f 4 -35 94 42 -96
		mu 0 4 43 42 52 53
		f 4 -36 96 43 -98
		mu 0 4 45 44 54 55
		f 4 -37 97 44 -99
		mu 0 4 46 45 55 56
		f 4 -38 98 45 -100
		mu 0 4 47 46 56 57
		f 4 -39 99 46 -101
		mu 0 4 48 47 57 58
		f 4 -40 100 47 -93
		mu 0 4 49 48 58 59
		f 4 -41 101 48 -103
		mu 0 4 51 50 60 61
		f 4 -42 102 49 -104
		mu 0 4 52 51 61 62
		f 4 -43 103 50 -105
		mu 0 4 53 52 62 63
		f 4 -44 105 51 -107
		mu 0 4 55 54 64 65
		f 4 -45 106 52 -108
		mu 0 4 56 55 65 66
		f 4 -46 107 53 -109
		mu 0 4 57 56 66 67
		f 4 -47 108 54 -110
		mu 0 4 58 57 67 68
		f 4 -48 109 55 -102
		mu 0 4 59 58 68 69
		f 4 -49 110 0 -112
		mu 0 4 61 60 70 71
		f 4 -50 111 1 -113
		mu 0 4 62 61 71 72
		f 4 -51 112 2 -114
		mu 0 4 63 62 72 73
		f 4 -52 114 3 -116
		mu 0 4 65 64 74 75
		f 4 -53 115 4 -117
		mu 0 4 66 65 75 76
		f 4 -54 116 5 -118
		mu 0 4 67 66 76 77
		f 4 -55 117 6 -119
		mu 0 4 68 67 77 78
		f 4 -56 118 7 -111
		mu 0 4 69 68 78 79;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus2" -p "|pTorus1|pTorus2";
	rename -uid "3591B4E5-4145-130A-5121-6CBAE53D0D09";
createNode transform -n "pTorus2" -p "|pTorus1|pTorus2|pTorus2";
	rename -uid "FCEED84C-4EBD-AB7B-2F0B-C3A84B963235";
createNode mesh -n "pTorusShape2" -p "|pTorus1|pTorus2|pTorus2|pTorus2";
	rename -uid "5DC66FD6-4258-4975-ECDB-4DBBAC51323A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform2" -p "|pTorus1|pTorus2|pTorus2";
	rename -uid "88E33DF1-4457-9A89-BD09-838E68C3A3B7";
	setAttr ".v" no;
createNode mesh -n "pTorusShape2" -p "transform2";
	rename -uid "11C9C0BE-423F-C569-586A-A2B6C7CA15E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform1" -p "|pTorus1|pTorus2";
	rename -uid "81929367-4ED1-4416-2B79-4D9C01ACB236";
	setAttr ".v" no;
createNode mesh -n "pTorusShape2" -p "transform1";
	rename -uid "A9BA1D7F-4FDE-F22B-0A46-6691F24DE9E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus3";
	rename -uid "DC454035-4E0F-73DB-644D-24A22666B314";
	setAttr ".t" -type "double3" -1.8140667209644148 0.55606487369519897 0.85514810688535814 ;
	setAttr ".r" -type "double3" 0 0 88.68344510253992 ;
	setAttr ".s" -type "double3" 1.6335252972784295 0.8993408098749478 1.9199938886489065 ;
createNode mesh -n "pTorusShape3" -p "pTorus3";
	rename -uid "BE7D078F-47F8-E2E1-3446-AC94A9C044CD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3DD97672-42B2-98FE-855F-709D5B30A0C8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6F51B344-4727-3706-7E28-5780CE47558A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8875EA64-4C82-EFB0-1109-CEBB62AEE799";
createNode displayLayerManager -n "layerManager";
	rename -uid "DDAE95EB-4496-1785-F286-72B6FE1C33AA";
createNode displayLayer -n "defaultLayer";
	rename -uid "6CD8C563-42C2-577A-38B0-73B01750BEB7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0F6DC873-4DCD-5FC7-7839-219ECD626CB8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "87E70D98-4E20-603C-AE0E-F48B4842E5C7";
	setAttr ".g" yes;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "7DEA6E59-4011-4A5F-6A58-429D73512CE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.037532196943735337 1.6330940668072853 0 0 -0.89910339502633319 0.02066343046661228 0 0
		 0 0 1.9199938886489065 0 -1.8140667209644148 0.55606487369519897 0.85514810688535814 1;
	setAttr ".a" 180;
createNode groupId -n "groupId1";
	rename -uid "4C744E1D-4497-017E-3BD6-E3AFDA1AFE2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "E080368D-4F47-A5BD-FCD5-EAB39D88D446";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:55]";
createNode polyMirror -n "polyMirror1";
	rename -uid "360A3668-41A5-4D94-C709-C28EC67AD86E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.037532196943735337 1.6330940668072853 0 0 -0.89910339502633319 0.02066343046661228 0 0
		 0 0 1.9199938886489065 0 -1.8140667209644148 0.55606487369519897 0.85514810688535814 1;
	setAttr ".p" -type "double3" -1.1102230246251565e-16 4.4408920985006262e-16 -5.5511151231257827e-17 ;
	setAttr ".ma" 1;
	setAttr ".mm" 0;
	setAttr ".sp" -type "double3" -1.1102230246251565e-16 4.4408920985006262e-16 -5.5511151231257827e-17 ;
	setAttr ".fnf" 56;
	setAttr ".lnf" 111;
	setAttr ".pc" -type "double3" -1.1102230246251565e-16 4.4408920985006262e-16 -5.5511151231257827e-17 ;
createNode polySeparate -n "polySeparate1";
	rename -uid "400C5749-416C-7CA3-EBEF-26BE6887E48F";
	setAttr ".ic" 2;
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId2";
	rename -uid "FA010330-43A9-19D0-2E79-89956B7ACC7A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B6E9B0E6-4D8C-6357-1EC8-77BCE9776247";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:111]";
createNode polyMirror -n "polyMirror2";
	rename -uid "C0366067-4689-F1E8-400F-3885702B3319";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.037532196943735337 1.6330940668072853 0 0 -0.89910339502633319 0.02066343046661228 0 0
		 0 0 1.9199938886489065 0 -1.8140667209644148 0.55606487369519897 0.85514810688535814 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".fnf" 56;
	setAttr ".lnf" 111;
createNode polySeparate -n "polySeparate2";
	rename -uid "AB31DB6D-44DE-EB7B-13EA-0BB38B846066";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId3";
	rename -uid "A5BFCB19-4ECA-4375-02F8-AF8B6DE22422";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "6F5E7816-468D-6E05-AF54-FAB1446DF75C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:111]";
createNode groupId -n "groupId4";
	rename -uid "9A862CA3-40E7-110E-724E-75ABD23F4F89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "6EE6A5D4-4340-9949-C9BB-DC8DCE91374A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:111]";
createNode polySplit -n "polySplit1";
	rename -uid "256851C9-4C0E-0EA6-B752-AFB87DFA0E89";
	setAttr -s 23 ".e[0:22]"  0.40367401 0.40367401 0.40367401 0.40367401
		 0.40367401 0.40367401 0.40367401 0.40367401 0.40367401 0.40367401 0.40367401 0.59632599
		 0.59632599 0.59632599 0.59632599 0.59632599 0.59632599 0.59632599 0.59632599 0.59632599
		 0.40367401 0.40367401 0.40367401;
	setAttr -s 23 ".d[0:22]"  -2147483559 -2147483558 -2147483557 -2147483556 -2147483555 -2147483554 
		-2147483553 -2147483552 -2147483551 -2147483472 -2147483473 -2147483515 -2147483516 -2147483517 -2147483518 -2147483519 -2147483520 -2147483521 
		-2147483522 -2147483523 -2147483466 -2147483465 -2147483559;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "8D21B1E3-4A0F-87E0-1B36-A48A18D09EC8";
	setAttr -s 23 ".e[0:22]"  0.325185 0.325185 0.325185 0.325185 0.325185
		 0.325185 0.325185 0.325185 0.325185 0.325185 0.325185 0.674815 0.674815 0.674815
		 0.674815 0.674815 0.674815 0.674815 0.674815 0.674815 0.325185 0.325185 0.325185;
	setAttr -s 23 ".d[0:22]"  -2147483568 -2147483567 -2147483566 -2147483565 -2147483564 -2147483563 
		-2147483562 -2147483561 -2147483560 -2147483474 -2147483475 -2147483506 -2147483507 -2147483508 -2147483509 -2147483510 -2147483511 -2147483512 
		-2147483513 -2147483514 -2147483468 -2147483467 -2147483568;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "3B1967DD-4C53-6B06-7500-078615524759";
	setAttr ".ics" -type "componentList" 2 "f[49:54]" "f[104:109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.7683716e-07 -0.063227907 -1.957092 ;
	setAttr ".rs" 36448;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.8110389709472656 -0.49052628874778748 -2.1496202945709229 ;
	setAttr ".cbx" -type "double3" 5.8110380172729492 0.36407047510147095 -1.7645637989044189 ;
	setAttr ".raf" no;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "394550AA-4FAE-64F0-F779-AA9F21DBE51A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1581\n            -height 1128\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1581\\n    -height 1128\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1581\\n    -height 1128\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2BEDA697-4CDC-4A2B-D69F-1AA12E357917";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace1.out" "pCubeShape1.i";
connectAttr "groupParts3.og" "|pTorus1|pTorus2|pTorus2|pTorus2|pTorusShape2.i";
connectAttr "groupId3.id" "|pTorus1|pTorus2|pTorus2|pTorus2|pTorusShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pTorus1|pTorus2|pTorus2|pTorus2|pTorusShape2.iog.og[0].gco"
		;
connectAttr "polyMirror2.out" "|pTorus1|pTorus2|pTorus2|transform2|pTorusShape2.i"
		;
connectAttr "groupId2.id" "|pTorus1|pTorus2|pTorus2|transform2|pTorusShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pTorus1|pTorus2|pTorus2|transform2|pTorusShape2.iog.og[0].gco"
		;
connectAttr "polyMirror1.out" "|pTorus1|pTorus2|transform1|pTorusShape2.i";
connectAttr "groupId1.id" "|pTorus1|pTorus2|transform1|pTorusShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pTorus1|pTorus2|transform1|pTorusShape2.iog.og[0].gco"
		;
connectAttr "groupParts4.og" "pTorusShape3.i";
connectAttr "groupId4.id" "pTorusShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape3.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupParts1.og" "polySoftEdge1.ip";
connectAttr "|pTorus1|pTorus2|transform1|pTorusShape2.wm" "polySoftEdge1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySoftEdge1.out" "polyMirror1.ip";
connectAttr "|pTorus1|pTorus2|transform1|pTorusShape2.wm" "polyMirror1.mp";
connectAttr "|pTorus1|pTorus2|transform1|pTorusShape2.o" "polySeparate1.ip";
connectAttr "polyMirror1.fnf" "polySeparate1.sf";
connectAttr "polyMirror1.lnf" "polySeparate1.ef";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts2.og" "polyMirror2.ip";
connectAttr "|pTorus1|pTorus2|pTorus2|transform2|pTorusShape2.wm" "polyMirror2.mp"
		;
connectAttr "|pTorus1|pTorus2|pTorus2|transform2|pTorusShape2.o" "polySeparate2.ip"
		;
connectAttr "polyMirror2.fnf" "polySeparate2.sf";
connectAttr "polyMirror2.lnf" "polySeparate2.ef";
connectAttr "polySeparate2.out[0]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "polySeparate2.out[1]" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "polySurfaceShape2.o" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pTorus1|pTorus2|transform1|pTorusShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pTorus1|pTorus2|pTorus2|transform2|pTorusShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pTorus1|pTorus2|pTorus2|pTorus2|pTorusShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pTorusShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of gliderBlocky.ma
