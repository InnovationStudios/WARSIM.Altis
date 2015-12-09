/*
	Author: Kingsley
	Description: Checks if player exists in database
	Parameter(s): OBJECT - player
	Returns: BOOLEAN - true (player exists) / false (player doesn't exist)
	Example: _exists = player call f_fnc_playerExists;
*/

if (isServer) then {
	_unit = _this;
	_ret = false;

	_checkID = [_unit, "players", "id", "STRING"] call f_fnc_dbRead;

	if (isNil "_checkID" || _checkID == "") then {
		_unit setVariable ["DIAG_EXISTS", false, true];
		_ret = false;
	} else {
		_unit setVariable ["DIAG_EXISTS", true, true];
		_ret = true;
	};

	_ret
} else {
	[_this, "f_fnc_playerExists", false, false, true] call BIS_fnc_MP;
	waitUntil {!isNull (_this getVariable ["DIAG_EXISTS", null])};
	(_this getVariable ["DIAG_EXISTS", null])
};
