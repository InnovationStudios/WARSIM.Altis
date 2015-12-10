/*
	Author: Kingsley
	Description: Write data to the database
	Parameter(s):
		0: STRING - the index string
		1: STRING - The database class name (CfgWarsim >> common >> server >> files >> [this name])
		2: STRING - Write the value to this key
		3: ANY - Value to write (STRING, ARRAY, SCALAR)
	Returns: Return value of parameter 2
	Example: ["GRID_X_X", "grid", "position", (getPos GRID_X_X)] call s_fnc_dbWriteGeneric;
*/

if (!isServer) exitWith {};

private ["_unit", "_file", "_key", "_value", "_puid", "_profileName", "_unitFileName", "_database", "_filename", "_filePath"];

_index = _this select 0;
_file = _this select 1;
_key = _this select 2;
_value = _this select 3;

_database = (missionConfigFile >> "CfgWarsim" >> "common" >> "server" >> "database") call BIS_fnc_getCfgData;
_filename = (missionConfigFile >> "CfgWarsim" >> "common" >> "server" >> "files" >> _file >> "filename") call BIS_fnc_getCfgData;
_filePath = format ["%1\%2", _database, _filename];

[_filePath, _index, _key, _value] call iniDB_write
