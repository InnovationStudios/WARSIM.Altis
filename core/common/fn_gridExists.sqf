/*
	Author: Kingsley
	Description: Check if grid marker exists in database
	Parameter(s): ARRAY - position of the grix (_px/_py)
	Returns: BOOLEAN - true if exists, false if not
	Example: _exists = [1234, 5678] call f_fnc_gridExists;
*/

if (isServer || isDedicated) then {
	_pos = _this;
	_ret = false;

	_checkID = [_pos, "grid", "position", "STRING"] call f_fnc_dbRead;

	if (isNil "_checkID" || _checkID == "") then {
		_ret = false;
	} else {
		_ret = true;
	};

	_ret
} else {
	[_this, "f_fnc_gridExists", false, false, true] call BIS_fnc_MP;
};
