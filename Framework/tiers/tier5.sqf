_unis = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_I_G_resistanceLeader_F","U_I_CombatUniform","U_I_OfficerUniform","U_I_CombatUniform_shortsleeve","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_Rangemaster","U_O_SpecopsUniform_ocamo","U_B_CombatUniform_mcam_vest","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_BG_Guerilla1_1","U_BG_Guerrilla_6_1"];

_vests = ["V_PlateCarrierGL_blk","V_PlateCarrierGL_rgr","V_PlateCarrierGL_mtp","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_mtp","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierGL_tna_F","V_PlateCarrierSpec_tna_F"];


_backpacks = ["B_Kitbag_cbr","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg","B_Kitbag_tan"];

_headgears = ["H_HelmetB","H_HelmetB_black","H_HelmetB_camo","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_sand","H_HelmetB_snakeskin","H_HelmetO_ghex_F","H_HelmetLeaderO_ghex_F","H_HelmetO_ocamo","H_HelmetO_oucamo","H_HelmetLeaderO_ocamo","H_HelmetLeaderO_oucamo"];

_weaps = ["arifle_CTAR_blk_F","arifle_CTAR_ghex_F","arifle_CTAR_GL_blk_F","arifle_CTAR_GL_ghex_F","arifle_CTAR_GL_hex_F","arifle_CTAR_hex_F","arifle_CTARS_blk_F","arifle_CTARS_ghex_F","arifle_CTARS_hex_F","arifle_Katiba_C_F","arifle_Katiba_F","arifle_Katiba_GL_F","arifle_MX_F","arifle_MX_GL_Black_F","arifle_MX_GL_F","arifle_MX_SW_F","arifle_MXC_F","srifle_DMR_02_camo_F","srifle_DMR_02_F","srifle_DMR_02_sniper_F","srifle_DMR_03_F","srifle_DMR_03_khaki_F","srifle_DMR_03_multicam_F","srifle_DMR_03_tan_F","srifle_DMR_03_woodland_F","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","srifle_DMR_07_blk_F","srifle_EBR_F"];
//
if (MOD_hasRHS) then {
{_vests pushbackunique _x} foreach ["rhs_6b23_6sh116","rhs_6b23_6sh116_vog","rhs_6b23_digi_6sh92","rhs_6b23_digi_6sh92_spetsnaz2","rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_headset_spetsnaz","rhs_6b23_digi_6sh92_headset_mapcase","rhs_6b23_digi_6sh92_radio","rhs_6b23_digi_6sh92_Spetsnaz","rhs_6b23_digi_6sh92_vog","rhs_6b23_digi_6sh92_Vog_Spetsnaz","rhs_6b23_digi_6sh92_vog_headset","rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz"];
{_headgears pushbackunique _x} foreach ["rhs_6b26_green","rhs_6b26","rhs_6b27m_green","rhs_6b28_green","rhs_6b28_flora","rhs_6b47","rhs_6b7_1m"];
{_unis pushbackunique _x} foreach ["rhs_uniform_emr_des_patchless","rhs_uniform_vdv_emr_des","rhs_uniform_emr_patchless","rhs_uniform_msv_emr","rhs_uniform_vdv_emr","rhs_uniform_flora_patchless","rhs_uniform_flora_patchless_alt","rhs_uniform_flora","rhs_uniform_rva_flora","rhs_uniform_vdv_flora","rhs_uniform_vmf_flora","rhs_uniform_vmf_flora_subdued","rhs_uniform_gorka_r_g","rhs_uniform_gorka_r_y","rhs_uniform_mvd_izlom","rhs_uniform_m88_patchless","rhs_uniform_mflora_patchless","rhs_uniform_vdv_mflora"];
};
if (MOD_hasRHSUS) then {
{_vests pushbackunique _x} foreach ["rhsusf_spcs_ocp_rifleman_alt","rhsusf_spcs_ucp_rifleman_alt","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ucp_rifleman","rhsusf_spcs_ocp_saw","rhsusf_spcs_ucp_saw"];
{_headgears pushbackunique _x} foreach ["rhsusf_ach_bare","rhsusf_ach_bare_des","rhsusf_ach_bare_des_ess","rhsusf_ach_bare_des_headset","rhsusf_ach_bare_des_headset_ess","rhsusf_ach_bare_ess","rhsusf_ach_bare_headset","rhsusf_ach_bare_headset_ess","rhsusf_ach_bare_semi","rhsusf_ach_bare_semi_ess","rhsusf_ach_bare_semi_headset","rhsusf_ach_bare_semi_headset_ess","rhsusf_ach_bare_tan","rhsusf_ach_bare_tan_ess","rhsusf_ach_bare_tan_headset","rhsusf_ach_bare_tan_headset_ess","rhsusf_ach_bare_wood","rhsusf_ach_bare_wood_ess","rhsusf_ach_bare_wood_headset","rhsusf_ach_bare_wood_headset_ess","rhsusf_ach_helmet_M81","rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ESS_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_camo_ocp","rhsusf_ach_helmet_ocp_norotos","rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ESS_ucp","rhsusf_ach_helmet_headset_ucp","rhsusf_ach_helmet_headset_ess_ucp","rhsusf_ach_helmet_ucp_norotos"];
{_unis pushbackunique _x} foreach ["rhs_uniform_abu","rhs_uniform_acu_ucp","rhs_uniform_cu_ocp","rhs_uniform_cu_ocp_101st","rhs_uniform_cu_ocp_10th","rhs_uniform_cu_ocp_1stcav","rhs_uniform_cu_ocp_82nd","rhs_uniform_cu_ucp","rhs_uniform_cu_ucp_101st","rhs_uniform_cu_ucp_10th","rhs_uniform_cu_ucp_1stcav","rhs_uniform_cu_ucp_82nd","rhs_uniform_FROG01_d","rhs_uniform_FROG01_wd","rhs_uniform_g3_blk","rhs_uniform_g3_m81","rhs_uniform_g3_mc","rhs_uniform_g3_rgr","rhs_uniform_g3_tan"];
};
if (MOD_hasRHSGREF) then {
{_weaps pushbackunique _x} foreach ["rhs_weap_g36c"];
{_unis pushbackunique _x} foreach ["rhsgref_uniform_para_ttsko_mountain","rhsgref_uniform_para_ttsko_oxblood","rhsgref_uniform_para_ttsko_urban","rhsgref_uniform_vsr","rhsgref_uniform_ttsko_forest","rhsgref_uniform_ttsko_mountain","rhsgref_uniform_ttsko_urban","rhsgref_uniform_3color_desert","rhsgref_uniform_alpenflage","rhsgref_uniform_altis_lizard","rhsgref_uniform_altis_lizard_olive","rhsgref_uniform_dpm","rhsgref_uniform_dpm_olive","rhsgref_uniform_ERDL","rhsgref_uniform_flecktarn","rhsgref_uniform_flecktarn_full","rhsgref_uniform_og107","rhsgref_uniform_og107_erdl","rhsgref_uniform_olive","rhsgref_uniform_tigerstripe","rhsgref_uniform_reed","rhsgref_uniform_woodland","rhsgref_uniform_woodland_olive","rhsgref_uniform_specter"];
};
if (MOD_hasRHSSAF) then {
{_unis pushbackunique _x} foreach ["rhssaf_uniform_m10_digital","rhssaf_uniform_m10_digital_desert","rhssaf_uniform_m10_digital_summer","rhssaf_uniform_m10_digital_tan_boots","rhssaf_uniform_m93_oakleaf","rhssaf_uniform_m93_oakleaf_summer"];
};
if (MOD_hasSMA) then {
{_weaps pushbackunique _x} foreach ["SMA_MK16","SMA_Mk17_16","SMA_MK18BLK_GL","SMA_MK18TANBLK_GL","SMA_SAR21_F","SMA_AUG_A3_F","SMA_HK416GL","SMA_ACR","SMA_Steyr_AUG_F"];

};
if (MOD_hasNIA_SG) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_SG550_TAC","hlc_rifle_SG550_RIS","hlc_rifle_SG550_GL","hlc_rifle_SG551SB","hlc_rifle_SG553SB"];

};
if (MOD_hasNIA_g36) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_G36KV","hlc_rifle_G36C","hlc_rifle_G36KA1","hlc_rifle_G36E1","hlc_rifle_G36V"];

};
if (MOD_hasNIA_AUG) then {
{_weaps pushbackunique _x} foreach ["hlc_rifle_aug","hlc_rifle_aughbar","hlc_rifle_auga3","hlc_rifle_auga3_GL","hlc_rifle_auga3_b"];
};
_uni = _unis call bis_fnc_selectrandom;
_vest = _vests call bis_fnc_selectrandom;
_weap = _weaps call bis_fnc_selectrandom;
_headgear = _headgears call bis_fnc_selectrandom;
_backpack = _backpacks call bis_fnc_selectrandom;

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL. 
_this setrank "CAPTAIN";
_this forceadduniform _uni;
_this addvest _vest;
_this addbackpack _backpack;
_this addheadgear _headgear;
_mag = getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0;
_this addMagazines [getArray (configFile>> "CfgWeapons" >> _weap >> "magazines") select 0, 10];
_muzzles = getArray (configFile >> "CfgWeapons" >> (_weap) >> "muzzles");
if (count _muzzles > 1) then {	_this addMagazines ["1Rnd_HE_Grenade_shell", 4];};
_this addweapon _weap;
_this selectweapon _weap;
_this additem "SmokeShell";
_this additem "SmokeShell";
_this additem "HandGrenade";
_this additem "HandGrenade";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
_this addMagazines ["RPG7_F", 3];
_this addweapon "launch_RPG7_F";
_this enablefatigue false;
//_this call HG_fnc_aiUnitSetup;