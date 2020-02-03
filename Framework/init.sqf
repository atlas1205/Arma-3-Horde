#include "Zen_FrameworkFunctions\Zen_InitHeader.sqf"
	 123 call compile preprocessFileLineNumbers "scripts\atlas_functions.sqf";
	 124 call compile preprocessFileLineNumbers "scripts\functions_hrd.sqf";

enableSaving [false, false];
_mag = ["magrepack", 0] call BIS_fnc_getParamValue;
if (_mag >= 1) then {[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";};
// Add a Multi-player Eventhandler  'MPEventHandler' when the Player dies.
player addMPEventHandler ["MPRespawn", {_this spawn FNC_Del_Corpse;}];
// Now delete Player's old dead body and gear on respawn in a puff of smoke.
FNC_Del_Corpse = {_unit = _this select 1;
	_pos = getPos _unit;_xpos = _pos select 0;_ypos = _pos select 1;
	_zpos = _pos select 2;sleep 0.3;for "_i" from 0 to 3 do {_xvel = 0;_yvel = 0;_zvel = 0;_tnt = 0;
	drop[["A3\Data_F\ParticleEffects\Universal\universal.p3d",16,7,48],"","Billboard",0,1 + random 0.5,[_xpos,_ypos,_zpos],
	[_xvel,_yvel,_zvel],1,1.2,1.3,0,[2],[[0.55,0.5,0.45,0],[_tnt + 0.55,_tnt + 0.5,_tnt + 0.45,0.16],
	[_tnt + 0.55,_tnt + 0.5,_tnt + 0.45, 0.12],[_tnt + 0.5,_tnt + 0.45,_tnt + 0.4,0.08],
	[_tnt + 0.45,_tnt + 0.4,_tnt + 0.35,0.04],[_tnt + 0.4,_tnt + 0.35,_tnt + 0.3,0.01]],[0],0.1,0.1,"","",""];};
deleteVehicle _unit;};


addMissionEventHandler ["HandleDisconnect",
    {
        _unit = _this select 0;
        deleteVehicle _unit;
    }];
