class common
{
	// Debug - show debug messages (for developers)
	debug = true;

	// Fatigue - enable/disable fatigue/stamina
	fatigue = true;

	// Starting XP - how much XP do new players start with
	startingXP = 0;

	// Starting Base Radius - Starting static base protection radius
	startingBaseRadius = 2000;

	class server
	{
		// Addon - name of the @iniDBI addon folder, without the @ symbol
		addon = "inidbi";

		// Database - name of the database folder inside \@iniDBI\db\ (used for separating databases per map)
		database = "WARSIM.Altis";

		class files
		{
			class players { filename = "tblPlayers"; };
			class objects { filename = "tblObjects"; };
			class markers { filename = "tblMarkers"; };
			class grid { filename = "tblGrid"; };
			class rally { filename = "tblRally"; };
		};
	};

	class grid
	{
		// Refresh Rate - update territory grid every X seconds (lower = poor FPS)
		refreshRate = 5;
	};

	class rally
	{
		// Time it takes (in seconds) to deploy a rally point
		deployTime = 5;

		// Territory Radius - how much territory should this generate (in meters)
		territoryRadius = 200;

		// Objects to spawn for rally points (separated by side)
		objectClassnames_WEST[] = {"Land_TentDome_F","Flag_NATO_F"};
		objectClassnames_EAST[] = {"Land_TentDome_F","Flag_CSAT_F"};
		objectClassnames_GUER[] = {"Land_TentDome_F","Flag_AAF_F"};
	};
};
