if (isServer || isDedicated) then {
	private ["_unit"];

	_unit = _this;
	_checkID = [_unit, "players", "id", "STRING"] call f_fnc_dbRead;

	if (isNil "_checkID" || _checkID == "") then {
		// Player record doesn't exist, proceed to create new one
		_unit call f_fnc_createPlayer;
	} else {
		// Player record exists, proceed to load it
		_unit call f_fnc_loadPlayer;
	};
} else {
	[_this, "f_fnc_validatePlayer", false, false, true] call BIS_fnc_MP;
};
