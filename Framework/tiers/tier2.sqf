_unis = ["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","U_B_GEN_Soldier_F","U_B_GEN_Commander_F"];

_vests = ["V_PlateCarrier2_rgr","V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVest_blk_POLICE","V_I_G_resistanceLeader_F","V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F"];

_headgears = ["","H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk_hs","H_Bandanna_khk","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_surfer","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","H_Bandanna_camo","H_Watchcap_blk","H_Watchcap_cbr","H_Watchcap_camo","H_Watchcap_khk","H_Beret_blk","H_Booniehat_khk_hs","H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_oli","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_grn_BI","H_Cap_blk","H_Cap_blu","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","H_Cap_oli_hs","H_Cap_police","H_Cap_press","H_Cap_red","H_Cap_surfer","H_Cap_tan","H_Cap_khaki_specops_UK","H_Cap_usblack","H_Cap_tan_specops_US","H_Cap_blk_Raven","H_Cap_brn_SPECOPS"]; 

_weaps = ["SMG_03_black","SMG_03_camo","SMG_03_hex","SMG_02_F","hgun_PDW2000_F","SMG_05_F"];

if (MOD_hasRHS) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_pp2000","rhs_weap_pya","rhs_weap_makarov_pm"];
{_vests pushbackunique _x} foreach ["rhs_6sh92_digi","rhs_6sh92_digi_headset","rhs_6sh92_digi_radio","rhs_6sh92_digi_vog","rhs_6sh92_digi_vog_headset","rhs_6sh92","rhs_6sh92_headset","rhs_6sh92_radio","rhs_6sh92_vog"];
};
if (MOD_hasRHSUS) then {
{_weaps pushbackunique _x} foreach ["rhsusf_weap_MP7A2","rhsusf_weap_MP7A2_aor1","rhsusf_weap_MP7A2_desert","rhsusf_weap_MP7A2_winter"];
{_vests pushbackunique _x} foreach ["rhsusf_mbav_rifleman","rhsusf_mbav_medic","rhsusf_mbav_grenadier","rhsusf_mbav_light"];
};
if (MOD_hasRHSGREF) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_m3a1"];
};

if (MOD_hasNIA_MP5) then {
{_weaps pushbackunique _x} foreach ["hlc_smg_MP5N","hlc_smg_mp5sd5","hlc_smg_mp5k_PDW"];
};


_uni = _unis call bis_fnc_selectrandom;
_vest = _vests call bis_fnc_selectrandom;
_weap = _weaps call bis_fnc_selectrandom;
_headgear = _headgears call bis_fnc_selectrandom;

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL. 
_this setrank "CORPORAL";
_this forceadduniform _uni;
_this addvest _vest;
_this addheadgear _headgear;
_mag = getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0;
_this addMagazines [getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0, 10];
_this addweapon _weap;
_this selectweapon _weap;
_this additem "SmokeShell";
_this additem "SmokeShell";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
_this enablefatigue false;
//_this call HG_fnc_aiUnitSetup;