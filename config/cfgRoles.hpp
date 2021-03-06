/*
	Notes:
		- Do not delete the default classes (you can change the attributes, just not the classname)
		- Each role class much have a unique classname
*/

class ROLES
{
	class WEST
	{
		class DEFAULT
		{
			name = "Rifleman";
			minXPRequired = 0;
			description = "At the forefront of the battlefield, medics provide every soldier with the means to get back in the fight. Your main duties are to heal and revive fallen comrades.";
			loadout = "config\roles\west\rifleman.sqf";
			features[] = {"Heal players to 100% health","Revive players 200% faster","Extra 250 XP per revive"};
		};
		class MEDIC
		{
			name = "Medic";
			minXPRequired = 0;
			description = "config\roles\west\medic.html";
			loadout = "config\roles\west\medic.sqf";
		};
		class MACHINEGUNNER
		{
			name = "Machinegunner";
			minXPRequired = 0;
			description = "config\roles\west\machinegunner.html";
			loadout = "config\roles\west\machinegunner.sqf";
		};
		class ENGINEER
		{
			name = "Engineer";
			minXPRequired = 1500;
			description = "config\roles\west\engineer.html";
			loadout = "config\roles\west\engineer.sqf";
		};
		class MARKSMAN
		{
			name = "Marksman";
			minXPRequired = 3000;
			description = "config\roles\west\marksman.html";
			loadout = "config\roles\west\marksman.sqf";
		};
		class PILOT_R
		{
			name = "Pilot (Rotary)";
			minXPRequired = 10000;
			description = "config\roles\west\pilot_r.html";
			loadout = "config\roles\west\pilot_r.sqf";
		};
		class PILOT_FW
		{
			name = "Pilot (Fixed Wing)";
			minXPRequired = 15000;
			description = "config\roles\west\pilot_fw.html";
			loadout = "config\roles\west\pilot_fw.sqf";
		};
		class SNIPER
		{
			name = "Sniper";
			minXPRequired = 20000;
			description = "config\roles\west\sniper.html";
			loadout = "config\roles\west\sniper.sqf";
		};
		class SPOTTER
		{
			name = "Spotter";
			minXPRequired = 20000;
			description = "config\roles\west\spotter.html";
			loadout = "config\roles\west\spotter.sqf";
		};
		class UAV_OPERATOR
		{
			name = "UAV Operator";
			minXPRequired = 25000;
			description = "config\roles\west\uav.html";
			loadout = "config\roles\west\uav.sqf";
		};
	};
	class EAST
	{
	};
	class GUER
	{
	};
};
