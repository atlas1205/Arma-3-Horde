//missionConfigFIle >> "Atlas_AmmoUI"
class Atlas_AmmoUI
{
    idd = 30003;
    movingenable = false;   
  
				class Controls
			{ 
			
			class RscText_1001: RscText
			{
				idc = 1001;
			
				x = 4.5 * GUI_GRID_W + GUI_GRID_X;
				y = 3 * GUI_GRID_H + GUI_GRID_Y;
				w = 33.5 * GUI_GRID_W;
				h = 21 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0.8};
			};
			class RscFrame_1800: RscFrame
			{
				idc = 1800;
			
				text = "Purchase Ammo"; //--- ToDo: Localize;
				x = 5 * GUI_GRID_W + GUI_GRID_X;
				y = 3 * GUI_GRID_H + GUI_GRID_Y;
				w = 32.5 * GUI_GRID_W;
				h = 20.5 * GUI_GRID_H;
				colorText[] = {0,1,0.5,1};
				colorBackground[] = {1,0.5,0.3,1};
			};
			class RscListbox_1500: RscListBox
			{
				idc = 1500;
			
				x = 6 * GUI_GRID_W + GUI_GRID_X;
				y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 30.5 * GUI_GRID_W;
				h = 14.5 * GUI_GRID_H;
			};
			class RscButton_1600: RscButton
			{
				idc = 1600;
			
				text = "Purchase"; //--- ToDo: Localize;
				x = 6 * GUI_GRID_W + GUI_GRID_X;
				y = 21 * GUI_GRID_H + GUI_GRID_Y;
				w = 14 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				action = "[lbCurSel 1500] call Atlas_fnc_buyAmmo";
			};
			class RscButton_1601: RscButton
			{
				idc = 1601;
				action = "closeDialog 0";
			
				text = "Exit"; //--- ToDo: Localize;
				x = 22 * GUI_GRID_W + GUI_GRID_X;
				y = 21 * GUI_GRID_H + GUI_GRID_Y;
				w = 14.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
			};
			class RscButton_1602: RscButton
			{
				idc = 1602;
			
				text = "Primary"; //--- ToDo: Localize;
				x = 7 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 8 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				action = "[[primaryWeapon player]call Atlas_fnc_magArray] call Atlas_fnc_fill_AmmoList;lbSetCurSel [1500, 0];";
			};
			class RscButton_1603: RscButton
			{
				idc = 1603;
			
				text = "Launcher"; //--- ToDo: Localize;
				x = 27 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 8 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				action = "[[secondaryWeapon player]call Atlas_fnc_magArray] call Atlas_fnc_fill_AmmoList;lbSetCurSel [1500, 0];";
			};
			class RscButton_1604: RscButton
			{
				idc = 1604;
			
				text = "Secondary"; //--- ToDo: Localize;
				x = 17 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 8 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				action = "[[handgunWeapon player]call Atlas_fnc_magArray] call Atlas_fnc_fill_AmmoList;lbSetCurSel [1500, 0];";
			};

	};
};

