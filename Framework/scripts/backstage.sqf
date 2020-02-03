//kill out of bound players
[] spawn {
while {true} do {
{_x setdamage 1}foreach (allplayers select {!(_x inarea "dead_zone")});
sleep 60;
};
};
//game lost if all died
[] spawn {
while {true} do {
_num = count (allplayers select {alive _x && _x inarea "dead_zone" && !(lifeState _x == "INCAPACITATED")});
//mission fails
if (_num <= 0 && (master getvariable ['round_in',0] > 0)) exitwith {
"EveryoneLost" remoteExecCall ['BIS_fnc_endMissionServer',2,false];
};
sleep 10;
};
};
//delete dead
// [] spawn {
// while {true} do {
// {deletevehicle _x} foreach alldead;
// sleep 900;
// };
// };
[] spawn {
while {master getvariable ['killing_enemy', 0] > 0} do {
sleep 600;
{_x setdamage 1}foreach (allunits select {(_x getvariable ['DONTKILL',0] <= 0) && (side _x == east) && !(_x inarea "dead_zone")});
};
};
//kill out of bound enemies
/*
[] spawn {
while {true} do {
while {master getvariable ['killing_enemy', 0] > 0} do {
sleep 600;
{_x setdamage 1}foreach (allunits select {(_x getvariable ['DONTKILL',0] <= 0) && (side _x == east) && !(_x inarea "dead_zone")});
};
sleep 1;
};
};
*/
//random reward chest
[ [600,900,1200],CENTER_POINT,600,true,AIRDROP_backup,CHEST_RANGE] spawn Atlas_fnc_randomchest;

