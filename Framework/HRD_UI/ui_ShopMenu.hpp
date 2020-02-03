////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Atlas, v1.063, #Cahexi)
////////////////////////////////////////////////////////
class HRD_shopmenu
{
	    idd = 25000;
    movingenable = false;   
	   class Controls
	{ 

		class RscPicture_1800: RscPicture
		{
			idc = 1800;
			text = "#(argb,8,8,3)color(0.1,0.1,0.2,0.3)";
			x = 2.17 * GUI_GRID_W + GUI_GRID_X;
			y = 2.19 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 21.5 * GUI_GRID_H;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			x = 3.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			text = "$STR_UI_TEXT_4";
			tooltip = "$STR_UI_TEXT_4";
			action = "_index = (lbCurSel 1500);[_index] execvm 'HRD_UI\ui_handleshop.sqf';";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
				text = "$STR_UI_TEXT_1";
				tooltip = "$STR_UI_TEXT_1";
				action = "closeDialog 0;[nil,nil,nil,'Atlas_HRD_Gearshop'] call HG_fnc_dialogOnLoadGear;";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			x = 3.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
				text = "$STR_UI_TEXT_2";
				tooltip = "$STR_UI_TEXT_2";
				action = "closeDialog 0;[nil,nil,nil,'Atlas_HRD_Itemshop'] call HG_fnc_dialogOnLoadItems;";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
				text = "$STR_UI_TEXT_3";
				tooltip = "$STR_UI_TEXT_3";
				action = "closeDialog 0;[nil,nil,nil,'ATLAS_HRD_Trader'] call HG_fnc_dialogOnLoadTrader;";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			x = 8 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
							text = "$STR_UI_TEXT_5";
				tooltip = "$STR_UI_TEXT_5";
				action = "closeDialog 0";
		};
	};
};