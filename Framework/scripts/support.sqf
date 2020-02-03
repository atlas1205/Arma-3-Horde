

//unit synchronizeObjectsRemove [objects]
//unit synchronizeObjectsAdd [objects]

while {true} do 
{

//SR synchronizeObjectsAdd allplayers;
if (master getvariable ['art',0] > 0) then {

[SR,[ART]] remoteexec ['synchronizeObjectsAdd',0,false];
[ART,[SR]] remoteexec ['synchronizeObjectsAdd',0,false];
} else {

//SR synchronizeObjectsRemove [ART];
//ART synchronizeObjectsRemove [SR];

[SR,[ART]] remoteexec ['synchronizeObjectsRemove',0,false];
[ART,[SR]] remoteexec ['synchronizeObjectsRemove',0,false];
};

if (master getvariable ['heli',0] > 0) then {
//SR synchronizeObjectsAdd [HA];
//HA synchronizeObjectsAdd [SR];
[SR,[HA]] remoteexec ['synchronizeObjectsAdd',0,false];
[HA,[SR]] remoteexec ['synchronizeObjectsAdd',0,false];

} else {

[SR,[HA]] remoteexec ['synchronizeObjectsRemove',0,false];
[HA,[SR]] remoteexec ['synchronizeObjectsRemove',0,false];
};
if (master getvariable ['bomb',0] > 0) then {
//SR synchronizeObjectsAdd [CAS];
//CAS synchronizeObjectsAdd [SR];

[SR,[CAS]] remoteexec ['synchronizeObjectsAdd',0,false];
[CAS,[SR]] remoteexec ['synchronizeObjectsAdd',0,false];
} else {

//SR synchronizeObjectsRemove [CAS];
//CAS synchronizeObjectsRemove [SR];
[SR,[CAS]] remoteexec ['synchronizeObjectsRemove',0,false];
[CAS,[SR]] remoteexec ['synchronizeObjectsRemove',0,false];

};
[] remoteexeccall ['BIS_fnc_addSupportLink',0,false];
[] remoteexeccall ['BIS_fnc_removeSupportLink',0,false];
sleep 1;
};