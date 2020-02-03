_unis = ["U_I_G_Story_Protagonist_F","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_BG_Guerilla3_1","U_BG_leader","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","U_B_GEN_Commander_F","U_B_GEN_Soldier_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","U_C_man_sport_1_F","U_C_man_sport_3_F","U_C_Man_casual_6_F"];

_vests = ["V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Rangemaster_belt"];

_weaps = ["hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_01_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F"];

if (MOD_hasRHS) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_6p53","rhs_weap_pya","rhs_weap_makarov_pm"];
};
if (MOD_hasRHSUS) then {
{_weaps pushbackunique _x} foreach ["rhsusf_weap_glock17g4","rhsusf_weap_m1911a1","rhsusf_weap_m9"];
};
if (MOD_hasRHSGREF) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_tt33","rhs_weap_type94_new"];
};


_uni = _unis call bis_fnc_selectrandom;
_vest = _vests call bis_fnc_selectrandom;
_weap = _weaps call bis_fnc_selectrandom;

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL. 
_this setrank "private";
_this forceadduniform _uni;
_this addvest _vest;
_mag = getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0;
_this addMagazines [getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0, 10];
_this addweapon _weap;
_this selectweapon _weap;
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
/*
if (_weap != "" && ((count (getArray (configFile>> "CfgWeapons" >> _weap >> "magazines")))>0)) then
{

	_this addMagazines [getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0, 10];

};
*/
_this enablefatigue false;
//_this call HG_fnc_aiUnitSetup;