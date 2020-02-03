Atlas_fnc_tiers = {
_unit = _this select 0;
_tier = _this select 1;
{_unit reveal [_x, 4];}foreach allplayers;
switch (_tier) do {
default {_unit execVM "tiers\tier1.sqf"};
case 1: {_unit execVM "tiers\tier1.sqf"};
case 2: {_unit execVM "tiers\tier2.sqf"};
case 3: {_unit execVM "tiers\tier3.sqf"};
case 4: {_unit execVM "tiers\tier4.sqf"};
case 5: {_unit execVM "tiers\tier5.sqf"};
case 6: {_unit execVM "tiers\tier6.sqf"};
case 7: {_unit execVM "tiers\tier7.sqf"};
};
//[_unit] call HG_fnc_aiUnitSetup;
};

Atlas_fnc_fill_BuildList = {
_list = _this select 0;
_ctrl = _this select 1;
{
if ((_x select 1) == "") then{
_config = [(_x select 0)] call Atlas_fnc_getConfig;
_displayName = getText(configFile >> _config >> (_x select 0) >> "displayName");
_displayName = _displayName + " (" + (format [(localize "STR_UI_TEXT_11"),(_x select 2)]) + ")";
_ctrl lbadd  _displayName;
} else {
_displayName = (_x select 1) + " (" + (format [(localize "STR_UI_TEXT_11"),(_x select 2)]) + ")";
_ctrl lbadd  _displayName;
};
} foreach _list;
};


Atlas_fnc_QuickRearm = {

_caller = _this select 0;
_mode = _this select 1;
_price = _this select 2;
	if !([_price] call HG_fnc_hasEnoughMoney) exitwith {
	
	(localize ("str_system_nofund")) remoteexeccall ["hint",_caller,false];
	};
switch (_mode) do
{
//main
default 			
	{
		_gun = primaryWeapon _caller;

		if (_gun != "" && ((count (getArray (configFile>> "CfgWeapons" >> _gun >> "magazines")))>0)) then
		{
		if (	_caller canAdd [getArray (configFile>> "CfgWeapons" >> _gun >> "magazines") select 0, 1]) then {
	//_caller playActionNow "PutDown";
	_caller addMagazines [getArray (configFile>> "CfgWeapons" >> _gun >> "magazines") select 0, 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_caller,false];
	(localize ("str_system_rearm_successful")) remoteexeccall ["hint",_caller,false];
	}
	else {
			(localize ("str_system_rearm_nospace")) remoteexeccall ["hint",_caller,false];
	}
	}
	else {
		(localize ("str_system_rearm_error")) remoteexeccall ["hint",_caller,false];
	};

	
	};
//pistol
case 1: 			
	{	
	_gun = handgunWeapon _caller;
		if (_gun != "" && ((count (getArray (configFile>> "CfgWeapons" >> _gun >> "magazines")))>0)) then
		{
		if (	_caller canAdd [getArray (configFile>> "CfgWeapons" >> _gun >> "magazines") select 0, 1]) then {
	_caller addMagazines [getArray (configFile>> "CfgWeapons" >> _gun >> "magazines") select 0, 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_caller,false];
	(localize ("str_system_rearm_successful")) remoteexeccall ["hint",_caller,false];
	}
	else {
			(localize ("str_system_rearm_nospace")) remoteexeccall ["hint",_caller,false];
	}
	}
	else {
		(localize ("str_system_rearm_error")) remoteexeccall ["hint",_caller,false];
	};
	};
//launcher
case 2: 		
	{
		_gun = secondaryweapon _caller;
		if (_gun != "" && ((count (getArray (configFile>> "CfgWeapons" >> _gun >> "magazines")))>0)) then
		{
		if (	_caller canAdd [getArray (configFile>> "CfgWeapons" >> _gun >> "magazines") select 0, 1]) then {
	_caller addMagazines [getArray (configFile>> "CfgWeapons" >> _gun >> "magazines") select 0, 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_caller,false];
	(localize ("str_system_rearm_successful")) remoteexeccall ["hint",_caller,false];
	}
	else {
			(localize ("str_system_rearm_nospace")) remoteexeccall ["hint",_caller,false];
	}
	}
	else {
		(localize ("str_system_rearm_error")) remoteexeccall ["hint",_caller,false];
	};
		
	};
	//GL grenade
case 3: 		
	{
			if (	_caller canAdd ["1Rnd_HE_Grenade_shell", 1]) then
			{
	_caller addMagazines ["1Rnd_HE_Grenade_shell", 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_caller,false];
	(localize ("str_system_rearm_successful")) remoteexeccall ["hint",_caller,false];
	}
	else {
			(localize ("str_system_rearm_nospace")) remoteexeccall ["hint",_caller,false];
			};
		
	};
case 4: 		
	{
			if (	_caller canAdd ["HandGrenade", 1]) then
			{
	_caller addMagazines ["HandGrenade", 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_caller,false];
	(localize ("str_system_rearm_successful")) remoteexeccall ["hint",_caller,false];
	}
	else {
			(localize ("str_system_rearm_nospace")) remoteexeccall ["hint",_caller,false];
			};
		
	};
case 5: 		
	{
			if (	_caller canAdd ["SmokeShell", 1]) then
			{
	_caller addMagazines ["SmokeShell", 1];
	[_price,1] remoteexeccall ["hg_fnc_addorsubcash",_caller,false];
	(localize ("str_system_rearm_successful")) remoteexeccall ["hint",_caller,false];
	}
	else {
			(localize ("str_system_rearm_nospace")) remoteexeccall ["hint",_caller,false];
			};
	};

}
};


Atlas_fnc_addorsubsupport  = {
_num = _this select 0;
_sup = _this select 1;

switch (_sup) do {
default {
_cnt = master getvariable ['art',0];
master setvariable ['art',_cnt + _num,true];
};
case 2: {
_cnt = master getvariable ['heli',0];
master setvariable ['heli',_cnt + _num,true];
};
case 3: {
_cnt = master getvariable ['bomb',0];
master setvariable ['bomb',_cnt + _num,true];
		};
	};

};

Atlas_fnc_buysupport = {
_caller = _this select 0;
_cost = _this select 1;
_type = _this select 2;

if !([_cost] call HG_fnc_hasEnoughMoney) exitwith {

(localize 'str_system_nofund') remoteexec ['hintsilent',_caller,false];
};
[_cost,1] remoteexeccall ['hg_fnc_addorsubcash',_caller,false];
(localize 'str_system_addsupport_success') remoteexec ['hintsilent',_caller,false];
[1,_type] call Atlas_fnc_addorsubsupport;

};
Atlas_fnc_artillerysupport = {
_this call {
waituntil {!(alive _this)};
[-1,1] remoteexeccall ['Atlas_fnc_addorsubsupport',2,false];
};
};
Atlas_fnc_CAS = {
_this call {
	
	[-1,3] remoteexeccall ['Atlas_fnc_addorsubsupport',2,false];
	
	
};
};
Atlas_fnc_helisupport = {
//_this spawn { waituntil {!(alive _this)};};
params ["_chopper","_gunner"];

_chopper call {
	[-1,2] remoteexeccall ['Atlas_fnc_addorsubsupport',2,false];
};
[[_gunner],{(_this select 0) spawn Atlas_fnc_RemoteControl_Action}] remoteExec ['call',0,false];

};
Atlas_fnc_RemoteControl_Action = 
{
params["_dummy"];
_id = player addaction ['<t color="#ebba34">'+(localize "str_system_controlgunner")+'</t>',{
[player,(_this select 3 select 0)] spawn Atlas_fnc_RemoteControl;
},[_dummy],400,true,false,"",''];
[_dummy,_id] spawn {
params["_dummy","_id"];
waitUntil {!alive _dummy};
player removeAction _id
		};
};

Atlas_fnc_RemoteControl = 
{
params["_player","_dummy"];
titleCut ["", "BLACK FADED", 999];
sleep 1;
_player remoteControl _dummy;
_dummy switchCamera "Internal";
sleep 1;
titleCut ["", "BLACK IN", 3];
};

Atlas_fnc_randomchest_draw = {
_box  = _this select 0;
_caller  = _this select 1;
_price = CHEST_PRICE;
_name = name _caller;
_pos = getpos _box;
_taskname = _box getvariable ['myname',"lootbox"];
	if !([_price] call HG_fnc_hasEnoughMoney) exitwith {
	
	(localize ("str_system_nofund")) remoteexeccall ["hint",_caller,false];
	};
_result = selectrandom [3,3,4,4,5,6];
[CHEST_PRICE,1] call hg_fnc_addorsubcash;
deletevehicle _box;   
switch (_result) do {
default {
_lowest = CHEST_PRICE;
if (CHEST_PRICE < 1) then {
_lowest = 1;

};
_cash = round random [_lowest + 2000, _lowest + 3000 , CHEST_PRICE + 5000];
[[_name,_cash], {systemchat format [(localize "str_system_randomchest_3"),_this select 0, _this select 1]}] remoteExec ["call", 0,false];
[[_cash, 0],hg_fnc_addorsubcash] remoteexec ['call',_caller,false];
};
case 3: {
_lowest = CHEST_PRICE;
if (CHEST_PRICE < 1) then {
_lowest = 1;

};
_cash = round random [_lowest, _lowest + 1000 , CHEST_PRICE + 5000];
[[_name,_cash], {systemchat format [(localize "str_system_randomchest_3"),_this select 0, _this select 1]}] remoteExec ["call", 0,false];
[[_cash, 0],hg_fnc_addorsubcash] remoteexec ['call',_caller,false];
};
case 4: {
//artillery
[1,1] call Atlas_fnc_addorsubsupport;
[] remoteexeccall ['BIS_fnc_addSupportLink',0,false];
[[_name], {systemchat format [(localize "str_system_randomchest_4"),_this select 0, _this select 1]}] remoteExec ["call", 0,false];
};
case 5: {
//heli
[1,2] call Atlas_fnc_addorsubsupport;
[] remoteexeccall ['BIS_fnc_addSupportLink',0,false];
[[_name], {systemchat format [(localize "str_system_randomchest_5"),_this select 0, _this select 1]}] remoteExec ["call", 0,false];
};
case 6: {
//cas
[1,3] call Atlas_fnc_addorsubsupport;
[] remoteexeccall ['BIS_fnc_addSupportLink',0,false];
[[_name], {systemchat format [(localize "str_system_randomchest_6"),_this select 0, _this select 1]}] remoteExec ["call", 0,false];

};
};

[_taskname, "succeeded", true] call BIS_fnc_taskSetState;
sleep 2;
[_taskname,true] call BIS_fnc_deleteTask;
};
//spawn
Atlas_fnc_randomchest = {
_sleepary  = _this select 0;
_center  = _this select 1;
_despawn  = _this select 2;
_loop = _this select 3;
_backupmarker = _this select 4;
_range = _this select 5;
if (_backupmarker == "") then 
{
_backupmarker = "respawn_west";
};
_sleep = round random _sleepary;
sleep _sleep;
_pos = [_center,_range] call Zen_FindGroundPosition;
_box = "CargoNet_01_box_F" createVehicle  [_pos select 0,_pos select 1,55];  
_box setVectorUp [0, 0, 0];  
_box setDir 0;   
_box allowdamage false;  
_parachute = "B_Parachute_02_F" createVehicle [0,0,60];   
_parachute setPos [_pos select 0, _pos select 1, 100];  
_parachute setDir 0;   
_box attachto [_parachute, [0, 0, 0] ];  
_smoke = "SmokeShellBlue" createVehicle [0,0,5];   
_smoke attachTo [_box, [0, 0, 1] ];   
_taskname = "lootbox" + str _pos;
_box setvariable ['myname',_taskname,true];
[true ,_taskname,[format [(localize "STR_TASK_lootbox"),CHEST_PRICE],(localize "STR_TASK_lootbox_T"),""],_box,"created",1000,true,"container",false] call BIS_fnc_taskCreate;  
 waitUntil {(getPos _box select 2) < 2};  
 deletevehicle _parachute; 
if !(_box inarea "dead_zone") then {
_box setpos ([_backupmarker,[10,100]] call Zen_FindGroundPosition);
};
 [_box,[format [(localize "str_system_randomchest"),CHEST_PRICE],{call Atlas_fnc_randomchest_draw},"",500,true,false,"",'(alive player) && !dialog && player distance _target < 3']] remoteexec ["addaction",0,true];  
sleep _despawn;  
deletevehicle _box;  
_task = _taskname call BIS_fnc_taskState;
if (_task != "SUCCEEDED") then {
[_taskname, "CANCELED", true] call BIS_fnc_taskSetState;
};
sleep 2;
[_taskname,true] call BIS_fnc_deleteTask;  
if (_loop) exitwith {
[_sleepary,_center,_despawn,_loop,_backupmarker,_range] spawn Atlas_fnc_randomchest;

};

};

Atlas_fnc_sideops = {
_result = selectrandom [1,2,3,4,5];

};
Atlas_fnc_build = {
_index = _this select 0;
_repeat = _this select 1;
_bl = [];
_built = objnull;
switch (build_type) do {
default {_bl = BUILD_LIST_1};
case 1: {_bl = BUILD_LIST_1};
case 2: {_bl = BUILD_LIST_2};
case 3: {_bl = BUILD_LIST_3};
case 4: {_bl = BUILD_LIST_4};

};
_obj = _bl select _index;
_class = _obj select 0;
_cost = _obj select 2;
_code = _obj select 3;
_addaction = true;
_dmg =  (_obj select 5);
if !(_obj select 4) then {
_addaction = false;
};
if !([_cost] call HG_fnc_hasEnoughMoney) exitwith {
	hint (localize ("str_system_nofund"));

};
switch (build_type) do {
default {_built = createVehicle [_class, current_pos, [], 0, "CAN_COLLIDE"];[_built, false] remoteExec ["allowdamage", 0];_built setdir build_dir;};
case 3: {_built = createVehicle [_class, current_pos, [], 0, ""];_built setdir build_dir;};
case 4: {_built = createMine [_class, current_pos, [], 0];(side player) revealmine _built;_built setdir (build_dir+180);};
};

[_cost, 1] call hg_fnc_addorsubcash;
_built call (_code);
if !(_repeat) then {building = false};
[[_built,_addaction], Atlas_fnc_build_addaction] remoteExec ["call", 0, true];
};

Atlas_fnc_build_drop = {
_object = _this select 0;
_caller = _this select 1;
_action = _this select 2;

detach _object;

{
	[_object, _x] remoteExec ['enableCollisionWith', 0];
} forEach playableUnits;

[_caller] remoteExec ["removeAllActions", 0];

_object setVehiclePosition [_object, [], 0, 'CAN_COLLIDE'],

[
	_object,
	[
		'<t color="#ff0000">'+(localize "str_system_build_remove")+'</t>',
		'[_this select 0, _this select 1] call Atlas_fnc_build_sell;',
		'', 1, false, false, 'true', 'true', 5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_moveup")+'</t>',
		'[_this select 0, _this select 3, _this select 1] call Atlas_fnc_build_move;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_movedown")+'</t>',
		'[_this select 0, _this select 3, _this select 1] call Atlas_fnc_build_move;',
		[0,0,-0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_pickup")+'</t>',
		'[_this select 0, _this select 1] call Atlas_fnc_build_pickup;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_resetrot")+'</t>',
		'[_this select 0, _this select 1] call Atlas_fnc_build_reset;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

};

Atlas_fnc_build_move = {
_object = _this select 0;
_movePos = _this select 1;
_caller = _this select 2;

_callerPos = getPosATL (_caller);
_objectPos = getPosATL (_object);
[_object, false] remoteExec ["enableSimulation", 0];
[_object, [
	(_objectPos select 0) + (_movePos select 0),
	(_objectPos select 1) + (_movePos select 1),
	(_objectPos select 2) + (_movePos select 2)
]] remoteExec ["setPosATL", 0];
[_object, true] remoteExec ["enableSimulation", 0];
sleep 0.1;
_newCallerPos = getPosATL (_caller);
if ((_newCallerPos select 2) > (_callerPos select 2)) then {
	[_object, _objectPos] remoteExec ["setPosATL", 0];
};
};

Atlas_fnc_build_pickup = {
_object = _this select 0;
_caller = _this select 1;
_pos = _this select 2;

_playerArr = [_caller];
_allPlayers = playableUnits - _playerArr;
_closestPlayerDist = 9999;

{
	_playerDistance = _object distance2d _x;
	if ((_playerDistance < _closestPlayerDist)) then {
	  _closestPlayerDist = _playerDistance;
	};
} forEach _allPlayers;

if (_closestPlayerDist > 5) then {

	if (isNil "_pos") then {
		[_object, _caller] call BIS_fnc_attachToRelative ;
	} else {
		_object attachTo [_caller, _pos, "Pelvis"];
		_playerDir = _caller getRelDir _object;
		_dir = _this select 3;
		_holdDir = _playerDir + _dir;
		_object setdir _holdDir;
	};

	{
		[_object, _x] remoteExec ["disableCollisionWith", 0];
	} forEach playableUnits;

	[_object] remoteExec ["removeAllActions", 0];

	_caller addAction [
		"<t color='#00ffff'>"+(localize "str_system_build_drop_1")+"</t>",
		'[_this select 3, _this select 1, _this select 2] call Atlas_fnc_build_drop;',
		_object
	];

	_caller addAction [
		"<t color='#00ffff'>"+(localize "str_system_build_drop_2")+"</t>",
		'[_this select 3, _this select 1, _this select 2] call Atlas_fnc_build_place;',
		_object
	];

} else {

	hint 'players too close';

};

};
Atlas_fnc_build_place = {
_object = _this select 0;
_caller = _this select 1;
_action = _this select 2;

_objectPos = getPosATL (_object);
detach _object;
[_object, false] remoteExec ["enableSimulation", 0];
[_object, _objectPos] remoteExec ["setPosATL", 0];
[_object, true] remoteExec ["enableSimulation", 0];

{
	[_object, _x] remoteExec ['enableCollisionWith', 0];
} forEach playableUnits;

[_caller] remoteExec ["removeAllActions", 0];

_object setVehiclePosition [_object, [], 0, 'CAN_COLLIDE'],

[
	_object,
	[
		'<t color="#ff0000">'+(localize "str_system_build_remove")+'</t>',
		'[_this select 0, _this select 1] call Atlas_fnc_build_sell;',
		'', 1, false, false, 'true', 'true', 5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_moveup")+'</t>',
		'[_this select 0, _this select 3, _this select 1] call Atlas_fnc_build_move;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_movedown")+'</t>',
		'[_this select 0, _this select 3, _this select 1] call Atlas_fnc_build_move;',
		[0,0,-0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_pickup")+'</t>',
		'[_this select 0, _this select 1] call Atlas_fnc_build_pickup;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		'<t color="#00ff00">'+(localize "str_system_build_resetrot")+'</t>',
		'[_this select 0, _this select 1] call Atlas_fnc_build_reset;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

};

Atlas_fnc_build_addaction = {
_object = _this select 0;
_add = _this select 1;

	_object addAction	
	[
		'<t color="#ff0000">'+(localize "str_system_build_remove")+'</t>',
		'[_this select 0, _this select 1] call Atlas_fnc_build_sell;',
		'', 1, false, false, 'true', 'true', 5
	];
if (_add) then {
	_object addAction
	[
		'<t color="#00ff00">'+(localize "str_system_build_moveup")+'</t>',
		'[_this select 0, _this select 3, _this select 1] call Atlas_fnc_build_move;',
		[0,0,0.5],2,false,false,'true','true',5
	];


	_object addAction
	[
		'<t color="#00ff00">'+(localize "str_system_build_movedown")+'</t>',
		'[_this select 0, _this select 3, _this select 1] call Atlas_fnc_build_move;',
		[0,0,-0.5],2,false,false,'true','true',5
	];
	_object addAction ['<t color="#00ff00">'+(localize "str_system_build_pickup")+'</t>', "
    thisHeldVehic = _this select 3 select 0;
    _player = _this select 1;
    _playerArr = [_player];
    _allPlayers = playableUnits - _playerArr;
    _closestPlayerDist = 9999;
    {
      _playerDistance = thisHeldVehic distance2d _x;
      if ((_playerDistance < _closestPlayerDist)) then {
        _closestPlayerDist = _playerDistance;
      };
    } forEach _allPlayers;
    if (_closestPlayerDist > 5) then {
      thisHeldVehic attachTo [_player, [0,3,0.02], 'Pelvis'];
      {[thisHeldVehic, _x] remoteExec ['disableCollisionWith', 0];} forEach playableUnits;
      _player addAction ['<t color=''#00ffff''>' + (localize ""str_system_build_drop_0""), '
          _thisPlacedVehic = _this select 3 select 0;
          _player = _this select 1;
          _actionId = _this select 2;
          detach _thisPlacedVehic;
          {[_thisPlacedVehic, _x] remoteExec [''enableCollisionWith'', 0];} forEach playableUnits;
          _player removeAction _actionId;
          _thisPlacedVehic setVehiclePosition [_thisPlacedVehic , [], 0, ''CAN_COLLIDE''];
      ', [thisHeldVehic]];
    } else {
      ['<t color=''#ff0000''>Warning: Other players too close to pick this up</t>', 0, 0.1, 2, 1] remoteExec ['BIS_fnc_dynamicText', _player];
    };
", [_object],2,false,false,"true","true",5];

};

};
Atlas_fnc_build_reset = {
_object = _this select 0;
_caller = _this select 1;

_objDir = getdir _object;
[_object, _objDir] remoteExec ["setDir", 0];


};

Atlas_fnc_build_sell = {
_object = _this select 0;
_player = _this select 1;

_cost = (_object getVariable ["buildcost", 0]);
if !(alive _object) then {
_cost = round (_cost/5);
};
deleteVehicle (_object);
[_cost,0] remoteexeccall ['hg_fnc_addorsubcash',_player,false];
};

Atlas_fnc_build_ammobox = {

_this setvariable ["buildcost",50,true];
[_this,[format [(localize "str_system_rearm_1"),REARM_PRICE_1],{[player,0,REARM_PRICE_1] call Atlas_fnc_QuickRearm},"",1000,true,false,"",'(alive player) && !dialog && player distance _target < 3']] remoteexec ["addaction",0,true];
[_this,[format [(localize "str_system_rearm_2"),REARM_PRICE_2],{[player,1,REARM_PRICE_2] call Atlas_fnc_QuickRearm},"",999,true,false,"",'(alive player) && !dialog && player distance _target < 3']] remoteexec ["addaction",0,true];
[_this,[format [(localize "str_system_rearm_3"),REARM_PRICE_3],{[player,2,REARM_PRICE_3] call Atlas_fnc_QuickRearm},"",998,true,false,"",'(alive player) && !dialog && player distance _target < 3']] remoteexec ["addaction",0,true];
[_this,[format [(localize "str_system_rearm_4"),REARM_PRICE_4],{[player,3,REARM_PRICE_4] call Atlas_fnc_QuickRearm},"",997,true,false,"",'(alive player) && !dialog && player distance _target < 3']] remoteexec ["addaction",0,true];
[_this,[format [(localize "str_system_rearm_5"),REARM_PRICE_5],{[player,4,REARM_PRICE_5] call Atlas_fnc_QuickRearm},"",997,true,false,"",'(alive player) && !dialog && player distance _target < 3']] remoteexec ["addaction",0,true];
[_this,[format [(localize "str_system_rearm_6"),REARM_PRICE_6],{[player,5,REARM_PRICE_6] call Atlas_fnc_QuickRearm},"",997,true,false,"",'(alive player) && !dialog && player distance _target < 3']] remoteexec ["addaction",0,true];
// sleep 600;
// deletevehicle _this;

};
Atlas_fnc_build_ammobox_1 = {

_this setvariable ["buildcost",50,true];
[_this,["<img image='HG\UI\Icons\money.paa' size='1.5'/>"+(localize "str_system_openshop"),{[] execVM "HRD_UI\ui_shoplist.sqf"},"",1000,false,false,"",'(alive player) && !dialog && player distance _target < 6']] remoteexec ["addaction",0,true];
// sleep 600;
// deletevehicle _this;

};
Atlas_fnc_build_firstaid = {

_this setvariable ["buildcost",50,true];
// sleep 600;
// deletevehicle _this;
};
Atlas_fnc_build_drone = {
params [["_uav",objNull,[objNull]], ["_side",sideUnknown,[sideUnknown]]];

if (!unitIsUAV _uav) exitWith { grpNull };

private _vehCfg = configFile >> "CfgVehicles" >> typeOf _uav;
private _crewCount = {round getNumber (_x >> "dontCreateAI") < 1 && 
                      ((_x == _vehCfg && {round getNumber (_x >> "hasDriver") > 0}) ||
                       (_x != _vehCfg && {round getNumber (_x >> "hasGunner") > 0}))} count ([_uav, configNull] call BIS_fnc_getTurrets);

private _crewNotReady = {alive _uav && {alive _x && !isPlayer _x} count crew _uav < _crewCount};
private "_time";

while _crewNotReady do // bruteforce that shit up because createVehicleCrew is slow and unreliable
{
	createVehicleCrew _uav;
	_time = time;
	waitUntil {!(time - _time < 1 && _crewNotReady)};
};

if (!alive _uav) exitWith { grpNull };

private _grp = group _uav;

if (_side != sideUnknown && side _uav != _side) then
{
	_grp = createGroup _side;
	(crew _uav) joinSilent _grp;
};
// <optional>
if (_uav isKindOf "StaticWeapon") then { _uav setAutonomous false } else { _grp setCombatMode "BLUE" }; // hold fire
(crew _uav) doWatch objNull; // stop aiming turret at owner
_uav addRating 1e11; // forgive friendly fire

_grp
};

Atlas_fnc_killreward = {
params["_unit"];
_wave = (master getvariable ['wave',1]);
if (_wave < 1) then {_wave = 1};
_xpreward = _wave*10;
_killreward = ["killreward", 200] call BIS_fnc_getParamValue;
_reward = _wave * _killreward;
_mn = _unit getVariable ['ATLAS_HRD_Cash',0];
_xp = _unit getVariable ["HG_XP",0];
_kill = _unit getVariable ["HG_Kills",0];
_unit setVariable ['ATLAS_HRD_Cash',(_mn+_reward),true];
//_unit setVariable ['HG_XP',(_xp+_xpreward),true];
_unit setVariable ['HG_Kills',(_kill+1),true];
//[_reward,0] call hg_fnc_addorsubcash;
// [0,1] call hg_fnc_addorsubkills;
[_xpreward,0] call HG_fnc_addOrSubXP;
[0] call HG_fnc_HUD;
};