BUILD_LIST_1 = [];
BUILD_LIST_2 = [];
BUILD_LIST_3 = [];
BUILD_LIST_4 = [];
//classname, shown name, price, code to call, add standard actions, allowdamage
BUILD_LIST_1 = [
['Land_Ammobox_rounds_F',(localize "STR_BUILDLIST_1"),500,{_this spawn Atlas_fnc_build_ammobox;},true,true],
['Land_FirstAidKit_01_closed_F', (localize "STR_BUILDLIST_3"),500,{_this spawn Atlas_fnc_build_firstaid;},true,true],
['Box_NATO_AmmoVeh_F', (localize "STR_BUILDLIST_2"),10000,{_this spawn Atlas_fnc_build_ammobox_1;},true,true],
['CargoNet_01_box_F', (localize "STR_BUILDLIST_4"),5000,{_this allowdamage false;},true,true],
['FlexibleTank_01_forest_F', "",500,{},true,true],
['Land_RepairDepot_01_green_F', "",1000,{},true,true],
['Land_BagFence_Long_F',"",500,{},true,true],
['Land_BagFence_Round_F',"",500,{},true,true],
['Land_BagFence_Corner_F',"",200,{},true,true],
['Land_BagFence_Short_F',"",200,{},true,true],
['Land_BagFence_End_F',"",200,{},true,true],
['Land_SandbagBarricade_01_half_F',"",400,{},true,true],
['Land_SandbagBarricade_01_F',"",600,{},true,true],
['Land_SandbagBarricade_01_hole_F',"",600,{},true,true],
['Land_Bunker_01_blocks_1_F',"",200,{},true,true],
['Land_Bunker_01_blocks_3_F',"",600,{},true,true],
['Land_Mil_WallBig_Corner_F',"",500,{},true,true],
['Land_Mil_WallBig_4m_F',"",1000,{},true,true],
['Land_Razorwire_F',"",500,{},true,true],
['Land_DragonsTeeth_01_4x2_new_F',"",1000,{},true,true],
['Land_CzechHedgehog_01_new_F',"",500,{},true,true],
['Land_ConcreteHedgehog_01_F',"",500,{},true,true],
['Land_HBarrier_3_F',"",900,{},true,true],
['Land_HBarrier_5_F',"",1500,{},true,true],
['Land_HBarrier_Big_F',"",1600,{},true,true],
['Land_HBarrier_1_F',"",300,{},true,true],
['Land_HBarrierWall_corridor_F',"",3000,{},true,true],
['Land_HBarrierWall_corner_F',"",3000,{},true,true],
['Land_HBarrierWall6_F',"",3000,{},true,true],
['Land_HBarrierWall4_F',"",2200,{},true,true],
['Land_Barricade_01_10m_F',"",800,{},true,true],
['Land_Barricade_01_4m_F',"",300,{},true,true],
['Land_Camping_Light_F',"",50,{},true,false],
['Land_PortableLight_single_F',"",100,{},true,false],
['Land_PortableLight_double_F',"",150,{},true,false],
['Land_LampHalogen_F',"",300,{},false,false],
['Land_LampHarbour_F',"",300,{},false,false],
['Land_LampSolar_F',"",200,{},false,false],
['Land_LampStreet_small_F',"",200,{},false,false],
['Land_LampStreet_F',"",250,{},false,false],
['Land_LampAirport_F',"",500,{},false,false],
['Land_ClutterCutter_small_F', "",0,{},false,false],
['Land_ClutterCutter_medium_F', "",0,{},false,false],
['Land_ClutterCutter_large_F', "",0,{},false,false],
['Land_HelipadCircle_F', "",0,{},false,false],
['Land_HelipadSquare_F', "",0,{},false,false]
];
BUILD_LIST_2 = [
['Land_BagBunker_Small_F',"",1000,{},false,true],
['Land_BagBunker_Large_F',"",4000,{},false,true],
['Land_BagBunker_Tower_F',"",5000,{},false,true],
['Land_HBarrierTower_F',"",4000,{},false,true],
['Land_Bunker_01_small_F',"",4000,{},false,true],
['Land_Bunker_01_big_F',"",7500,{},false,true],
['Land_Bunker_01_HQ_F',"",7500,{},false,true],
['Land_Bunker_01_tall_F',"",7500,{},false,true],
['Land_Cargo_Patrol_V1_F',"",5000,{},false,true],
['Land_Cargo_House_V1_F',"",4000,{},false,true],
['Land_Cargo_Tower_V1_F',"",10000,{},false,true],
['Land_i_Addon_02_V1_F',"",10000,{},false,true],
['Land_i_Stone_Shed_V1_F',"",12000,{},false,true],
['Land_i_House_Small_01_V3_F',"",15000,{},false,true],
['Land_i_Stone_HouseSmall_V2_F',"",15000,{},false,true],
['Land_i_Stone_HouseBig_V2_F',"",15000,{},false,true],
['Land_i_Shop_02_b_blue_F',"",12000,{},false,true],
['Land_i_House_Big_01_b_blue_F',"",15000,{},false,true],
['Land_i_House_Big_02_b_blue_F',"",15000,{},false,true]
];
BUILD_LIST_3 = [
['B_HMG_01_F',"",8000,{},true,true],
['B_HMG_01_high_F',"",8000,{},true,true],
['B_GMG_01_F',"",12000,{},true,true],
['B_GMG_01_high_F',"",12000,{},true,true],
['B_static_AT_F',"",20000,{},true,true],
['B_static_AA_F',"",20000,{},true,true],
['B_Mortar_01_F',"",30000,{},true,true],
['B_HMG_01_A_F',"",11000,{[_this, side player] spawn Atlas_fnc_build_drone},true,true],
['B_GMG_01_A_F',"",15000,{[_this, side player] spawn Atlas_fnc_build_drone},true,true],
['B_Quadbike_01_F',"",2000,{},false,true],
['B_Static_Designator_01_F',"",2000,{[_this, side player] spawn Atlas_fnc_build_drone},true,true],
['B_W_Static_Designator_01_F',"",2000,{[_this, side player] spawn Atlas_fnc_build_drone},true,true],
['B_UGV_02_Demining_F',"",8000,{},false,true],
['B_UGV_02_Science_F',"",5000,{},false,true],
['B_LSV_01_unarmed_F',"",10000,{},false,true],
['B_LSV_01_armed_F',"",40000,{},false,true],
['B_LSV_01_AT_F',"",70000,{},false,true],
['B_UAV_06_F',"",15000,{[_this, side player] spawn Atlas_fnc_build_drone},true,true],
['B_UAV_06_medical_F',"",15000,{[_this, side player] spawn Atlas_fnc_build_drone},true,true],
['B_UAV_01_F',"",15000,{[_this, side player] spawn Atlas_fnc_build_drone},true,true],
['B_T_UAV_03_dynamicLoadout_F',"",80000,{[_this, side player] spawn Atlas_fnc_build_drone},false,true],
['B_UGV_01_rcws_F',"",40000,{[_this, side player] spawn Atlas_fnc_build_drone},false,true]
];
BUILD_LIST_4 = [
['APERSMine',"",500,{},true,true],
['APERSBoundingMine',"",500,{},true,true],
['APERSTripMine',"",500,{},true,true],
['APERSMineDispenser_F',"",5000,{},true,true],
['ATMine',"",500,{},true,true],
['SLAMDirectionalMine',"",500,{},true,true],
['Claymore_F',"",500,{},true,true]

];
if (MOD_hasRHS) then {
{BUILD_LIST_3 pushback _x} foreach [
['rhs_KORD_MSV',"",6000,{},true,true],
['rhs_KORD_high_MSV',"",6500,{},true,true],
['RHS_AGS30_TriPod_MSV',"",8500,{},true,true],
['rhs_Igla_AA_pod_msv',"",20000,{},true,true],
['rhs_SPG9M_MSV',"",15000,{},true,true],
['RHS_ZU23_MSV',"",20000,{},true,true],
['rhs_Kornet_9M133_2_msv',"",30000,{},true,true],
['rhs_Metis_9k115_2_msv',"",30000,{},true,true]
];
{BUILD_LIST_4 pushback _x} foreach [
['rhs_mine_pfm1',"",500,{},true,true],
['rhs_mine_pmn2',"",500,{},true,true],
['rhs_mine_ptm1',"",500,{},true,true],
['rhs_mine_tm62m',"",500,{},true,true]
];
};
if (MOD_hasRHSUS) then {
{BUILD_LIST_3 pushback _x} foreach [
['RHS_M252_WD',"",30000,{},true,true],
['RHS_M119_WD',"",50000,{},true,true],
['RHS_Stinger_AA_pod_D',"",20000,{},true,true],
['RHS_M2StaticMG_D',"",6000,{},true,true],
['RHS_M2StaticMG_MiniTripod_D',"",6500,{},true,true],
['RHS_TOW_TriPod_D',"",30000,{},true,true],
['RHS_MK19_TriPod_D',"",9000,{},true,true],
['rhsusf_mrzr4_d',"",10000,{},false,true],
['rhsusf_m1025_w_m2',"",40000,{},false,true],
['rhsusf_m1025_w_mk19',"",70000,{},false,true]
];
{BUILD_LIST_4 pushback _x} foreach [
['rhsusf_mine_blu91',"",500,{},true,true],
['rhsusf_mine_blu92',"",500,{},true,true],
['rhsusf_mine_M19',"",500,{},true,true],
['rhsusf_mine_m14',"",500,{},true,true]
];
};

if (MOD_hasRHSSAF) then {
{BUILD_LIST_4 pushback _x} foreach [
['rhssaf_mine_mrud_a',"",500,{},true,true],
['rhssaf_mine_mrud_b',"",500,{},true,true],
['rhssaf_mine_mrud_c',"",500,{},true,true]
];
};