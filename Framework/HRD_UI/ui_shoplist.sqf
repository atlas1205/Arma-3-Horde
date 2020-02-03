disableSerialization;

_items = [
format [(localize "str_system_rearm_1"),REARM_PRICE_1],
format [(localize "str_system_rearm_2"),REARM_PRICE_2],
format [(localize "str_system_rearm_3"),REARM_PRICE_3],
format [(localize "str_system_rearm_4"),REARM_PRICE_4],
format [(localize "str_system_rearm_5"),REARM_PRICE_5],
format [(localize "str_system_rearm_6"),REARM_PRICE_6],
format [(localize "str_system_addsupport_1"),ART_PRICE],
format [(localize "str_system_addsupport_2"),HELI_PRICE], 
format [(localize "str_system_addsupport_3"),BOMB_PRICE] 
 ];
createDialog "HRD_shopmenu";

waitUntil {!isNull (findDisplay 25000)};

_ctrl = (findDisplay 25000) displayCtrl 1500;
{_ctrl lbadd  _x} foreach _items;


_ctrl lbSetCurSel 0;
//lbSort _ctrl;