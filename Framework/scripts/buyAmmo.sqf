//_mags = [(primaryWeapon player)] call Atlas_fnc_magArray;
//[]

Atlas_fnc_magArray = {
params ["_gun"];
disableserialization;
//_gun = primaryWeapon _this;//pass weapon here
_cursor = getText (configfile >> "CfgWeapons" >> _gun >> "cursor");
_muzzles = getArray (configFile>> "CfgWeapons" >> _gun >> "muzzles");
_mags = getArray (configFile>> "CfgWeapons" >> _gun >> "magazines");//magazine array
_others = [];
{
_others = (getArray (configFile>> "CfgWeapons" >> _gun >> _x >> "magazines"));
	for [{private _i = 0}, {_i < (count _others) }, {_i = _i + 1}] do {
	_mags pushBackUnique (_others select _i);
	}; 
}foreach _muzzles;
_mags;
};

Atlas_fnc_magPrice = {
params ["_mag"];
disableserialization;
_ammo = getText (configFile>> "CfgMagazines" >> _mag >> "ammo");
_type = getText (configfile >> "CfgAmmo" >> _ammo >> "simulation");
//"shotBullet";"shotSmokeX";"shotShell";"shotIlluminating";
_exp = isClass(configfile >> "CfgAmmo" >> _ammo >> "explosionEffectsRadius");
_expcoef = getNumber (configfile >> "CfgAmmo" >> _ammo >> "explosionForceCoef");
_exprad = getNumber (configfile >> "CfgAmmo" >> _ammo >> "explosionEffectsRadius");
_cal = getNumber (configFile>> "CfgAmmo" >> _ammo >> "caliber");
_hit = getNumber (configFile>> "CfgAmmo" >> _ammo >> "hit");
_cnt = getNumber (configFile>> "CfgMagazines" >> _mag >> "count");

if (_hit < 1) then {_hit = 1};
if (_cnt < 1) then {_cnt = 1};
if (_exprad < 1) then {_exprad = 1};
_price = 0;
switch (_type) do {
default {_price = round ((_hit)*(_cnt)*(ceil _cal)*0.25);if (_price <= 0) then {_price == 50;};};
case "shotBullet": {_price = round ((_hit)*(_cnt)*(ceil _cal)*0.25);if (_price <= 0) then {_price == 50;};};
case "shotShell": {_price = round (150*(_cnt)*_exprad*1);if (_price <= 0) then {_price == 50;};};
case "shotSmokeX": {_price = 100*(_cnt);if (_price <= 0) then {_price == 50;};};
case "shotIlluminating": {_price = 100*(_cnt);if (_price <= 0) then {_price == 50;};};
// case "shotSmokeX": {_price = round ((_hit)*(_cnt)*(_cal)*_exprad*1)+100};
// case "shotIlluminating": {_price = round ((_hit)*(_cnt)*(_cal)*_exprad*1)+100};
};
// _price = round ((_hit)*(_cnt)*(_cal)*_exprad*_expcoef*_mult + _base);
//need a formula here: caliber x count x hit

_price;
};

//called from UI
Atlas_fnc_fill_AmmoList = {
params [["_list",[(currentWeapon player)] call Atlas_fnc_magArray],["_ctrl",1500]];
disableserialization;
ammo_list = [];
	lbClear _ctrl;
	if (count _list > 0) then {
	{
	_price = ([_x] call Atlas_fnc_magPrice);
	_displayName = getText(configFile >> "CfgMagazines" >> _x >> "displayName");
	_img = getText(configFile >> "CfgMagazines" >> _x >> "picture");
	_ind = lbAdd [_ctrl, (_displayName + " $" + str (_price))];
	lbSetPicture [_ctrl,_ind, _img];
	ammo_list pushBackUnique [_x,_price];
	}foreach _list;
	};
};


//called from UI
Atlas_fnc_buyAmmo = {
params [["_index",0],["_list",ammo_list],["_buyer",player],["_user",player]];
if !(count _list <= 0) then{
_magdata = (_list select _index);
_magclass = _magdata select 0;
_price = _magdata select 1;
	if !([_price] call HG_fnc_hasEnoughMoney) exitwith {
	systemChat (localize ("str_system_nofund"));
	};
			if (_buyer canAdd [_magclass, 1]) then {
	_user addMagazines [_magclass, 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_buyer,false];
	{systemChat (localize ("str_system_rearm_successful"))} remoteexeccall ["call",_buyer,false];
	}
	else {
	{systemChat (localize ("str_system_rearm_nospace"))} remoteexeccall ["call",_buyer,false];
	};
	};
};


//invoke buy ammo UI
//[] spawn Atlas_fnc_UI_buyAmmo;

Atlas_fnc_UI_buyAmmo = {
createDialog "Atlas_AmmoUI";
waitUntil {!isNull (findDisplay 30003)};
_num = 1500;
_ctrl = (findDisplay 30003) displayCtrl 1500;
[[(currentWeapon player)] call Atlas_fnc_magArray,_num] call Atlas_fnc_fill_AmmoList;
_ctrl lbSetCurSel 0;
};
