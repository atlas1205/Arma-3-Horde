disableSerialization;
_bl = BUILD_LIST_1;
building = true;
build_type = 1;
build_dir = 0;
build_dis_x = 0;
build_dis_y = 3;
build_dis_z = 0;
current_build = objnull;
current_pos = [0,0,0];
createDialog "HRD_buildmenu";
waitUntil {!isNull (findDisplay 25001)};
_ctrl = (findDisplay 25001) displayCtrl 1500;
_ctrl_1 = (findDisplay 25001) displayCtrl 1600;
_ctrl_2 = (findDisplay 25001) displayCtrl 1601;

[_bl,_ctrl] call Atlas_fnc_fill_BuildList;
sliderSetRange [1900, 0, 360];//dir
sliderSetRange [1901, -5, 5];//x
sliderSetRange [1902, 1, 10];//y
sliderSetRange [1903, -2, 2];//z
sliderSetPosition [1900, getdir player];
sliderSetPosition [1901, 0];
sliderSetPosition [1902, 5];
sliderSetPosition [1903, 0];
_ctrl lbSetCurSel 0;
//while {true} do {
while {building && !isNull (findDisplay 25001)} do {
_index = 0;
_index = lbCurSel _ctrl;
if (isnull (findDisplay 25001)) then {
_index = 0;
};
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

_ctrl_1 ctrlSetTooltip format [(localize"STR_UI_TEXT_10"),_cost];
_ctrl_2 ctrlSetTooltip format [(localize"STR_UI_TEXT_10"),_cost];
current_pos = player modelToWorld [build_dis_x,build_dis_y,build_dis_z];
//current_pos = [_2d_pos select 0,_2d_pos select 1,(getposATL player select 2)];
if (isnull current_build) then 
{ 
current_build = _class createVehicleLocal current_pos;
{[current_build, _x] remoteExec ['disableCollisionWith', 0,false];} foreach entities [[], [], true, false];
current_build allowdamage false;
current_build enablesimulation false;
current_build setdir (getdir player + 180);
} else
{
{[current_build, _x] remoteExec ['disableCollisionWith', 0,false];} foreach entities [[], [], true, false];
current_build allowdamage false;
current_build enablesimulation false;
current_build setdir build_dir;
current_build setpos current_pos;
};
//sliderPosition 2900
if (_index != lbCurSel  ((findDisplay 25001) displayCtrl 1500) && !(isnull current_build)) then {
deletevehicle current_build;
};
if (isnull (findDisplay 25001)) exitwith {	
deletevehicle current_build;
building = false;

};
sleep 0;
};
//};
//lbSort _ctrl;