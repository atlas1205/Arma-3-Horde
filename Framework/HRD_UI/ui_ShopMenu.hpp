////missionConfigFIle >> "HRD_shopmenu"
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
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		class RscFrame_1800: RscFrame
		{
			idc = 1800;
			text = $STR_UI_TEXT_0; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 18.5 * GUI_GRID_W;
			h = 21 * GUI_GRID_H;
		};
		class RscListbox_1500: RscListBox
		{
			idc = 1500;
		
			x = 3.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			action = "_index = (lbCurSel 1500);[_index] execvm 'HRD_UI\ui_handleshop.sqf';";
		
			text = $STR_UI_TEXT_4; //--- ToDo: Localize;
			x = 3.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = $STR_UI_TEXT_4; //--- ToDo: Localize;
		};
				class RscButton_1601: RscButton
		{
			idc = 1601;
			action = "closeDialog 0;[] spawn Atlas_fnc_UI_buyAmmo;";
		
			text = $STR_UI_TEXT_7_1; //--- ToDo: Localize;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = $STR_UI_TEXT_7_1; //--- ToDo: Localize;
		};		
		class RscButton_1602: RscButton
		{
			idc = 1602;
			action = "closeDialog 0;[nil,nil,nil,'Atlas_HRD_Itemshop'] call HG_fnc_dialogOnLoadItems;";
		
			text = $STR_UI_TEXT_7_2; //--- ToDo: Localize;
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = $STR_UI_TEXT_7_2; //--- ToDo: Localize;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			action = "closeDialog 0;[nil,nil,nil,'Atlas_HRD_Gearshop'] call HG_fnc_dialogOnLoadGear;";
		
			text = $STR_UI_TEXT_6; //--- ToDo: Localize;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = $STR_UI_TEXT_6; //--- ToDo: Localize;
		};

		class RscButton_1604: RscButton
		{
			idc = 1604;
			action = "closeDialog 0;[nil,nil,nil,'ATLAS_HRD_Trader'] call HG_fnc_dialogOnLoadTrader;";
		
			text = $STR_UI_TEXT_3; //--- ToDo: Localize;
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			tooltip = $STR_UI_TEXT_3; //--- ToDo: Localize;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			action = "closeDialog 0";
		
			text = $STR_UI_TEXT_5; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = $STR_UI_TEXT_5; //--- ToDo: Localize;
		};


	};
};