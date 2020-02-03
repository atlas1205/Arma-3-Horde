a_RIFLES = [];
a_GLRIFLES = [];
a_SNIPERFIFLES = [];
a_MGS = [];
a_SMGS = [];
a_ROCKETLAUNCHERS = [];
a_MISSLELAUNCHERS = [];
a_HGUNS = [];

for "_i" from 0 to (count (configFile >> "CfgWeapons") - 1)  do
{
	_entry = (configFile >> "CfgWeapons") select _i;
	if (isClass _entry) then
	{
		_entry = configName _entry;
		_cursor = getText (configfile >> "CfgWeapons" >> _entry >> "cursor");
		_model = getText (configfile >> "CfgWeapons" >> _entry >> "model");
		_scope = getNumber (configfile >> "CfgWeapons" >> _entry >> "scope");

		if( (_scope > 0) && { ! ( (toLower _model) in ["","\a3\weapons_f\empty","a3\weapons_f\empty","\a3\weapons_f\empty.p3d","a3\weapons_f\empty.p3d"]) } ) then
		{
			switch _cursor do
			{
				case "arifle":
				{
					if(count getArray (configFile>> "CfgWeapons" >> _entry >> "muzzles") > 1)then
					{
						a_GLRIFLES = a_GLRIFLES + [format ["%1", _entry]];
					}
					else
					{
						a_RIFLES = a_RIFLES + [format ["%1", _entry]];
					};
				};
				case "srifle":
				{
					a_SNIPERFIFLES = a_SNIPERFIFLES + [format ["%1", _entry]];
				};
				case "mg":
				{
					a_MGS = a_MGS + [format ["%1", _entry]];
				};
				case "smg":
				{
					a_SMGS = a_SMGS + [format ["%1", _entry]];
				};
				case "hgun":
				{
					a_HGUNS = a_HGUNS + [format ["%1", _entry]];
				};
				case "rocket":
				{
					a_ROCKETLAUNCHERS = a_ROCKETLAUNCHERS + [format ["%1", _entry]];
				};
				case "missile":
				{
					a_MISSLELAUNCHERS = a_MISSLELAUNCHERS + [format ["%1", _entry]];
				};
			};
		};
	};
};

a_SECONDARY = a_ROCKETLAUNCHERS + a_MISSLELAUNCHERS;
a_PRIMARY = a_RIFLES + a_GLRIFLES + a_SNIPERFIFLES + a_MGS + a_SMGS;
publicvariable "a_PRIMARY";
publicvariable "a_SECONDARY";