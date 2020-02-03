_index = _this select 0;

switch (_index) do {
default {
[player,0,REARM_PRICE_1] call Atlas_fnc_QuickRearm;
};
case 0: {
[player,0,REARM_PRICE_1] call Atlas_fnc_QuickRearm;
};
case 1: {
[player,1,REARM_PRICE_2] call Atlas_fnc_QuickRearm;
};
case 2: {
[player,2,REARM_PRICE_3] call Atlas_fnc_QuickRearm;
};
case 3: {
[player,3,REARM_PRICE_4] call Atlas_fnc_QuickRearm;
};
case 4: {
[player,4,REARM_PRICE_5] call Atlas_fnc_QuickRearm;
};
case 5: {
[player,5,REARM_PRICE_6] call Atlas_fnc_QuickRearm;
};
case 6: {
[player,ART_PRICE,1] call Atlas_fnc_buysupport;
};
case 7: {
[player,HELI_PRICE,2] call Atlas_fnc_buysupport;
};
case 8: {
[player,BOMB_PRICE,3] call Atlas_fnc_buysupport;
};
};
