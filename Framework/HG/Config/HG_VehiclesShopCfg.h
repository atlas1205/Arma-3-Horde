class ATLAS_HRD_VehShop
{
conditionToAccess = "true";
	
    class Civilian
	{
	    displayName = "$STR_HG_SHOP_CIVILIAN";
		vehicles[] =
		{
			{"B_Quadbike_01_F",200,"true"},	
		    {"C_SUV_01_F",45000,"true"},
			{"C_Hatchback_01_F",20000,"true"},
			{"C_Hatchback_01_sport_F",25000,"true"},
			{"C_Offroad_02_unarmed_F",6000,"true"},
			{"C_Offroad_01_F",5800,"true"},
			{"C_Offroad_01_repair_F",6500,"true"},
			{"C_Van_01_transport_F",80000,"true"},
			{"C_Truck_02_fuel_F",150000,"true"},
			{"C_Truck_02_box_F",150000,"true"},
			{"C_Truck_02_transport_F",150000,"true"}
		};
	    spawnPoints[] =
		{
				{"Garage 1",	{"garage_1"}},
				{"Garage 2",	{"garage_2"}},
				{"Garage 3",	{"garage_3"}},
				{"Garage 4",	{"garage_4"}},
				{"Garage 5",	{"garage_5"}}
		};
	};
	
	class Military
	{
	    displayName = "$STR_HG_SHOP_MILITARY";
		vehicles[] =
		{
			//{"dbo_CIV_new_bike",100,"true"},
			{"B_G_Quadbike_01_F",200,"true"},
			{"B_G_Offroad_01_armed_F",20000,"true"},
		    {"B_MRAP_01_F",100000,"true"},
			{"B_MRAP_01_gmg_F",125000,"true"},
			{"B_MRAP_01_hmg_F",120000,"true"},			
			{"B_LSV_01_armed_F",35000,"true"},
			{"B_LSV_01_unarmed_F",20000,"true"},
			{"B_G_Mortar_01_F",50000,"true"},
			{"B_static_AA_F",50000,"true"},
			{"B_static_AT_F",50000,"true"},
			{"B_HMG_01_F",20000,"true"},
			{"B_HMG_01_high_F",20000,"true"},
			{"B_HMG_01_A_F",25000,"true"},
			{"B_GMG_01_F",25000,"true"},
			{"B_GMG_01_high_F",25000,"true"},
			{"B_GMG_01_A_F",30000,"true"},
			{"B_Truck_01_Repair_F",200000,"true"},
			{"B_Truck_01_ammo_F",200000,"true"},
			{"B_Truck_01_fuel_F",200000,"true"},
			{"B_Truck_01_medical_F",200000,"true"},
			{"B_Truck_01_covered_F",200000,"true"},
			{"B_Truck_01_transport_F",200000,"true"},
			{"B_APC_Tracked_01_CRV_F",2500000,"true"},
			{"B_APC_Tracked_01_rcws_F",2500000,"true"},
			{"B_APC_Tracked_01_AA_F",3000000,"true"},
			{"B_APC_Wheeled_01_cannon_F",2500000,"true"},
			{"B_MBT_01_TUSK_F",6000000,"true"},
			{"B_MBT_01_cannon_F",5400000,"true"},
			{"B_MBT_01_arty_F",6000000,"true"},//real world price $14.4 mil
			{"B_MBT_01_mlrs_F",8000000,"true"},
			{"rhsusf_mrzr4_d",36000,"true"},//4 occupants	
			{"rhsusf_M1117_W",700000,"true"},//retail $1.2 mil				
			{"rhsusf_m1025_w_m2",80000,"true"},//m2 costs $14k IRL, Gunner Protection Kit armor turret est $15k?
			{"rhsusf_m1025_w_mk19",85000,"true"},//mk19 costs $20k IRL, Gunner Protection Kit armor turret est $15k?
			{"rhsusf_rg33_m2_usmc_wd",325000,"true"},
			{"rhsusf_M1232_M2_usarmy_wd",470000,"true"},
			{"rhsusf_M1232_MK19_usarmy_wd",475000,"true"},
			{"rhsusf_M1237_M2_usarmy_wd",560000,"true"},//costs $100k to up-armor a smaller HMMWV; this is cheap for an RG-33!
			{"rhsusf_M1237_MK19_usarmy_wd",565000,"true"},		
			{"rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy",245000,"true"},
			{"rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy",245000,"true"},
			{"rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy",245000,"true"},
			{"rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy",290000,"true"},
			{"rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy",290000,"true"},
			{"rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy",290000,"true"},
			{"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd",370000,"true"},
			{"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd",370000,"true"},
			{"rhsusf_M977A4_AMMO_BKIT_usarmy_wd",350000,"true"},
			{"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",350000,"true"},
			{"rhsusf_M978A4_BKIT_usarmy_wd",350000,"true"},
			{"rhsusf_M977A4_AMMO_usarmy_wd",230000,"true"},
			{"rhsusf_M977A4_REPAIR_usarmy_wd",230000,"true"},
			{"rhsusf_M978A4_usarmy_wd",230000,"true"},
			{"RHS_M2A2",3000000,"true"},
			{"RHS_M2A2_BUSKI",3200000,"true"},
			{"RHS_M2A3",3100000,"true"},
			{"RHS_M2A3_BUSKI",3300000,"true"},//busk 1 materials cost was $20k, but per-unit upgrade cost was $936k?! I called it $200k
			{"RHS_M2A3_BUSKIII",3400000,"true"},
			{"rhsusf_m109_usarmy",6000000,"true"},
			{"RHS_M119_WD",50000,"true"},
			{"RHS_M252_WD",25000,"true"},
			{"RHS_Stinger_AA_pod_WD",120000,"true"},//Stinger missile costs $38000
			{"RHS_M2StaticMG_WD",15000,"true"},
			{"RHS_M2StaticMG_MiniTripod_WD",15000,"true"},
			{"RHS_MK19_TriPod_WD",21000,"true"},
			{"RHS_TOW_TriPod_WD",90000,"true"},//TOW missile costs $58908
			{"rhsusf_M1083A1P2_d_fmtv_usarmy",200000,"true"},	
			{"rhsusf_M1083A1P2_B_d_fmtv_usarmy",300000,"true"},
			{"rhsusf_m113_usarmy_supply",300000,"true"},
			{"rhsusf_m113_usarmy",300000,"true"},
			{"rhsusf_m113_usarmy_M240",310000,"true"},
			{"rhsusf_m113_usarmy_MK19",325000,"true"},
			{"rhsusf_m113_usarmy_medical",350000,"true"},
			{"rhsusf_m113_usarmy_unarmed",300000,"true"},		
			{"rhsusf_m113d_usarmy_supply",300000,"true"},
			{"rhsusf_m113d_usarmy",300000,"true"},
			{"rhsusf_m113d_usarmy_M240",310000,"true"},
			{"rhsusf_m113d_usarmy_MK19",325000,"true"},
			{"rhsusf_m113d_usarmy_medical",350000,"true"},
			{"rhsusf_m113d_usarmy_unarmed",300000,"true"},				
			{"rhsusf_m1a1aim_tuski_wd",4500000,"true"},//$4.3m base + $200k TUSK
			{"rhsusf_m1a1aimwd_usarmy",4300000,"true"},
			{"rhsusf_m1a1fep_od",4300000,"true"},
			{"rhsusf_m1a1fep_wd",4300000,"true"},
			{"rhsusf_m1a1hc_wd",4300000,"true"},
			{"rhsusf_m1a2sep1tuskiiwd_usarmy",5600000,"true"},
			{"rhsusf_m1a2sep1tuskiwd_usarmy",5400000,"true"},
			{"rhsusf_m1a2sep1wd_usarmy",5200000,"true"},	
			{"rhsusf_m1025_w",60000,"true"},//4 occupants; same price for all HMMWV variants despite different seating b/c the protective cabin also varies (more seats <-> less protection trade-off)
			{"rhsusf_m998_w_2dr",60000,"true"},//8 occupants
			{"rhsusf_m998_w_2dr_halftop",60000,"true"},//8 occupants
			{"rhsusf_m998_w_2dr_fulltop",60000,"true"},//8 occupants
			{"rhsusf_m998_w_4dr",60000,"true"},//6 occupants
			{"rhsusf_m998_w_4dr_halftop",60000,"true"},//6 occupants
			{"rhsusf_m998_w_4dr_fulltop",60000,"true"},//6 occupants
			{"rhsusf_rg33_usmc_wd",300000,"true"},
			{"rhsusf_M1232_usarmy_wd",450000,"true"},
			{"rhsusf_M1078A1P2_B_wd_fmtv_usarmy",225000,"true"},//15 occupants
			{"rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy",225000,"true"},//3 occupants; with future ACE integration, should increase cargo space from default 8 to 20
			{"rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy",225000,"true"},//15 occupants			
			{"rhsusf_M1078A1P2_wd_fmtv_usarmy",150000,"true"},//15 occupants
			{"rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy",150000,"true"},//3 occupants; with future ACE integration, should increase cargo space from default 8 to 20
			{"rhsusf_M1078A1P2_wd_open_fmtv_usarmy",150000,"true"},//15 occupants			
			{"rhsusf_M1083A1P2_B_wd_fmtv_usarmy",270000,"true"},//17 occupants
			{"rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy",270000,"true"},//3 occupants; with future ACE integration, should increase cargo space from default 8 to 24
			{"rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy",270000,"true"},//17 occupants
			{"rhsusf_M1083A1P2_wd_fmtv_usarmy",180000,"true"},//17 occupants; +$15k for +2 occupants over the 1078
			{"rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy",180000,"true"},//3 occupants; with future ACE integration, should increase cargo space from default 8 to 24; +$15 = +4 cargo
			{"rhsusf_M1083A1P2_wd_open_fmtv_usarmy",180000,"true"},//17 occupants
			{"rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy",315000,"true"},//suggested future mission use: mobile base for respawn/save
			{"rhsusf_M1083A1P2_B_M2_d_Medical_fmtv_usarmy",315000,"true"},//suggested ACE integration: medical facility
			{"rhsusf_M977A4_BKIT_usarmy_wd",350000,"true"},//3 occupants; with future ACE integration, should increase cargo space from default 8 to 30
			{"rhsusf_M977A4_usarmy_wd",230000,"true"},//3 occupants; with future ACE integration, should increase cargo space from default 8 to 30
			{"rhsusf_M1078A1P2_B_d_fmtv_usarmy",285000,"true"},
			{"rhsusf_rg33_usmc_d",300000,"true"},
			{"rhsusf_rg33_m2_usmc_d",301500,"true"},
			{"rhsusf_rg33_usmc_wd",300000,"true"},
			{"rhsusf_rg33_m2_usmc_wd",301500,"true"},
//need for repricing
			{"rhsusf_M1117_D",10000,"true"},
			{"rhsusf_M1117_O",10000,"true"},
			{"rhsusf_M1220_usarmy_d",10000,"true"},
			{"rhsusf_M1220_M153_M2_usarmy_d",10000,"true"},
			{"rhsusf_M1220_M2_usarmy_d",10000,"true"},
			{"rhsusf_M1220_MK19_usarmy_d",10000,"true"},
			{"rhsusf_M1230_M2_usarmy_d",10000,"true"},
			{"rhsusf_M1230_MK19_usarmy_d",10000,"true"},
			{"rhsusf_M1230a1_usarmy_d",10000,"true"},
			{"rhsusf_M1232_usarmy_d",10000,"true"},
			{"rhsusf_M1232_M2_usarmy_d",10000,"true"},
			{"rhsusf_M1232_MK19_usarmy_d",10000,"true"},
			{"rhsusf_M1237_M2_usarmy_d",10000,"true"},
			{"rhsusf_M1237_MK19_usarmy_d",10000,"true"},
			{"rhsusf_M1117_W",10000,"true"},
			{"rhsusf_M1220_usarmy_wd",10000,"true"},
			{"rhsusf_M1220_M153_M2_usarmy_wd",10000,"true"},
			{"rhsusf_M1220_M2_usarmy_wd",10000,"true"},
			{"rhsusf_M1220_MK19_usarmy_wd",10000,"true"},
			{"rhsusf_M1230a1_usarmy_wd",10000,"true"},
			{"rhsusf_M1232_usarmy_wd",10000,"true"},
			{"rhsusf_M1232_M2_usarmy_wd",10000,"true"},
			{"rhsusf_M1232_MK19_usarmy_wd",10000,"true"},
			{"rhsusf_M1237_M2_usarmy_wd",10000,"true"},
			{"rhsusf_M1237_MK19_usarmy_wd",10000,"true"},
//end of repricing
			{"rhsgref_ins_g_uaz",5000,"true"},
			{"rhsgref_ins_g_uaz_open",5000,"true"},
			{"rhsgref_cdf_reg_uaz",5000,"true"},
			{"rhsgref_cdf_reg_uaz_open",5000,"true"},			
			{"rhsgref_ins_g_uaz_ags",25000,"true"},
			{"rhsgref_ins_g_uaz_dshkm_chdkz",20000,"true"},
			{"rhsgref_ins_g_uaz_spg9",30000,"true"},
			{"rhsgref_ins_g_gaz66",25000,"true"},
			{"rhsgref_ins_g_gaz66_ammo",25000,"true"},
			{"rhsgref_ins_g_gaz66o",25000,"true"},
			{"rhsgref_ins_g_gaz66_flat",25000,"true"},
			{"rhsgref_ins_g_gaz66_r142",25000,"true"},
			{"rhsgref_ins_g_gaz66_ap2",25000,"true"},
			{"rhsgref_ins_g_gaz66_repair",25000,"true"},
			{"rhsgref_cdf_gaz66",25000,"true"},
			{"rhsgref_cdf_gaz66_ammo",25000,"true"},
			{"rhsgref_cdf_gaz66_flat",25000,"true"},
			{"rhsgref_cdf_gaz66o",25000,"true"},
			{"rhsgref_cdf_gaz66o_flat",25000,"true"},
			{"rhsgref_cdf_gaz66_r142",25000,"true"},
			{"rhsgref_cdf_gaz66_ap2",25000,"true"},
			{"rhsgref_cdf_gaz66_repair",25000,"true"},			
			{"rhsgref_ins_g_ural",30000,"true"},
			{"rhsgref_ins_g_ural_open",30000,"true"},
			{"rhsgref_ins_g_ural_work",30000,"true"},
			{"rhsgref_ins_g_ural_work_open",30000,"true"},
			{"rhsgref_cdf_ural",30000,"true"},
			{"rhsgref_cdf_ural_fuel",30000,"true"},
			{"rhsgref_cdf_ural_open",30000,"true"},					
			{"rhsgref_BRDM2UM",60000,"true"},
			{"rhsgref_BRDM2UM_ins_g",60000,"true"},		
			//unarmored
			{"rhsgref_ins_g_BM21",1600000,"true"},
			{"rhsgref_ins_g_ural_Zu23",120000,"true"},
			{"rhsgref_ins_g_gaz66_zu23",115000,"true"},
			{"rhsgref_cdf_reg_uaz_ags",25000,"true"},
			{"rhsgref_cdf_reg_uaz_dshkm",20000,"true"},
			{"rhsgref_cdf_reg_uaz_spg9",30000,"true"},
			{"rhsgref_cdf_reg_BM21",1600000,"true"},
			{"rhsgref_cdf_ural_Zu23",120000,"true"},
			{"rhsgref_cdf_gaz66_zu23",115000,"true"},
			//armored
			{"rhsgref_ins_g_bmd1",500000,"true"},
			{"rhsgref_ins_g_bmd1p",500000,"true"},
			{"rhsgref_ins_g_bmp1",500000,"true"},
			{"rhsgref_ins_g_bmp1d",500000,"true"},
			{"rhsgref_ins_g_bmp1k",500000,"true"},
			{"rhsgref_ins_g_bmp1p",500000,"true"},
			{"rhsgref_ins_g_bmp2e",550000,"true"},
			{"rhsgref_ins_g_bmp2",550000,"true"},
			{"rhsgref_ins_g_bmp2d",550000,"true"},
			{"rhsgref_ins_g_bmp2k",550000,"true"},
			{"rhsgref_ins_g_bmd2",550000,"true"},
			{"rhsgref_cdf_bmp1",500000,"true"},//$400k
			{"rhsgref_cdf_bmp1d",500000,"true"},
			{"rhsgref_cdf_bmp1k",500000,"true"},
			{"rhsgref_cdf_bmp1p",500000,"true"},
			{"rhsgref_cdf_bmd1",500000,"true"},
			{"rhsgref_cdf_bmd1k",500000,"true"},
			{"rhsgref_cdf_bmd1p",500000,"true"},
			{"rhsgref_cdf_bmd1pk",500000,"true"},
			{"rhsgref_cdf_bmp2e",550000,"true"},
			{"rhsgref_cdf_bmp2",550000,"true"},//$550k
			{"rhsgref_cdf_bmd2",550000,"true"},
			{"rhsgref_cdf_bmd2k",550000,"true"},
			{"rhsgref_cdf_bmp2d",550000,"true"},
			{"rhsgref_cdf_bmp2k",550000,"true"},
			{"rhsgref_ins_g_btr60",360000,"true"},//BTR-80 is $400k
			{"rhsgref_ins_g_btr70",380000,"true"},
			{"rhsgref_cdf_btr60",360000,"true"},
			{"rhsgref_cdf_btr70",380000,"true"},
			{"rhsgref_BRDM2",60000,"true"},
			{"rhsgref_BRDM2_ATGM",80000,"true"},
			{"rhsgref_BRDM2_HQ",60000,"true"},
			{"rhsgref_BRDM2_ins_g",60000,"true"},
			{"rhsgref_BRDM2_ATGM_ins_g",80000,"true"},
			{"rhsgref_BRDM2_HQ_ins_g",60000,"true"},
			{"rhsgref_cdf_zsu234",1500000,"true"},
			{"rhsgref_ins_g_t72ba",1200000,"true"},
			{"rhsgref_ins_g_t72bb",1200000,"true"},
			{"rhsgref_ins_g_t72bc",1200000,"true"},
			{"rhsgref_cdf_t72ba_tv",1200000,"true"},
			{"rhsgref_cdf_t72bb_tv",1200000,"true"},
			{"rhsgref_cdf_t80b_tv",1500000,"true"},
			{"rhsgref_cdf_t80bv_tv",1500000,"true"},				
			{"rhssaf_army_pts",100000,"true"},
				//Cargo Carriers
			{"rhssaf_m998_olive_2dr_halftop",60000,"true"},
			{"rhssaf_m998_olive_2dr_fulltop",60000,"true"},
			{"rhssaf_m1025_olive",60000,"true"},
			{"rhssaf_m1025_olive_m2",85000,"true"},
				//Tankoroni
			{"rhssaf_army_t72s",1200000,"true"},

		//turrets
			{"rhsgref_ins_g_2b14",22000,"true"},
			{"rhsgref_cdf_reg_M252",25000,"true"},
			{"rhsgref_cdf_Igla_AA_pod",120000,"true"},
			{"rhsgref_cdf_AGS30_TriPod",12000,"true"},
			{"rhsgref_cdf_DSHKM",10000,"true"},
			{"rhsgref_cdf_DSHKM_Mini_TriPod",10000,"true"},
			{"rhsgref_ins_NSV_TriPod",10000,"true"},
			{"rhsgref_cdf_NSV_TriPod",10000,"true"},
			{"rhsgref_cdf_SPG9",25000,"true"},
			{"rhsgref_cdf_SPG9M",25000,"true"},
			{"rhsgref_ins_g_d30",80000,"true"},
			{"rhsgref_ins_g_d30_at",80000,"true"},			
			{"rhsgref_cdf_reg_d30",80000,"true"},
			{"rhsgref_cdf_reg_d30_at",80000,"true"},	
			{"RHSgref_cdf_ZU23",90000,"true"}			
	    };
		spawnPoints[] =
		{
				{"Garage 1",	{"garage_1"}},
				{"Garage 2",	{"garage_2"}},
				{"Garage 3",	{"garage_3"}},
				{"Garage 4",	{"garage_4"}},
				{"Garage 5",	{"garage_5"}}
		};
	};
};

		class HG_boatShop 
	{
conditionToAccess = "true";
		
        class Civilian
	    {
	        displayName = "$STR_HG_SHOP_CIVILIAN";
		    vehicles[] =
		    {
			{"C_Rubberboat",10000,"true"},
			{"C_Scooter_Transport_01_F",100,"true"},//real price $5000-$18,000
		    {"C_Boat_Transport_02_F",15000,"true"},
			{"C_Boat_Civil_01_F",60000,"true"},//this is severely underpriced. Range was $60k to 280k.
		    };
			spawnPoints[] =
			{
				{"$STR_VEH_SPAWN",{"garage_5"}}

			};
	    };
	
	    class Military
	    {
	        displayName = "$STR_HG_SHOP_MILITARY";
		    vehicles[] =
		    {
			{"B_Lifeboat",10000,"true"},	
		    {"B_Boat_Transport_01_F",10000,"true"},		
			{"B_SDV_01_F",4300000,"true"},//real prices would be $10-20 mil or more. This was super conservative
			{"B_Boat_Armed_01_minigun_F",1900000,"true"}	
		    };
			spawnPoints[] =
			{
				{"$STR_VEH_SPAWN",{"garage_5"}}
			};
	    };
	};
	
		class HG_AIRSHOP
		{
		conditionToAccess = "true";
		
        class Civilian
	    {
	        displayName = "$STR_HG_SHOP_CIVILIAN";
		    vehicles[] =
		    {
			{"C_Heli_Light_01_civil_F",20000,"true"},
			{"C_Plane_Civil_01_F",30000,"true"},
			{"C_Plane_Civil_01_racing_F",30000,"true"}
		    };
			spawnPoints[] =
			{
				{"$STR_VEH_SPAWN",{"garage_5"}}
			};
	    };

	    class Military
	    {
	        displayName = "$STR_HG_SHOP_MILITARY";
		    vehicles[] =
		    {
			{"B_Heli_Attack_01_F",16000000,"true"},
			{"B_Heli_Transport_01_F",8000000,"true"},
			{"B_Heli_Transport_01_camo_F",8000000,"true"},
			{"B_Heli_Light_01_F",2000000,"true"},
			{"B_Heli_Light_01_armed_F",2500000,"true"},			
			{"B_Plane_CAS_01_F",18800000,"true"},//actual cost
			{"RHS_AH1Z",20000000,"true"},//$29,890,000 actual
			{"RHS_AH1Z_CS",20000000,"true"},
			{"RHS_AH1Z_GS",20000000,"true"},
			{"RHS_AH1Z_wd_CS",20000000,"true"},
			{"RHS_AH1Z_wd_GS",20000000,"true"},
			{"RHS_AH64D",24000000,"true"},
			{"RHS_AH64D_wd",24000000,"true"},
			{"RHS_AH64D_noradar_wd",24000000,"true"},
			{"RHS_AH64DGrey",24000000,"true"},
			{"RHS_AH64D_AA",24000000,"true"},//$35,500,000 actual
			{"RHS_AH64D_noradar_AA",24000000,"true"},
			{"RHS_AH64D_CS",24000000,"true"},
			{"RHS_AH64D_noradar_CS",24000000,"true"},
			{"RHS_AH64D_GS",24000000,"true"},
			{"RHS_AH64D_noradar_GS",24000000,"true"},
			{"RHS_AH64D_noradar",24000000,"true"},
			{"RHS_AH64D_noradar_wd_AA",24000000,"true"},
			{"RHS_AH64D_wd_CS",24000000,"true"},
			{"RHS_AH64D_noradar_wd_CS",24000000,"true"},
			{"RHS_AH64D_wd_GS",24000000,"true"},
			{"RHS_AH64D_noradar_wd_GS",22000000,"true"},
			{"RHS_MELB_AH6M",2250000,"true"},//4 occupants
			{"RHS_MELB_MH6M",2500000,"true"},//8 occupants
			{"RHS_MELB_H6M",2500000,"true"},//8 occupants			
			{"RHS_CH_47F_10",29810000,"true"},
			{"RHS_CH_47F",29810000,"true"},
			{"RHS_CH_47F_light",29810000,"true"},
			{"rhsusf_CH53E_USMC",36540000,"true"},
			{"RHS_UH1Y_FFAR",8500000,"true"},
			{"RHS_UH1Y",8500000,"true"},
			{"RHS_UH1Y_GS",8500000,"true"},
			{"RHS_UH1Y_UNARMED",8000000,"true"},
			{"RHS_UH60M",12000000,"true"},
			{"RHS_UH60M_MEV2",12000000,"true"},
			{"RHS_UH60M_MEV",12000000,"true"},//$17,440,000 actual
			{"RHS_UH1Y_FFAR_d",12710000,"true"},
			{"RHS_UH60M_d",17440000,"true"},
			{"RHS_UH60M_MEV2_d",17440000,"true"},
			{"RHS_UH1Y_d_GS",12710000,"true"},
			{"RHS_UH1Y_UNARMED_d",11439000,"true"},
			{"RHS_UH1Y_d",12710000,"true"},
			{"RHS_UH60M_MEV_d",17440000,"true"},
			{"RHS_A10",100000000,"true"},
			{"RHS_C130J",100000000,"true"},
			{"rhsusf_f22",200000000,"true"},
			{"rhsgref_ins_g_Mi8amt",11000000,"true"},
			{"rhsgref_cdf_Mi24D",12000000,"true"},
			{"rhsgref_cdf_Mi24D_early",11000000,"true"},
			{"rhsgref_mi24g_CAS",12000000,"true"},
			{"rhsgref_mi24g_FAB",12000000,"true"},
			{"rhsgref_mi24g_UPK23",12000000,"true"},
			{"rhsgref_cdf_Mi35_AT",13000000,"true"},
			{"rhsgref_cdf_Mi35",13000000,"true"},
			{"rhsgref_cdf_Mi35_UPK",13000000,"true"},
			{"rhsgref_cdf_reg_Mi8amt",11000000,"true"},
			{"rhsgref_cdf_reg_Mi17Sh",11000000,"true"},
			{"rhsgref_cdf_reg_Mi17Sh_FAB",11000000,"true"},
			{"rhsgref_cdf_reg_Mi17Sh_UPK",11000000,"true"},
			{"rhs_l159_CDF_CAP",1000000,"true"},
			{"rhs_l159_CDF_CAS",1000000,"true"},
			{"RHS_AN2",1000000,"true"},
			{"rhs_l159_CDF_plamen",1000000,"true"},
			{"rhs_l159_CDF",1000000,"true"},
			{"rhs_l39_cdf",1000000,"true"},
			{"rhsgref_cdf_su25",1000000,"true"},
			{"rhssaf_airforce_ht48",11000000,"true"}   //Kinda like an Mi18			
		    };
			spawnPoints[] =
			{
				{"$STR_VEH_SPAWN",{"garage_5"}}
			};
	    };
	};	