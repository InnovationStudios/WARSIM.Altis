/*
	Author: Kingsley
	Description:  Assigns role to given unit
	Parameter(s):
		0: OBJECT - player to assign role to
		1: STRING - role classname
		2: STRING - loadout path
	Returns: Nothing
	Example: [player, "MEDIC", "medic.sqf"] call f_fnc_assignRole;
*/

if (isServer || isDedicated) then {
	private ["_unit","_roleItem","_loadoutFile"];

	_unit = param [0, player];
	_roleItem = param [1, "DEFAULT"];
	_loadoutFile = param [2, ""];

	[_unit] execVM _loadoutFile;

	[_unit, "players", "role", _roleItem] call f_fnc_dbWrite;
	[_unit, "players", "loadout", ([_unit] call f_fnc_getLoadout)] call f_fnc_dbWrite;
	_unit setVariable ["PERS_ROLE", _roleItem, true];
} else {
	[_this, "f_fnc_assignRole", false, false, true] call BIS_fnc_MP;
};
