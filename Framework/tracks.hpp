class CfgMusic
{
	tracks[] = {};
	class hrd_win
	{
		// display name
		name	= "Horde Win";
		// filename, volume, pitch
		sound[]	= { "\music\round_win.ogg", db + 0, 1.0 };
	};	
	class hrd_start
	{
		// display name
		name	= "Horde Start";
		// filename, volume, pitch
		sound[]	= { "\music\round_start.ogg", db - 5, 1.0 };
	};
};