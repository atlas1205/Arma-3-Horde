/*
    Author - HoverGuy
    © All Fucks Reserved
    Website - http://www.sunrise-production.com
    Player initialization
*/
//titleText [(""), "BLACK FADED", 0.2];
if(!hasInterface) exitWith {}; // If headless then exit
[] execVM "HG\Setup\fn_clientInitialization.sqf";
setViewDistance 1000;
_fatigue = ["playerfatigue", 0] call BIS_fnc_getParamValue;
_recoil = ["playerrecoil", 50] call BIS_fnc_getParamValue;
_resetXP = ["resetxp", 0] call BIS_fnc_getParamValue;
//_resetkill = ["resetkill", 0] call BIS_fnc_getParamValue;
if (_fatigue == 0) then {player enableFatigue false;};
player setUnitRecoilCoefficient ((_recoil)/100);
player setVariable ['ATLAS_HRD_Cash',(master getvariable [str (getPlayerUID player),1000]),true];
#include "Build_List.sqf"
building = false;
player addaction ["<t color='#FF0000'>"+(localize "STR_UI_TEXT_8")+"</t>",{[] execVM "HRD_UI\ui_build.sqf"},nil,10,false,true,"","",2,false];
sleep 3;

if (_resetXP > 0) then {
player setrank "private";
[99999999,1] call hg_fnc_addorsubxp;
};
[0] call hg_fnc_hud;
player synchronizeObjectsAdd [SR];
SR synchronizeObjectsAdd [player];
//kill player if out of bound
[]spawn {
while {true} do {
	if !(player inArea "dead_zone") then 
	{
	player setDamage 1;
	};
	sleep 60;
	};
};
[(localize 'str_info_author'),0,0.7,2,1,0,789] spawn BIS_fnc_dynamicText;
