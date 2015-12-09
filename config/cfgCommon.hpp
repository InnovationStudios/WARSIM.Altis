class common
{
	debug = true;
	fatigue = true;
	startingXP = 0;
	startingBaseRadius = 2000;

	class server
	{
		addon = "inidbi"; // Name of the @iniDBI addon folder, without the @ symbol
		database = "WARSIM.Altis"; // Name of the database folder inside \@iniDBI\db\ (used for separating databases per map)
		class files
		{
			class players { filename = "tblPlayers"; };
			class objects { filename = "tblObjects"; };
			class markers { filename = "tblMarkers"; };
		};
	};

	class grid
	{
		refreshRate = 5;
	};
};
