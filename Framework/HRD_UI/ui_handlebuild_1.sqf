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
default {_built = createVehicle [_class, current_pos, [], 0, "CAN_COLLIDE"];_built allowdamage false;_built setdir build_dir;};
case 3: {_built = createVehicle [_class, current_pos, [], 0, ""];_built setdir build_dir;_built allowdamage false;};
case 4: {_built = createMine [_class, current_pos, [], 0];(side player) revealmine _built;_built setdir (build_dir+180);};
};

[_cost, 1] call hg_fnc_addorsubcash;
_built call (_code);
if !(_repeat) then {building = false};
[[_built], Atlas_fnc_build_addaction] remoteExec ["call", 0, true];