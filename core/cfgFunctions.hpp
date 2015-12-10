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
			class createGridMarkers {};
			class spawnGridHandler {};
			class drawStaticBases {};
			class heldBy {};
			class playerExists {};
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
			class assignRole {};
			class validatePlayer {};
			class createPlayer {};
			class loadPlayer {};
		};
	};
};
