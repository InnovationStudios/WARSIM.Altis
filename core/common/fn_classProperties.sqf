/*
	Author: Kingsley
	Description: Creates an array of class properties containing key and value pairs
	Parameter(s): CONFIG - config to return props for
	Returns: ARRAY in format [ [className, classValue], [className, classValue], ... ]
	Example: (missionConfigFile >> "CfgWarsim" >> "common") call f_fnc_classProperties;
*/

private ["_config","_output","_props"];

_config = _this;
_output = [];

if (!isClass _config) exitWith {};

{
	_output pushBack [(configName _x), (_x call BIS_fnc_getCfgData)];
} forEach (configProperties [_config]);

_output
