Atlas_fnc_PatrolHeliSpawn = {

params["_pos","_crewclass","_chopper","_lz","_radius",["_side",east],["_alt",75]];
 _crewteam = createGroup _side;
 _crewd = _crewteam createUnit [_crewclass,_pos,[],2,"NONE"]; 
 _crewg = _crewteam createUnit [_crewclass,_pos,[],2,"NONE"];
_chop = createVehicle [_chopper, [_pos select 0, _pos select 1, 100], [], 0, "FLY"];
_crewd moveInany _chop;
_crewg moveInany  _chop;
[_chop,_lz, _radius,0,'normal','combat',_alt,true] spawn Zen_OrderAircraftPatrol;
};



Atlas_fnc_PatrolVehicleSpawn = {
_center = _this select 0;
_classes = _this select 1;
_typeofman = _this select 2;
_blacklist = _this select 3;
_side = _this select 4;

_pos = [_center,[50,400],_blacklist,1,[2,0]] call Zen_FindGroundPosition;
 _patrolteam = createGroup _side;
_final = _classes call bis_fnc_selectrandom;
_eveh = _final createvehicle _pos;
_eveh allowdamage false;
_crewd = _patrolteam createUnit [_typeofman,_pos,[],2,"NONE"]; 
_crewg = _patrolteam createUnit [_typeofman,_pos,[],2,"NONE"];
_crewg moveInGunner _eveh; 
_crewd moveInDriver _eveh;
[_eveh,_center,400,0,'limited','aware',false,true] spawn Zen_OrderVehiclePatrol;	
_eveh spawn {
sleep 3;
_this allowdamage true;
};
(_eveh)
};

Atlas_fnc_PatrolSoldierSpawn = {

params["_center","_classes","_blacklist",["_range",[50,250]],["_loctype",1]];
_pos = [_center,_range,_blacklist] call Zen_FindGroundPosition;
_patrolteam =  [_pos,_classes] call Zen_SpawnGroup;
switch (_loctype) do
{
	default {[_patrolteam,_pos,_range,[0,360],'limited','safe'] spawn Zen_OrderInfantryPatrol;};
	case (1): {[_patrolteam,_pos,_range,[0,360],'limited','safe'] spawn Zen_OrderInfantryPatrol;};
	case (2): {[_patrolteam,_center,_range,[0,360],'limited','safe'] spawn Zen_OrderInfantryPatrol;};
};
_patrolteam;
};

Atlas_fnc_FastRopeEnemies = {
_pos = _this select 0; //where to start
_crewclass = _this select 1; //what class is the pilot
_chopper = _this select 2; //what kind of heli
_lz = _this select 3;//where to drop the soldiers
_grpclass = _this select 4; //what class is the group?
_stayorgo = _this select 5;//boolean, does the chopper stay to S&D or fuck off?
_side = _this select 6;

_crewteam = createGroup _side;
_crewd = _crewteam createUnit [_crewclass,_pos,[],2,"NONE"]; 
_crewg = _crewteam createUnit [_crewclass,_pos,[],2,"NONE"];
_chop = createVehicle [_chopper, [_pos select 0, _pos select 1, 100], [], 0, "FLY"];
_crewd moveInany _chop;
_crewg moveInany  _chop;
_grp = [_pos, _side, _grpclass] call BIS_fnc_spawnGroup;
{_x moveInAny _chop} foreach units _grp;
_wp0 =_crewteam addWaypoint [[_lz select 0,_lz select 1,100],2];
[_crewteam, 0] setWaypointSpeed "FULL";
waitUntil {(_chop distance2D _lz)<= 100};
[_chop,_grp] spawn Zen_OrderFastRope;
waitUntil {{_x in _chop} count units _grp <= 0};
[_grp,_lz,[50,100],[0,360],'normal','aware'] spawn Zen_OrderInfantryPatrol;
if (_stayorgo) then {
[_chop,_lz, 500,0,'normal','combat',75,true] spawn Zen_OrderAircraftPatrol;
} else {
[_chop,[0,0,0],'full',100,true,false] spawn Zen_OrderVehicleMove;
};
};


Atlas_fnc_LandSupport = {
_pos = _this select 0; //where to start
_crewclass = _this select 1; //what class is the crew
_veh = _this select 2; //what kind of vehicle
_lz = _this select 3;//where to 
_pat = _this select 4;//Patrol when arrived?
_speed = _this select 5;//speed?
_side = _this select 6;//which side?
_crewteam = createGroup _side;
_crewc = _crewteam createUnit [_crewclass,_pos,[],2,"NONE"];
_crewd = _crewteam createUnit [_crewclass,_pos,[],2,"NONE"]; 
_crewg = _crewteam createUnit [_crewclass,_pos,[],2,"NONE"];
_veh = createVehicle [_veh, [_pos select 0, _pos select 1, 0], [], 0, "FLY"];

_crewd moveIndriver _veh;
_crewg moveIngunner  _veh;
_crewc moveInCommander  _veh;
[_veh,_lz,_speed,0] spawn Zen_OrderVehicleMove;


if (vehicle _crewc != vehicle _crewd) then {
deleteVehicle _crewc;
};
if (_pat) then {
[_veh,_lz] spawn Atlas_fnc_LandSupport_1;
};
(_veh)
};
Atlas_fnc_LandSupport_1 = {
_veh = _this select 0;
_lz = _this select 1;
waitUntil {(_veh distance _lz)<= 50};
[_veh,_lz,100,0,'limited','combat',false] spawn Zen_OrderVehiclePatrol;	
};
Atlas_fnc_LandSupportSoldiers = {
_pos = _this select 0;
_classes = _this select 1;
_moveto = _this select 2;
_pat = _this select 3;
_patrolteam =  [_pos,_classes] call Zen_SpawnGroup;
if (_pat) then {
[_patrolteam,_moveto,[50,100],[0,360],'full','safe'] spawn Zen_OrderInfantryPatrol;
} else {
[_patrolteam,_moveto,'full','aware','yellow'] spawn Zen_OrderInfantryMove;
};
(_patrolteam)
};

Atlas_fnc_Artilleryfire_single ={
params ["_art","_pos","_ammo","_num","_inf","_offset"];
_finalpos = [];
if (_ammo == "") then {
_ammo =  (currentmagazine (_art select 0));
};
if (_offset) then {_finalpos = [(_pos select 0)+(round random [-50, 20, 50]),(_pos select 1)+(round random [-50, 20, 50]),(_pos select 2)]};
{_x commandArtilleryFire [_finalpos, _ammo, _num]} foreach _art;
if (_inf) then {{_x setVehicleAmmo 1}foreach _art};
};
// [[mor_1,mor_2],getMarkerPos "camp_2","",3,true,true] call Atlas_fnc_Artilleryfire_single;


Atlas_fnc_Artilleryfire_multi = 
{
params ["_art","_pos",["_ammo",(currentmagazine (_art select 0))],"_num",["_sleep",60],"_flag","_inf","_offset",["_offsetrange",[-50, 20, 50]]];
_finalpos = [];
// if (_ammo == "") then {
// _ammo =  (currentmagazine (_art select 0));
// };
while {(_flag)} do 
	{
if (_offset) then {_finalpos = [(_pos select 0)+(round random _offsetrange),(_pos select 1)+(round random _offsetrange),(_pos select 2)]};
{_x commandArtilleryFire [_finalpos, _ammo, _num]} foreach _art;
if (_inf) then {{_x setVehicleAmmo 1}foreach _art};
sleep _sleep;
	};
};

Atlas_fnc_Infinite_ammo_area_static = 
{
params ["_area","_sleep","_flag","_scan"];
_turrets = vehicles inAreaArray _area select {_x isKindOf "StaticWeapon"};
while {(_flag)} do {
if (_scan) then {_turrets = vehicles inAreaArray _area select {_x isKindOf "StaticWeapon"};};
if (count _turrets >= 1) then {
{_x setVehicleAmmo 1}foreach _turrets;
sleep _sleep;
		};
	};
};
Atlas_fnc_TrackingMarker = {
_unit = _this select 0; 
_color = _this select 1;
_type = _this select 2;
_text = _this select 3;
_slp = _this select 4;
_pos = getpos _unit;
_markername = "Markername_" + (str _pos);
_marker = createMarker [_markername, position _unit]; 
//_marker setmarkertype "mil_dot";
if (_color == "") then {
_marker setmarkercolor "ColorRed";
} else {
_marker setmarkercolor _color;
};
if (_type == "") then {
_marker setmarkertype "mil_dot";
} else {
_marker setmarkertype _type;
};
_marker setmarkertext _text;
while {alive _unit} do 
	{
	_marker setmarkerpos getpos _unit;
	sleep _slp;
	};
	deletemarker _marker;
};

Atlas_fnc_StayOnPos= {
_thing = _this select 0;
_pos = getpos _thing;
_dir = getdir _thing;
_slp = _this select 1;
_normalVec = surfaceNormal _pos;
while {true} do
{
_thing setpos _pos;
_thing setdir _dir;
//[_thing,_normalVec] remoteExec ["setVectorUp",_thing];
sleep _slp;
};
};

Atlas_fnc_getConfig =
{
    params["_item"];

    switch true do
    {
		default {};
        case(isClass(configFile >> "CfgMagazines" >> _item)): {"CfgMagazines"};
        case(isClass(configFile >> "CfgWeapons" >> _item)): {"CfgWeapons"};
        case(isClass(configFile >> "CfgVehicles" >> _item)): {"CfgVehicles"};
        case(isClass(configFile >> "CfgGlasses" >> _item)): {"CfgGlasses"};
    };
};

Atlas_fnc_getOffVeh = 
{
params["_unit","_type"];
unassignVehicle _unit;
    switch _type do
    {	
		default {_unit action ["Eject", vehicle _unit];};
        case(2): {dogetout _unit};
        case(3): {moveout _unit};
    };
};

Atlas_fnc_AIsniper = 
{
//use spawn
params["_sniper",["_flag",true],["_listOfTargets",allPlayers],["_stance","UP"],["_range",1000],["_infammo",true],['_onlyAtKnown',false],["_disableaimerror",false],["_sleep",15]];
	_target = objnull;
	_list = [];
	(group _sniper) setBehaviour "AWARE";
	_sniper setUnitPos _stance;
	//_sniper setSkill 1;
	if (_disableaimerror) then 
	{
	_sniper disableAI 'AIMINGERROR';
	};	
	if (_infammo) then {_sniper spawn{
	while {alive _this} do {
		_this setVehicleAmmo 1;
		sleep 1;
			};
		};
	};
	while {_flag} do {
		if ((_onlyAtKnown) && (count _listOfTargets) >= 1) then 
	{
		_list = _listOfTargets select {alive _x && (_sniper distance _x <= _range) && ((_sniper knowsAbout _x) > 0)};
		_target = _list call bis_fnc_selectrandom;
	};
	if (!(_onlyAtKnown)&& (count _listOfTargets) >= 1) then 
	{
		_list = _listOfTargets select {(alive _x) && ((_sniper distance _x) <= _range)};
		_target = _list call bis_fnc_selectrandom;
	};
	// if ((_onlyAtKnown) && (count _listOfTargets) < 1) then 
	// {
		// _list = allPlayers select {(alive _x && (_sniper distance _x <= _range) && ((_sniper knowsAbout _x) > 0))};
		// _target = _list call bis_fnc_selectrandom;
	// };
	// if (!(_onlyAtKnown)&& (count _listOfTargets) < 1) then 
	// {	
		// _list = allPlayers select {(alive _x) && ((_sniper distance _x) <= _range)};
		// _target = _list call bis_fnc_selectrandom;
	// };
	if ((count _list) >= 1) then{
	_sniper reveal _target;
	_sniper doWatch _target;
	_sniper doTarget _target;
	_sniper doFire _target;
	};

	sleep _sleep;
	};
};