_unis = ["U_O_V_Soldier_Viper_F"];

_vests = ["V_PlateCarrierSpec_rgr"];


_backpacks = ["B_ViperHarness_blk_F"];

_headgears = ["H_HelmetO_ViperSP_ghex_F"];

_weaps = ["MMG_01_hex_F","MMG_01_tan_F","MMG_02_black_F","MMG_02_camo_F","MMG_02_sand_F"];

if (MOD_hasNIA_M134) then {
{_weaps pushbackunique _x} foreach
 ["HLC_wp_M134Painless"];

};
if (MOD_hasNIA_M60) then {
{_weaps pushbackunique _x} foreach
 ["hlc_lmg_m60"];

};
if (MOD_hasRHSGREF) then {
{_weaps pushbackunique _x} foreach
 ["rhs_weap_mg42"];
};
if (MOD_hasNIA_MG3) then {
{_weaps pushbackunique _x} foreach
 ["hlc_lmg_MG3"];
};

_uni = _unis select 0;
_vest = _vests select 0;
_weap = _weaps call bis_fnc_selectrandom;
_headgear = _headgears select 0;
_backpack = _backpacks select 0;
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL. 
_this setrank "COLONEL";
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
_this addMagazines ["NLAW_F", 2];
_this addweapon "launch_NLAW_F";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
_this enablefatigue false;
//_this call HG_fnc_aiUnitSetup;
_this spawn {
while {alive _this} do
{
_this setvehicleammo 1;
sleep 2;
}

};