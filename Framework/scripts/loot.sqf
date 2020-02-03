//loot.sqf

params ["_target","_caller","_ID","_arguments"];


[_target, _ID] remoteExec ["removeaction", 0, false];
_lootcash = 0;
_xp = 0;
_rank = rank _target;
//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL. 
switch (_rank) do {
default 					{_lootcash = round random [200,500,800];_xp = 50;};
case 'PRIVATE': 			{_lootcash = round random [150,250,450];_xp = 50;};
case 'CORPORAL': 			{_lootcash = round random [200,350,600];_xp = 100;};
case 'SERGEANT': 			{_lootcash = round random [250,400,650];_xp = 150;};
case 'LIEUTENANT': 			{_lootcash = round random [300,450,700];_xp = 250;};
case 'CAPTAIN': 				{_lootcash = round random [350,450,750];_xp = 300;};
case 'MAJOR': 				{_lootcash = round random [400,600,800];_xp = 350;};
case 'COLONEL': 	{_lootcash = round random [500,800,1000];_xp = 400;};
};

[_lootcash,0] call HG_fnc_addOrSubCash;
//[0,1] call hg_fnc_addorsubkills;
[_xp,0] call hg_fnc_addorsubxp;
//[0,1]remoteexeccall ['hg_fnc_addorsubkills',(_this select 1),false];[50,0]remoteexeccall ['hg_fnc_addorsubxp',(_this select 1),false];[200,0]remoteexeccall ['hg_fnc_addorsubcash',(_this select 1),false];
_caller playActionNow "PutDown";
hint format [localize ("str_system_looted"),_lootcash];

//end of loot.sqf