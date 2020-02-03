class Params
{
        // paramsArray[0]
       class initialWeatherParam //starting weather
	   { 
          title = $STR_SYSTEM_DES_weather_0;
          values[] = {0,1,2,3,4};
          texts[] = {$STR_SYSTEM_DES_weather_1,$STR_SYSTEM_DES_weather_2,$STR_SYSTEM_DES_weather_3,$STR_SYSTEM_DES_weather_4,$STR_SYSTEM_DES_weather_5};
          default = 4;
       };
  class playerfatigue
	{
          title = $STR_SYSTEM_DES_0;
          values[] = {0,1};
          texts[] = {$STR_SYSTEM_DES_disable,$STR_SYSTEM_DES_enable};
          default = 0;
	};		   
	///setUnitRecoilCoefficient
  class playerrecoil
	{
          title = $STR_SYSTEM_DES_1;
          values[] = {0,25,50,75,100};
          texts[] = {"0","25%","50%","75%","100%"};
          default = 50;
	};	

	  class resetxp
	{
          title = $STR_SYSTEM_DES_2;
          values[] = {0,1};
          texts[] = {$STR_SYSTEM_DES_disable,$STR_SYSTEM_DES_enable};
          default = 0;
	};		
		  class killreward
	{
          title = $STR_SYSTEM_DES_3;
          values[] = {50,100,150,200,250,300};
          texts[] = {50,100,150,200,250,300};
          default = 50;
	};		   
				  class roundinterval
	{
          title = $STR_SYSTEM_DES_4;
          values[] = {10,15,30,45,60,90,120};
          texts[] = {10,15,30,45,60,90,120};
          default = 60;
	};		  
					  class wavecount
	{
          title = $STR_SYSTEM_DES_5;
          values[] = {10,12,15,20,25,30,999999};
          texts[] = {10,12,15,20,25,30,999999};
          default = 15;
	};	
						  class enemycount
	{
          title = $STR_SYSTEM_DES_6;
          values[] = {2,3,4,5,6,7,8};
          texts[] = {2,3,4,5,6,7,8};
          default = 2;
	};	
	
						  class enemydrop
	{
          title = $STR_SYSTEM_DES_8;
          values[] = {0,1};
          texts[] = {$STR_SYSTEM_DES_disable,$STR_SYSTEM_DES_enable};
          default = 0;
	};	
							  class enemyveh
	{
          title = $STR_SYSTEM_DES_13;
          values[] = {0,1};
          texts[] = {$STR_SYSTEM_DES_disable,$STR_SYSTEM_DES_enable};
          default = 0;
	};	
			   	   	      class magrepack //enable or disable magazine repack scripts
					  {
          title = $STR_SYSTEM_DES_7;
          values[] = {0,1};
          texts[] = {$STR_SYSTEM_DES_disable,$STR_SYSTEM_DES_enable};
          default = 1;
       };		  
	   class aiskilllevel
	{
          title = $STR_SYSTEM_DES_9;
          values[] = {0,2,4,6,8,10};
          texts[] = {0,0.2,0.4,0.6,0.8,1};
          default = 2;
	};		  
	   class executerunners
	{
          title = $STR_SYSTEM_DES_14;
          values[] = {0,1};
          texts[] = {$STR_SYSTEM_DES_disable,$STR_SYSTEM_DES_enable};
          default = 0;
	};	  
	   class wavereward
	{
          title = $STR_SYSTEM_DES_10;
          values[] = {100,200,300,500,1000,1500,2000,2500,3000,3500,4000,4500,5000};
          texts[] = {100,200,300,500,1000,1500,2000,2500,3000,3500,4000,4500,5000};
          default = 500;
	};	  
	   class wavexp
	{
          title = $STR_SYSTEM_DES_12;
          values[] = {0,50,100,150,200};
          default = 50;
	};	  
	   class starthour
	{
          title = $STR_SYSTEM_DES_11;
          values[] = {0,6,9,12,18};
          texts[] = {"00:00", "06:00","09:00","12:00","18:00"};
          default = 9;
	};	  
	  class space1
	{
          title = "";
          values[] = {0};
          texts[] = {""};
          default = "";
	};	
class ReviveMode
	{
	title = $STR_A3_ReviveMode;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_Disabled,
		$STR_A3_EnabledForAllPlayers
	};
	default = 1;
	function = "bis_fnc_paramReviveMode";
	};

class ReviveDuration
{
	title = $STR_A3_ReviveDuration;
	isGlobal = 1;

	values[] = {
		-100,
		6,
		8,
		10,
		12,
		15,
		20,
		25,
		30
	};
	texts[] = {
		$STR_A3_MissionDefault,
		6,
		8,
		10,
		12,
		15,
		20,
		25,
		30
	};
	default = -100;
	function = "bis_fnc_paramReviveDuration";
};

class ReviveRequiredTrait
{
	title = $STR_A3_RequiredTrait;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_None,
		$STR_A3_Medic
	};
	default = -100;
	function = "bis_fnc_paramReviveRequiredTrait";
};

class ReviveMedicSpeedMultiplier
{
	title = $STR_A3_RequiredTrait_MedicSpeedMultiplier;
	isGlobal = 1;

	values[] = {
		-100,
		1,
		1.5,
		2,
		2.5,
		3
	};
	texts[] = {
		$STR_A3_MissionDefault,
		"1x",
		"1.5x",
		"2x",
		"2.5x",
		"3x"
	};
	default = -100;
	function = "bis_fnc_paramReviveMedicSpeedMultiplier";
};

class ReviveRequiredItems
{
	title = $STR_A3_RequiredItems;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1,
		2
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_None,
		$STR_A3_Medikit,
		$STR_A3_FirstAidKitOrMedikit
	};
	default = -100;
	function = "bis_fnc_paramReviveRequiredItems";
};

class ReviveRequiredItemsFakConsumed
{
	title = $STR_A3_RequiredItems_ConsumeFirstAidKit;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_lib_info_no,
		$STR_lib_info_yes
	};
	default = -100;
	function = "bis_fnc_paramReviveRequiredItemsFakConsumed";
};

class UnconsciousStateMode
{
	title = $STR_A3_IncapacitationMode;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1,
		2
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_Basic,
		$STR_A3_Advanced,
		$STR_A3_Realistic
	};
	default = -100;
	function = "bis_fnc_paramReviveUnconsciousStateMode";
};

class ReviveBleedOutDuration
{
	title = $STR_A3_BleedOutDuration;
	isGlobal = 1;

	values[] = {
		-100,
		10,
		15,
		20,
		30,
		45,
		60,
		90,
		180
	};
	texts[] = {
		$STR_A3_MissionDefault,
		10,
		15,
		20,
		30,
		45,
		60,
		90,
		180
	};
	default = -100;
	function = "bis_fnc_paramReviveBleedOutDuration";
};

class ReviveForceRespawnDuration
{
	title = $STR_A3_ForceRespawnDuration;
	isGlobal = 1;

	values[] = {
		-100,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10
	};
	texts[] = {
		$STR_A3_MissionDefault,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10
	};
	default = -100;
	function = "bis_fnc_paramReviveForceRespawnDuration";
};	   
};