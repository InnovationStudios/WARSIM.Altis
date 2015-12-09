if (isServer) then {
	private ["_unit"];

	_unit = _this;
	[_unit] call f_fnc_getLoadout; // Set the loadout in the unit's namespace
	_exists = _unit call f_fnc_playerExists;

	if (!_exists) then {
		_unit call f_fnc_createPlayer;
	} else {
		_unit call f_fnc_loadPlayer;
	};
} else {
	[_this] call f_fnc_getLoadout; // Set the loadout in the unit's namespace
	[_this, "f_fnc_validatePlayer", false, false, true] call BIS_fnc_MP;
};
