master setvariable ['round_in',1,true]; 
master setvariable ['countdown',master getvariable ["interval",90],true]; 
//wave starts
_wave = (master getvariable ['wave',0]) + 1;
master setvariable ['wave',_wave,true]; 
_wavecount = ["wavecount", 20] call BIS_fnc_getParamValue;
//(format ["Wave %1 started.",master getvariable 'wave']) remoteexec ["hintsilent",0,false];
["wave",true] call BIS_fnc_deleteTask;
{deleteVehicle _x}foreach alldead;
"hrd_start" remoteExec ['playmusic',0,false];
sleep 1;
1 remoteexec ['setPlayerRespawnTime',0,false];
[true ,"wave",[format[(localize "STR_TASK_wave"),_wavecount],format[(localize "STR_TASK_wave_T"),_wave],""],CENTER_POINT,"assigned",1000,true,"defend",false] call BIS_fnc_taskCreate;

999999 remoteexec ['setPlayerRespawnTime',0,false];
//spawn enemies
//Land

_class0  = "O_G_Soldier_F";

_allenemies = [];
_number = _wave + 2;
_classArray = [];
TIERS = [];
_veh = objnull;

_vehpool = [];
//_vehchance = random [1,40,100];
//_sideopchance = random [1,30,80];
_vehchance = 0;
_sideopchance = -1;
_vehspawn = 0;
_sideop = 0;
_vehtype = "";
//_vehtype = selectrandom _vehpool;

//enemy tier chart
if (_wave <= 1) then {
TIERS = [1];
};
if (_wave > 1 && _wave <= 3) then {
TIERS = [1,1,2];
};
if (_wave > 3 && _wave <= 5) then {
TIERS = [2,2,2,2,3,3];
_vehchance = selectrandom [1,2];
_vehpool = vehpool_1;
};
if (_wave > 5 && _wave <= 7) then {
TIERS = [2,2,2,3,3,3,3,3,3,4,4];
_vehpool = vehpool_1;
_vehchance = selectrandom [1,2];
_sideop = 40;
};
if (_wave > 7 && _wave <= 9) then {
TIERS = [3,3,3,4,4,4,4];

_vehpool = vehpool_2;
_vehchance = selectrandom [1,2];
_sideop = 40;
};
if (_wave > 9 && _wave <= 11) then {
_vehpool = vehpool_2;
TIERS =  [4 ,4 ,4 ,4 ,5 ,5];
_vehchance = selectrandom [1,2];
_sideop = 45;
};
if (_wave > 11 && _wave <= 13) then {
TIERS =  [4 ,5 ,5 ,5,6,6];
_vehpool = vehpool_3;
_vehchance = selectrandom [1,2];
_sideop = 45;
};
if (_wave > 13 && _wave <= 15) then {
TIERS =  [5,5 ,5 ,6 ,6,7];
_vehpool = vehpool_3;
_vehchance = selectrandom [1,2,3];
_sideop = 45;
};
if (_wave > 15 && _wave <= 17) then {
TIERS = [5,5,6,6,6,6,7];
_vehpool = vehpool_3;
_vehchance = selectrandom [1,2,3,4,5];
_sideop = 50;
};
if (_wave > 17 && _wave <= 19) then {
TIERS = [6,6,6,6,7,7];
_vehpool = vehpool_3;
_vehchance = selectrandom [1,2,3,4,5];
_sideop = 50;
};
if (_wave > 19) then {
TIERS = [6,6,7,7,7,7,7];
_vehpool = vehpool_3;
_vehchance = selectrandom [1,2,3,4,5];
_sideop = 50;
};

_extra = ["enemycount", 3] call BIS_fnc_getParamValue;
_ai = (["aiskilllevel", 2] call BIS_fnc_getParamValue)/10;
_cnt = count allplayers;
_eary = [];
for "_j" from 1 to (_cnt + _extra) do{
_eary pushback _class0;
};
if (_number > 10) then {_number = 10};
_pa = objnull;
for "_i" from 1 to _number do
{
_p = allplayers select {alive _x};
_pa = _p call bis_fnc_selectrandom;
if (isnull _pa) then {
_pa = alltargets call bis_fnc_selectrandom;
};


_grp = ([[CENTER_POINT,SPAWN_RANGE] call Zen_FindGroundPosition,_eary,_pa,true] call Atlas_fnc_LandSupportSoldiers);
_grp setformation "Column";
_allenemies = _allenemies + units _grp;
};
if ((_vehchance >= 2) && ((["enemyveh", 0] call BIS_fnc_getParamValue) >= 1)) then
{

_vehpos = [CENTER_POINT,Veh_SPAWN_RANGE] call Zen_FindGroundPosition; 
_vehtype = selectrandom _vehpool;
_veh = [_vehpos,_class0,_vehtype,getmarkerpos CENTER_POINT,true,'full',east] call Atlas_fnc_LandSupport;
};
/*
if (_sideopchance <= _sideop) then
{
call atlas_fnc_sideops;
};
*/

if !(isnull _veh) then {
_allenemies = _allenemies + crew _veh;
_veh lock true;
};

{
_x allowFleeing 0;
[_x,"","","",3] spawn Atlas_fnc_TrackingMarker;
[_x,selectrandom TIERS] call Atlas_fnc_tiers; 
_x setskill _ai;
_x setUnitPos "UP";
_x disableAI "COVER";
_x disableAI "SUPPRESSION";
_x disableAI "MINEDETECTION";
} foreach _allenemies;

_addnvg = false;
//_hr =  ["starthour", 9] call BIS_fnc_getParamValue;
_hr = date select 3;
if ( (_hr >= 18) or  (_hr <  6)) then {
_addnvg = true;
};
{if (_addnvg) then {_x linkItem "NVGoggles"} }foreach _allenemies;

master setvariable ['killing_enemy', 1,true];
//kill enemies out of range
if ((['executerunners', 0]call BIS_fnc_getParamValue) >= 1) then 
{
[] spawn {
while {master getvariable ['killing_enemy', 0] > 0} do {
sleep 900;
{_x setdamage 1}foreach (allunits select {(_x getvariable ['DONTKILL',0] <= 0) && (side _x == east) && !(_x inarea "dead_zone")});
		};
	};
};
waituntil {{alive _x} count _allenemies <= 0};

"hrd_win" remoteExec ['playmusic',0,false];
["wave", "succeeded", true] call BIS_fnc_taskSetState;
master setvariable ['killing_enemy', 0,true];
1 remoteexec ['setPlayerRespawnTime',0,false];
sleep 1;
if (_wavecount <= (master getvariable ['wave',0])) then {

"end_a1" remoteExecCall ['BIS_fnc_endMissionServer',2,false];

}
else {

master setvariable ['round_in',0,true]; 
};
[(master getvariable ['wave',1]) * (["wavereward", 500] call BIS_fnc_getParamValue),0] remoteexeccall ['hg_fnc_addorsubcash',0,false];
[(master getvariable ['wave',1]) * (["wavexp", 50] call BIS_fnc_getParamValue),0] remoteexeccall ['hg_fnc_addorsubXP',0,false];
{_x setdamage 0} foreach allplayers;
{master setVariable [str (getPlayerUID player),(player getVariable ['ATLAS_HRD_Cash',1000]),true];} remoteExec ['call',0,false];
if !(isnull _veh) then {
deletevehicle _veh;
};

/*
sleep 60;
{deletevehicle _x} foreach _allenemies;

