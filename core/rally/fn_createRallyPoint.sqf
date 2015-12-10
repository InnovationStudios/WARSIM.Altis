/*
	Author: Kingsley
	Description: Creates a rally point at given position
	Parameter(s):
		0: OBJECT - player that is requesting the rally point
		1: ARRAY - position of rally point
	Returns: BOOLEAN - true once rally point is deployed
	Example: [player, (getPos player)] call f_fnc_createRallyPoint;
*/

if (isServer || isDedicated) then {
	private ["_unit","_pos"];

	_unit = param [0, player];
	_pos = param [0, (getPos player)];

	[_unit, "rally", "position", (_pos call f_fnc_positionToString)] call f_fnc_dbWrite;
	[_unit, "rally", "side", (side _unit)] call f_fnc_dbWrite;

	_deployDelay = (missionConfigFile >> "CfgWarsim" >> "common" >> "rally" >> "deployTime") call BIS_fnc_getCfgData;
	_objectClassnames = (missionConfigFile >> "CfgWarsim" >> "common" >> "rally" >> (format ["objectClassnames_%1", (side _unit)])) call BIS_fnc_getCfgData;

	_deployDelay remoteExec ["f_fnc_waitForRally", _unit];

	sleep _deployDelay;

	{
	    _obj = createVehicle [_x, _pos, [], 5];
	} forEach _objectClassnames;
} else {
	_this remoteExec ["f_fnc_createRallyPoint", 2];
};
