while {true} do {
while {master getvariable ["round_in",0] == 0} do
{
_time = master getvariable ['countdown',30]; 
_time = _time - 1;
master setvariable ['countdown',_time,true]; 
//(format [(localize "str_system_countdownhint"),master getvariable 'countdown']) remoteexec ["hintsilent",0,false]; //localize
//[_desired_object, {player reveal _this}] remoteExec ["call", 0];
//[_desired_object, {player reveal _this}] remoteExec ["call", 0];
//[(format [(localize "str_system_countdownhint"),master getvariable ['countdown',60]]),{hintsilent _this}] remoteexec ["call",0,false]; 
{hintsilent (format [(localize "str_system_countdownhint"),master getvariable ['countdown',60]])} remoteexec ["call",0,false]; 
if (_time < 1) then {
0 remoteexec ['setPlayerRespawnTime',0,false];
"" remoteexec ["hintsilent",0,false]; //localize
execvm "scripts\waves.sqf";
master setvariable ['round_in',1,true]; 
};
sleep 1;
};
};