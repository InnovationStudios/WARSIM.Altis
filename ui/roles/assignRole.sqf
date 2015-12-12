private ["_display","_unit"];

disableSerialization;

_display = findDisplay 2000;
_unit = player;
_roleList = _display displayCtrl 1500;
_chooseRoleBtn = _display displayCtrl 1602;

_roleIndex = lbCurSel _roleList;
_item = _roleList lbData _roleIndex;
_loadout = (missionConfigFile >> "CfgWarsim" >> "roles" >> (str (side _unit)) >> _item >> "loadout") call BIS_fnc_getCfgData;

_unitXP = _unit getVariable ["XP", 0];
_roleXP = (missionConfigFile >> "CfgWarsim" >> "roles" >> (str (side _unit)) >> _item >> "minXPRequired") call BIS_fnc_getCfgData;
_diffXP = _roleXP - _unitXP;

if (_diffXP <= 0) then {
	[_unit, _item, _loadout] call f_fnc_assignRole;
};
