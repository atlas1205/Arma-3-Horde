//spawn range [min, max]
SPAWN_RANGE = [300,350];
Veh_SPAWN_RANGE = [350,400];
CHEST_RANGE = [30,150];

//center_point
CENTER_POINT = "respawn_west";
AIRDROP_backup = "airdrop_backup";
//enemy veh pool
vehpool_1 = [];
vehpool_2 = [];
vehpool_3 = [];
vehpool_1 = ["O_G_Offroad_01_armed_F","O_LSV_02_armed_F"];
vehpool_2 = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
vehpool_3 = ["O_APC_Wheeled_02_rcws_v2_F","O_APC_Tracked_02_cannon_F","O_MBT_02_cannon_F","O_MBT_04_cannon_F","O_MBT_04_command_F","O_LSV_02_armed_F"];

//heli support pool
HELI_POOL = [
"B_Heli_Attack_01_dynamicLoadout_F"
];
CAS_POOL = [
"B_Plane_CAS_01_dynamicLoadout_F"
];
ART_POOL = [
"B_Mortar_01_F"
];
if (MOD_hasRHSUS) then {
{vehpool_2 pushback _x}foreach ["rhsusf_m1025_d_m2","rhsusf_m1025_d_Mk19"];
{vehpool_3 pushback _x}foreach ["rhsusf_m1a1aimd_usarmy","rhsusf_m1a1aim_tuski_d","rhsusf_m1a2sep1d_usarmy","rhsusf_m1a2sep1tuskid_usarmy","rhsusf_m1a2sep1tuskiid_usarmy","RHS_M2A3_BUSKI","RHS_M2A3","RHS_M2A3_BUSKIII"];
{HELI_POOL pushback _x}foreach ["RHS_AH64D","RHS_AH1Z"];
{CAS_POOL pushback _x}foreach ["RHS_A10"];
{ART_POOL pushback _x}foreach ["RHS_M252_D"];

};
if (MOD_hasRHS) then {
{vehpool_2 pushback _x}foreach ["rhs_tigr_sts_vdv","rhs_tigr_sts_msv"];
{vehpool_3 pushback _x}foreach ["rhs_btr80a_msv","rhs_brm1k_msv","rhs_bmp3mera_msv","rhs_t90a_tv","rhs_t90_tv","rhs_t80ue1","rhs_t80uk","rhs_t80um"];
};
if (MOD_hasRHSGREF) then {
{vehpool_1 pushback _x}foreach ["rhsgref_ins_uaz_dshkm","rhsgref_ins_uaz_ags"];
{vehpool_2 pushback _x}foreach ["rhsgref_BRDM2_msv"];
{vehpool_3 pushback _x}foreach ["rhsgref_cdf_t80bv_tv","rhsgref_cdf_t80b_tv","rhsgref_cdf_t72bb_tv","rhsgref_cdf_t72ba_tv"];
};

publicVariable "SPAWN_RANGE";
publicVariable "Veh_SPAWN_RANGE";
publicVariable "CHEST_RANGE";
publicVariable "CENTER_POINT";
publicVariable "AIRDROP_backup";
publicVariable "vehpool_1";
publicVariable "vehpool_2";
publicVariable "vehpool_3";
publicVariable "HELI_POOL";
publicVariable "CAS_POOL";
publicVariable "ART_POOL";

HA setVariable ['BIS_SUPP_vehicles',HELI_POOL,true];
CAS setVariable ['BIS_SUPP_vehicles',CAS_POOL,true];
ART setVariable ['BIS_SUPP_vehicles',ART_POOL,true];