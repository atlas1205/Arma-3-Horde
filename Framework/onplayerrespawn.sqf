["Terminate"] call BIS_fnc_EGSpectator;
_fatigue = ["playerfatigue", 0] call BIS_fnc_getParamValue;
_recoil = ["playerrecoil", 50] call BIS_fnc_getParamValue;
if (_fatigue <= 0) then {player enableFatigue false;};
player setUnitRecoilCoefficient ((_recoil)/100);

building = false;
player addaction ["<t color='#FF0000'>"+(localize "STR_UI_TEXT_8")+"</t>",{[] execVM "HRD_UI\ui_build.sqf"},nil,10,false,true,"","",2,false];
sleep 1;
if (primaryweapon player == "" && handgunweapon player == "") then 
{

player addweapon "hgun_ACPC2_F";
player addMagazines [getArray (configFile>> "CfgWeapons" >> "hgun_ACPC2_F" >> "magazines") select 0, 3];
player selectweapon "hgun_ACPC2_F";

};