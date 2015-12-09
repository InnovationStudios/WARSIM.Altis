/*
	Author: Kingsley
	Description: Builds missionNamespace variables from config
	Parameter(s): None
	Returns: Nothing
	Example: call f_fnc_buildVarsFromConfig;
*/

if (isServer || isDedicated) then {
	// CfgWarsim >> common
	{
		_key = _x select 0;
		_value = _x select 1;
		_mnsName = format ["WS_COMMON_%1", toUpper _key];
		missionNamespace setVariable [_mnsName, _value, true];
	} forEach ((missionConfigFile >> "CfgWarsim" >> "common") call f_fnc_classProperties);

	// CfgWarsim >> common >> server
	{
		_key = _x select 0;
		_value = _x select 1;
		_mnsName = format ["WS_COMMON_SERVER_%1", toUpper _key];
		missionNamespace setVariable [_mnsName, _value, true];
	} forEach ((missionConfigFile >> "CfgWarsim" >> "common" >> "server") call f_fnc_classProperties);

	// CfgWarsim >> common >> grid
	{
		_key = _x select 0;
		_value = _x select 1;
		_mnsName = format ["WS_COMMON_GRID_%1", toUpper _key];
		missionNamespace setVariable [_mnsName, _value, true];
	} forEach ((missionConfigFile >> "CfgWarsim" >> "common" >> "grid") call f_fnc_classProperties);
} else {
	[_this, "f_fnc_buildVarsFromConfig", false, false, true] call BIS_fnc_MP;
};
