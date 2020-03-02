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
_mags
};

Atlas_fnc_magPrice = {
params ["_mag"];
disableserialization;
private _ammo = getText (configFile>> "CfgMagazines" >> _mag >> "ammo");
private _type = getText (configfile >> "CfgAmmo" >> _ammo >> "simulation");
private _indirectHit = getNumber(configFile >> "CfgAmmo" >> _ammo >> "indirectHit");
private _indirectHitRange = getNumber(configFile >> "CfgAmmo" >> _ammo >> "indirectHitRange");
private _cal = getNumber (configFile>> "CfgAmmo" >> _ammo >> "caliber");
private _hit = getNumber (configFile>> "CfgAmmo" >> _ammo >> "hit");
private _cnt = getNumber (configFile>> "CfgMagazines" >> _mag >> "count");

if (_hit < 1) then {_hit = 1};
if (_indirectHit < 1) then {_indirectHit = 1};
if (_indirectHitRange < 1) then {_indirectHitRange = 1};
if (_cnt < 1) then {_cnt = 1};
_price = 0;

//"shotBullet";"shotSmokeX";"shotShell";"shotIlluminating";
switch (_type) do {
default {_price = round ((_hit)*(_cnt)*(ceil _cal)*0.25);if (_price <= 0) then {_price == 50;};};
case "shotBullet": {_price = round ((_hit)*(_cnt)*(ceil _cal)*0.25);if (_price <= 0) then {_price == 50;};};
case "shotShell": {_price = round (3*(_cnt)*_indirectHit*_indirectHitRange);if (_price <= 0) then {_price == 50;};};
case "shotSmokeX": {_price = 100*(_cnt);if (_price <= 0) then {_price == 100;};};
case "shotIlluminating": {_price = 50*(_cnt);if (_price <= 0) then {_price == 50;};};
case "shotMissile": {_price = ceil (_hit* ((_indirectHit*_indirectHitRange))*(_cnt));if (_price <= 0) then {_price == 20000;};};
case "shotRocket": {_price = ceil ((_hit* ((_indirectHit*_indirectHitRange)/2)*(_cnt))/2);if (_price <= 0) then {_price == 10000;};};
};
_price
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
	systemChat (localize ("STR_AmmoUI_noMoney"));
	};
			if (_buyer canAdd [_magclass, 1]) then {
	_user addMagazines [_magclass, 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_buyer,false];
	{systemChat (localize ("STR_AmmoUI_success"))} remoteexeccall ["call",_buyer,false];
	}
	else {
	{systemChat (localize ("STR_AmmoUI_noSpace"))} remoteexeccall ["call",_buyer,false];
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
