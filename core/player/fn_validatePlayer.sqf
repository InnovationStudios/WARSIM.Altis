if (isServer) then {
	private ["_unit"];

	_unit = _this;
	[_unit] call f_fnc_getLoadout; // Set the loadout in the unit's namespace
	_checkID = [_unit, "players", "id", "STRING"] call f_fnc_dbRead;

	if (isNil "_checkID" || _checkID == "") then {
		// Player record doesn't exist, proceed to create new one
		_unit call f_fnc_createPlayer;
	} else {
		// Player record exists, proceed to load it
		_unit call f_fnc_loadPlayer;
	};
} else {
	[_this] call f_fnc_getLoadout; // Set the loadout in the unit's namespace
	[_this, "f_fnc_validatePlayer", false, false, true] call BIS_fnc_MP;
};
