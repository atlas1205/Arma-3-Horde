[] execVM "HG\Setup\fn_serverInitialization.sqf";

#include "Settings.sqf"
#include "prices.sqf"
execVM "randomWeather2.sqf";
//execVM "scripts\random_weapons.sqf";

_allobjects = allMissionObjects "All";
_interval = ["roundinterval", 60] call BIS_fnc_getParamValue;
master setvariable ['interval',_interval,true]; 
master setvariable ['countdown',_interval,true]; 
master setvariable ['round_in',0,true]; 
master setvariable ['wave',0,true]; 
master setvariable ["art",0,true];
master setvariable ["heli",0,true];
master setvariable ["bomb",0,true];
allwpshop = [];
alltargets = [];
allgarage = [];

{if ((str _x) find "shop_weapon_" == 0) then {
allwpshop pushBackUnique _x;}
} forEach _allobjects;

{if ((str _x) find "target_" == 0) then {
alltargets pushBackUnique _x;}
} forEach _allobjects;

// {if ((str _x) find "garage_" == 0) then {
// allgarage pushBackUnique _x;}
// } forEach _allobjects;

{[_x,["<img image='HG\UI\Icons\money.paa' size='1.5'/>"+(localize "str_system_openshop"),{[] execVM "HRD_UI\ui_shoplist.sqf"},"",1000,false,false,"",'(alive player) && !dialog && player distance _target < 6']] remoteexec ["addaction",0,true]}foreach allwpshop;
_hr =  ["starthour", 9] call BIS_fnc_getParamValue;
setDate [2035, 6, 4, _hr, 0];

sleep 3;
[true ,"shop_main","shop",objnull,"assigned",1000000,true,"interact",false] call BIS_fnc_taskCreate;
{[true ,['shop_'+str getpos _x,"shop_main"],["",(localize "str_system_shop")+str getpos _x,""],_x,"created",100,false,"rearm",true] call BIS_fnc_taskCreate;}foreach allwpshop;
//{[true ,['garage_'+str getpos _x,"shop_main"],["",(localize "str_system_garage")+ " " + (((str _x) splitstring "_") select 1) + " " + str getpos _x,""],_x,"created",parseNumber (((str _x) splitstring "_") select 1),false,"car",true] call BIS_fnc_taskCreate;}foreach allgarage;
//{[_x,60] spawn Atlas_fnc_StayOnPos} foreach allwpshop;
//{_x enableSimulationGlobal false} foreach allwpshop;
execvm "scripts\waves_start.sqf";
execvm "scripts\support.sqf";
execvm "scripts\backstage.sqf";