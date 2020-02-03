_unis = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_O_SpecopsUniform_ocamo","U_B_CombatUniform_mcam_vest"];

_vests = ["V_PlateCarrierGL_blk","V_PlateCarrierGL_rgr","V_PlateCarrierGL_mtp","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_blk","V_PlateCarrier2_rgr","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_mtp","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierGL_tna_F","V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier1_tna_F","V_PlateCarrier2_rgr_noflag_F","V_PlateCarrier2_tna_F","V_PlateCarrierSpec_tna_F"];


_backpacks = ["B_Carryall_cbr","B_Carryall_ocamo","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_oli","B_Carryall_oucamo","B_Kitbag_cbr","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg","B_Kitbag_tan","B_ViperHarness_blk_F","B_ViperHarness_ghex_F","B_ViperHarness_hex_F","B_ViperHarness_khk_F","B_ViperHarness_oli_F","B_ViperLightHarness_blk_F","B_ViperLightHarness_ghex_F","B_ViperLightHarness_hex_F","B_ViperLightHarness_khk_F","B_ViperLightHarness_oli_F"];

_headgears = ["H_HelmetSpecO_blk","H_HelmetB","H_HelmetB_black","H_HelmetSpecO_ghex_F"];

_weaps = ["LMG_03_F","LMG_Zafir_F","MMG_01_hex_F","MMG_01_tan_F","MMG_02_black_F","MMG_02_camo_F","MMG_02_sand_F"];

if (MOD_hasRHS) then {
{_weaps pushbackunique _x} foreach 
["rhs_weap_pkm","rhs_weap_pkp"];
};
if (MOD_hasRHSUS) then {
{_weaps pushbackunique _x} foreach
 ["rhs_weap_m249_pip_S"];
};
if (MOD_hasRHSSAF) then {
{_weaps pushbackunique _x} foreach 
["rhs_weap_minimi_para_railed"];

};
if (MOD_hasNIA_SAW) then {
{_weaps pushbackunique _x} foreach
 ["hlc_lmg_minimi","hlc_lmg_M249E1","hlc_lmg_M249E2","hlc_lmg_mk46","hlc_lmg_mk46mod1","hlc_lmg_mk48","hlc_lmg_mk48mod1"];
};
if (MOD_hasSMA) then {
{_weaps pushbackunique _x} foreach 
["sma_minimi_mk3_762tlb","sma_minimi_mk3_762tlb_des","sma_minimi_mk3_762tlb_wdl","sma_minimi_mk3_762tsb"];

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
_this setrank "MAJOR";
_this forceadduniform _uni;
_this addvest _vest;
_this addbackpack _backpack;
_this addheadgear _headgear;

_this additem "SmokeShell";
_this additem "SmokeShell";
_this additem "HandGrenade";
_this additem "HandGrenade";

_this addMagazines [getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0, 3];

_this addweapon _weap;
_this selectweapon _weap;
_this addMagazines ["RPG32_F", 2];
_this addweapon "launch_RPG32_F";
_this enablefatigue false;
//_this call HG_fnc_aiUnitSetup;
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
_this spawn {
while {alive _this} do
{
_this setvehicleammo 1;
sleep 2;
}

};