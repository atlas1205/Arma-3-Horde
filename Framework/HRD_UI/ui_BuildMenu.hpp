
class HRD_buildmenu
{
	    idd = 25001;
    movingenable = true;   
			class Controls
			{ 
			class RscPicture_1200: RscPicture
			{
				idc = 1200;
				text = "#(argb,8,8,3)color(1,1,1,1)";
				x = 1.03 * GUI_GRID_W + GUI_GRID_X;
				y = 1.12 * GUI_GRID_H + GUI_GRID_Y;
				w = 14 * GUI_GRID_W;
				h = 23.5 * GUI_GRID_H;
				colorText[] = {0.1,0.2,-1,0.2};
			};
			class RscFrame_1800: RscFrame
			{
				idc = 1800;
				text = "$STR_UI_TEXT_8_1";
				x = 1 * GUI_GRID_W + GUI_GRID_X;
				y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 14 * GUI_GRID_W;
				h = 24.5 * GUI_GRID_H;
				colorText[] = {-1,1,-1,0.8};
			};
			class RscListbox_1500: RscListbox
			{
				idc = 1500;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 3 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 10 * GUI_GRID_H;
				sizeEx = 0.6 * GUI_GRID_H;
			};
			class RscFrame_1801: RscFrame
			{
				idc = 1801;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				colorText[] = {1,1,1,1};
				text = "$STR_UI_TEXT_9";
			};
			class RscButton_1603: RscButton
			{
				idc = 1603;
				x = 8.5 * GUI_GRID_W + GUI_GRID_X;
				y = 23 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				text = "$STR_UI_TEXT_5";
				tooltip = "$STR_UI_TEXT_5";
				sizeEx = 0.8 * GUI_GRID_H;
				action = "closeDialog 0";
			};
			class RscButton_1602: RscButton
			{
				idc = 1602;
				x = 8.5 * GUI_GRID_W + GUI_GRID_X;
				y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				text = "$STR_UI_TEXT_8_2";
				tooltip = "$STR_UI_TEXT_8_2";
				sizeEx = 0.8 * GUI_GRID_H;
				action = "_index = (lbCurSel 1500);[_index,true] call Atlas_fnc_build;";
			//	action = "_index = (lbCurSel 1500);[_index,true] execvm 'HRD_UI\ui_handlebuild.sqf';";
			};
			/*
			class RscButton_1601: RscButton
			{
				idc = 1601;
				x = 2 * GUI_GRID_W + GUI_GRID_X;
				y = 23 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				text = "$STR_UI_TEXT_15";
				tooltip = "$STR_UI_TEXT_15";
				sizeEx = 0.6 * GUI_GRID_H;
				action = "_ctrl = (findDisplay 25001) displayCtrl 1500;lbClear _ctrl;if (build_type == 0) then {build_type = 1;[BUILD_LIST_2,_ctrl] call Atlas_fnc_fill_BuildList;} else {build_type = 0;[BUILD_LIST_1,_ctrl] call Atlas_fnc_fill_BuildList;};deletevehicle current_build;_ctrl lbSetCurSel 0;";
			};
			*/
			class RscButton_1600: RscButton
			{
				idc = 1600;
				x = 2 * GUI_GRID_W + GUI_GRID_X;
				y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				text = "$STR_UI_TEXT_8";
				tooltip = "$STR_UI_TEXT_8";
				sizeEx = 0.8 * GUI_GRID_H;
				action = "_index = (lbCurSel 1500);[_index,true] call Atlas_fnc_build;closeDialog 0";
			};
			class RscFrame_1802: RscFrame
			{
				idc = 1802;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				text = "$STR_UI_TEXT_12";
			};
			class RscFrame_1803: RscFrame
			{
				idc = 1803;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
					text = "$STR_UI_TEXT_14";
			};
			class RscFrame_1804: RscFrame
			{
				idc = 1804;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
					text = "$STR_UI_TEXT_13";
			};
			class RscFrame_1805: RscFrame
				{
					idc = 1805;
					text = "$STR_UI_TEXT_15"; //--- ToDo: Localize;
					x = 1.68 * GUI_GRID_W + GUI_GRID_X;
					y = 1.04 * GUI_GRID_H + GUI_GRID_Y;
					w = 12.7549 * GUI_GRID_W;
					h = 1.62255 * GUI_GRID_H;
				};
			class RscSlider_1903: RscSlider
			{
				idc = 1903;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 20 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_13";
				onSliderPosChanged = "build_dis_z = (sliderPosition 1903);";
			};
			class RscSlider_1902: RscSlider
			{
				idc = 1902;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 18 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_14";
				onSliderPosChanged = "build_dis_y = (sliderPosition 1902);";
			};
			class RscSlider_1901: RscSlider
			{
				idc = 1901;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 16 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_12";
				onSliderPosChanged = "build_dis_x = (sliderPosition 1901);";
			};
			class RscSlider_1900: RscSlider
			{
				idc = 1900;
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 14 * GUI_GRID_H + GUI_GRID_Y;
				w = 13 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_9";
				onSliderPosChanged = "build_dir = (sliderPosition 1900);";
			};
			class RscButton_1604: RscButton
				{
					idc = 1604;
					text = "1"; //--- ToDo: Localize;
					x = 2 * GUI_GRID_W + GUI_GRID_X;
					y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
					w = 1.5 * GUI_GRID_W;
					h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_16";				
				action = "_ctrl = (findDisplay 25001) displayCtrl 1500;lbClear _ctrl;build_type = 1;[BUILD_LIST_1,_ctrl] call Atlas_fnc_fill_BuildList;deletevehicle current_build;_ctrl lbSetCurSel 0;";
				};
				class RscButton_1605: RscButton
				{
					idc = 1605;
					text = "2"; //--- ToDo: Localize;
					x = 4 * GUI_GRID_W + GUI_GRID_X;
					y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
					w = 1.5 * GUI_GRID_W;
					h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_17";
				action = "_ctrl = (findDisplay 25001) displayCtrl 1500;lbClear _ctrl;build_type = 2;[BUILD_LIST_2,_ctrl] call Atlas_fnc_fill_BuildList;deletevehicle current_build;_ctrl lbSetCurSel 0;";
				};
				class RscButton_1606: RscButton
				{
					idc = 1606;
					text = "3"; //--- ToDo: Localize;
					x = 6 * GUI_GRID_W + GUI_GRID_X;
					y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
					w = 1.5 * GUI_GRID_W;
					h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_18";
				action = "_ctrl = (findDisplay 25001) displayCtrl 1500;lbClear _ctrl;build_type = 3;[BUILD_LIST_3,_ctrl] call Atlas_fnc_fill_BuildList;deletevehicle current_build;_ctrl lbSetCurSel 0;";
				};
				class RscButton_1607: RscButton
				{
					idc = 1607;
					text = "4"; //--- ToDo: Localize;
					x = 8 * GUI_GRID_W + GUI_GRID_X;
					y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
					w = 1.5 * GUI_GRID_W;
					h = 1 * GUI_GRID_H;
				tooltip = "$STR_UI_TEXT_19";
				action = "_ctrl = (findDisplay 25001) displayCtrl 1500;lbClear _ctrl;build_type = 4;[BUILD_LIST_4,_ctrl] call Atlas_fnc_fill_BuildList;deletevehicle current_build;_ctrl lbSetCurSel 0;";
				};
	};
};