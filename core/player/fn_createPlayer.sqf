if (isServer || isDedicated) then {
	private ["_unit"];

	_unit = _this;
	_loadout = _unit getVariable ["PERS_LOADOUT", []];
	_puid = getPlayerUID _unit;
	_profileName = _unit getVariable ["profileName", ""];
	if (_profileName == "") exitWith {};
	_unitFileName = format["%1_%2_%3", _puid, (_profileName call iniDB_CRC32), (toUpper (str (side _unit)))];
	_startXP = (missionConfigFile >> "CfgWarsim" >> "common" >> "startingXP") call BIS_fnc_getCfgData;

	[_unit, "players", "id", _unitFileName] call f_fnc_dbWrite;
	[_unit, "players", "position", ((getPos _unit) call f_fnc_positionToString)] call f_fnc_dbWrite;
	[_unit, "players", "direction", (getDir _unit)] call f_fnc_dbWrite;
	[_unit, "players", "loadout", _loadout] call f_fnc_dbWrite;
	[_unit, "players", "xp", _startXP] call f_fnc_dbWrite;
	[_unit, "players", "role", "DEFAULT"] call f_fnc_dbWrite;

	_unit setVariable ["PERS_ID", _unitFileName, true];
	_unit setVariable ["PERS_POSITION", ((getPos _unit) call f_fnc_positionToString), true];
	_unit setVariable ["PERS_DIRECTION", (getDir _unit), true];
	_unit setVariable ["PERS_LOADOUT", _loadout, true];
	_unit setVariable ["PERS_XP", _startXP, true];
	_unit setVariable ["PERS_ROLE", "DEFAULT", true];
} else {
	[_this, "f_fnc_createPlayer", false, false, true] call BIS_fnc_MP;
};
