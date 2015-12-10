/*
	Author: Kingsley
	Description: Creates a local animation set for when the unit is deploying a rally point
	Parameter(s):
		0: OBJECT - the unit that gets the animation
		1: SCALAR - the delay of the animation (in seconds)
	Returns: BOOLEAN - true once the animation set is finished
	Example: _bool = [player, 5] call f_fnc_waitForRally;
*/

private ["_unit","_delay"];

_unit = param [0, player];
_delay = param [1, 5];

if (local _unit) then {
	hint "Deploying rally point, please wait!";
	sleep _delay;
	_unit setVariable ["RALLY_COMPLETE", true, true];
	hint "Rally point deployed!";
};
