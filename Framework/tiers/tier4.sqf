_unis = ["U_I_CombatUniform","U_I_OfficerUniform","U_I_CombatUniform_shortsleeve","U_BG_leader","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_Marshal","U_C_Journalist","U_B_CombatUniform_mcam_vest","U_B_survival_uniform","U_C_WorkerCoveralls","U_B_CombatUniform_mcam_worn","U_I_G_Story_Protagonist_F","U_I_C_Soldier_Camo_F"];

_vests = ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG","V_PlateCarrier2_blk","V_PlateCarrier2_rgr","V_PlateCarrier1_rgr",
"V_PlateCarrier1_blk","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_TacVestIR_blk"];

_backpacks = ["B_Kitbag_cbr","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg","B_Kitbag_tan"];

_headgears = ["H_HelmetSpecO_blk","H_HelmetB","H_HelmetB_black","H_HelmetB_light","H_HelmetB_light_black","H_HelmetB_light_desert","H_HelmetB_light_grass","H_HelmetB_light_sand","H_HelmetB_light_snakeskin","H_Shemag_olive","H_Shemag_olive_hs","H_ShemagOpen_tan","H_ShemagOpen_khk","H_Cap_headphones","H_HelmetSpecO_ghex_F"];

_weaps = ["arifle_ARX_blk_F","arifle_Mk20_F","arifle_TRG20_F","arifle_TRG21_F"];

if (MOD_hasRHS) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_ak103","rhs_weap_ak104","rhs_weap_ak105","rhs_weap_ak74mr_afg","rhs_weap_ak74mr"];
{_vests pushbackunique _x} foreach ["rhs_6b13_Flora_6sh92","rhs_6b13_6sh92","rhs_6b23_6sh116_od","rhs_6b23_6sh116","rhs_6b23_6sh116_vog","rhs_6b23_digi_6sh92_spetsnaz2","rhs_6b23_digi_6sh92_vog","rhs_6b23_digi_engineer","rhs_6b23_digi_vydra_3m","rhs_6b23_ML_6sh92","rhs_6b23_ML_6sh92_vog"];
{_headgears pushbackunique _x} foreach ["rhs_6b26_green","rhs_6b26","rhs_6b27m_green","rhs_6b28_green","rhs_6b28_flora","rhs_6b47","rhs_6b7_1m"];
{_unis pushbackunique _x} foreach ["rhs_uniform_flora_patchless"];
};
if (MOD_hasRHSUS) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_m4a1","rhs_weap_m4a1_carryhandle","rhs_weap_m16a4"];
{_vests pushbackunique _x} foreach ["rhsusf_mbav_rifleman","rhsusf_mbav_medic","rhsusf_mbav_grenadier","rhsusf_iotv_ucp_Grenadier","rhsusf_iotv_ocp_Grenadier","rhsusf_spcs_ucp_rifleman_alt","rhsusf_spcs_ocp_rifleman_alt","rhsusf_spcs_ucp_squadleader","rhsusf_spcs_ocp_teamleader_alt","rhsusf_spcs_ucp_teamleader_alt"];
{_headgears pushbackunique _x} foreach ["rhsusf_ach_bare","rhsusf_ach_bare_ess","rhsusf_ach_bare_des","rhsusf_ach_bare_des_ess","rhsusf_ach_bare_wood_headset","rhsusf_ach_bare_wood","rhsusf_ach_bare_wood_ess","rhs_Booniehat_m81","rhs_booniehat2_marpatd","rhs_booniehat2_marpatwd","rhs_Booniehat_ocp","rhs_Booniehat_ucp","rhsusf_opscore_aor1","rhsusf_opscore_aor2","rhsusf_opscore_bk","rhsusf_opscore_mc_cover","rhsusf_opscore_fg","rhsusf_mich_bare"];
};
if (MOD_hasRHSGREF) then {
{_unis pushbackunique _x} foreach ["rhsgref_uniform_vsr","rhsgref_uniform_dpm"];
};
if (MOD_hasRHSSAF) then {
{_unis pushbackunique _x} foreach ["rhssaf_uniform_m10_digital","rhssaf_uniform_m10_digital_desert","rhssaf_uniform_m10_digital_summer","rhssaf_uniform_m10_digital_tan_boots","rhssaf_uniform_m93_oakleaf","rhssaf_uniform_m93_oakleaf_summer"];
};

if (MOD_hasNIA_AK) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_ak12","hlc_rifle_aku12","hlc_rifle_RPK12","hlc_rifle_slr107u"];
};
if (MOD_hasNIA_FAL) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_falosw","hlc_rifle_FAL5000","hlc_rifle_LAR","hlc_rifle_FAL5061"];
};
if (MOD_hasNIA_G3) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_hk53RAS","HLC_Rifle_g3ka4_GL","hlc_rifle_g3a3","hlc_rifle_hk51"];
};

if (MOD_hasNIA_AR) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_M4","hlc_rifle_bcmjack","hlc_rifle_RU5562"];

};
if (MOD_hasNIA_416) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_M27IAR","hlc_rifle_416D145_tan","hlc_rifle_416D145","hlc_rifle_416D10","hlc_rifle_416D20"];
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
_this setrank "LIEUTENANT";
_this forceadduniform _uni;
_this addvest _vest;
_this addbackpack _backpack;
_this addheadgear _headgear;
_mag = getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0;
_this addMagazines [getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0, 10];
_muzzles = getArray (configFile >> "CfgWeapons" >> (_weap) >> "muzzles");
if (count _muzzles > 1) then {	_this addMagazines ["1Rnd_HE_Grenade_shell", 4];};
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

_this addMagazines ["RPG7_F", 3];
_this addweapon "launch_RPG7_F";
_this enablefatigue false;
//_this call HG_fnc_aiUnitSetup;