["Initialize", [ player, [], true ]] call BIS_fnc_EGSpectator;
building = false;
if (master getvariable ["round_in",0] == 0) then {
0 remoteexec ['setPlayerRespawnTime',player,false];

};