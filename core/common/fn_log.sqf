/*
	Author: Kingsley
	Description: Logs texts in the systemChat for debug
	Parameter(s): ANY - variable or text to log
	Returns: Nothing
	Example: objNull call f_fnc_log; "test" call f_fnc_log;
*/

if (WS_COMMON_DEBUG) then {
	diag_log (str _this);
	systemChat (str _this);
};
