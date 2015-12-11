class CfgFunctions
{
	class f
	{
		class common
		{
			file = "core\common";
			class itemsArrayFromConfig {};
			class classProperties {};
			class getLoadout {};
			class setLoadout {};
			class positionToString {};
			class floatToString {};
			class validateDatabase {};
			class dbRead {};
			class dbWrite {};
			class dbWriteGeneric {};
			class createGridMarkers {};
			class spawnGridHandler {};
			class drawStaticBases {};
			class heldBy {};
			class playerExists {};
			class gridExists {};
			class buildVarsFromConfig {};
		};

		class rally
		{
			file = "core\rally";
			class createRallyPoint {};
			class waitForRally {};
		};

		class player
		{
			file = "core\player";
			class roleProps {};
			class showRoles {};
			class showArmory {};
			class assignRole {};
			class validatePlayer {};
			class createPlayer {};
			class loadPlayer {};
		};
	};
};
