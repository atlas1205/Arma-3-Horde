_unis = ["U_I_CombatUniform","U_I_OfficerUniform","U_I_CombatUniform_shortsleeve","U_C_Driver_3","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_BG_Guerilla1_1","U_BG_Guerrilla_6_1","U_B_CombatUniform_mcam_worn","U_I_G_Story_Protagonist_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_2_F"];

_vests = ["V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessO_brn","V_HarnessO_gry","V_TacVestIR_blk","V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVest_blk_POLICE","V_I_G_resistanceLeader_F"];

_backpacks = ["B_AssaultPack_cbr","B_AssaultPack_blk","B_AssaultPack_dgtl","B_AssaultPack_rgr","B_AssaultPack_ocamo","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_sgg","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_khk","B_FieldPack_oli","B_FieldPack_oucamo"];

_headgears = ["H_Watchcap_blk","H_Watchcap_cbr","H_Watchcap_camo","H_Watchcap_khk","H_Beret_blk","H_Booniehat_khk_hs","H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_oli","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_grn_BI","H_Cap_blk","H_Cap_blu","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","H_Cap_oli_hs","H_Cap_police","H_Cap_press","H_Cap_red","H_Cap_surfer","H_Cap_tan","H_Cap_khaki_specops_UK","H_Cap_usblack","H_Cap_tan_specops_US","H_Cap_blk_Raven","H_Cap_brn_SPECOPS","H_HelmetB","H_Shemag_olive","H_Shemag_olive_hs","H_ShemagOpen_tan","H_ShemagOpen_khk","H_Cap_headphones"];


_weaps = ["arifle_AK12_F","arifle_AKM_F","arifle_AKS_F","SMG_01_F"];

if (MOD_hasRHS) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_akm","rhs_weap_akms","rhs_weap_aks74","rhs_weap_asval"];
{_headgears pushbackunique _x} foreach ["rhs_6b26_green","rhs_6b26","rhs_6b27m_green","rhs_6b28_green","rhs_6b28_flora","rhs_6b47","rhs_6b7_1m"];
{_vests pushbackunique _x} foreach ["rhs_6sh92_digi","rhs_6sh92_digi_headset","rhs_6sh92_digi_radio","rhs_6sh92_digi_vog","rhs_6sh92_digi_vog_headset","rhs_6sh92","rhs_6sh92_headset","rhs_6sh92_radio","rhs_6sh92_vog","rhs_6b13_Flora_6sh92","rhs_6b13_EMR_6sh92","rhs_6b13_6sh92","rhs_6b23_6sh116_od"];
};
if (MOD_hasRHSUS) then {
{_vests pushbackunique _x} foreach ["rhsusf_mbav_rifleman","rhsusf_mbav_medic","rhsusf_mbav_grenadier","rhsusf_mbav_light","rhsusf_iotv_ocp","rhsusf_iotv_ocp_Rifleman","rhsusf_iotv_ucp_Rifleman","rhsusf_iotv_ocp_Teamleader","rhsusf_iotv_ucp_Teamleader"];
{_headgears pushbackunique _x} foreach ["rhs_Booniehat_m81","rhs_booniehat2_marpatd","rhs_booniehat2_marpatwd","rhs_Booniehat_ocp","rhs_Booniehat_ucp"];
};
if (MOD_hasRHSGREF) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_m21a","rhs_weap_m21s","rhs_weap_MP44"];
};
if (MOD_hasRHSSAF) then {
{_unis pushbackunique _x} foreach ["rhssaf_uniform_m10_digital","rhssaf_uniform_m10_digital_desert","rhssaf_uniform_m10_digital_summer","rhssaf_uniform_m10_digital_tan_boots","rhssaf_uniform_m93_oakleaf","rhssaf_uniform_m93_oakleaf_summer"];
};

if (MOD_hasNIA_AK) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_ak47","hlc_rifle_ak74","hlc_rifle_ak74m","hlc_rifle_akm","hlc_rifle_aks74","hlc_rifle_aks74u","hlc_rifle_aek971"];
};
if (MOD_hasNIA_FAL) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_L1A1SLR","hlc_rifle_FAL5000","hlc_rifle_LAR","hlc_rifle_FAL5061"];
};
if (MOD_hasNIA_M16) then {
{_weaps pushbackunique _x} foreach ["hlc_wp_m16a2","hlc_wp_XM177E2","hlc_wp_mod727","hlc_wp_mod733","hlc_wp_m16A1","hlc_wp_xm4"];
};


_uni = _unis call bis_fnc_selectrandom;
_vest = _vests call bis_fnc_selectrandom;
_weap = _weaps call bis_fnc_selectrandom;
_headgear = _headgears call bis_fnc_selectrandom;
_backpack = _backpacks call bis_fnc_selectrandom;

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL. 
_this setrank "SERGEANT";
_this forceadduniform _uni;
_this addvest _vest;
_this addbackpack _backpack;
_this addheadgear _headgear;
_mag = getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0;
_this addMagazines [getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0, 10];
_this addweapon _weap;
_this selectweapon _weap;
_this additem "SmokeShell";
_this additem "SmokeShell";
_this additem "HandGrenade";
_this additem "HandGrenade";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";

_this enablefatigue false;
//_this call HG_fnc_aiUnitSetup;