private ["_display","_unit"];

disableSerialization;

_display = findDisplay 2000;
_control = _this select 0;
_index = _this select 1;
_unit = player;
_content = _display displayCtrl 2202;
_chooseRoleBtn = _display displayCtrl 1602;

_item = _control lbData _index;

_htmlFile = (missionConfigFile >> "CfgWarsim" >> "roles" >> (str (side _unit)) >> _item >> "description") call BIS_fnc_getCfgData;
_content htmlLoad _htmlFile;
if (!ctrlHTMLLoaded _content) then {
	systemChat (format ["%1 - LOADING FAILED", _htmlFile]);
};

_unitXP = _unit getVariable ["XP", 0];
_roleXP = (missionConfigFile >> "CfgWarsim" >> "roles" >> (str (side _unit)) >> _item >> "minXPRequired") call BIS_fnc_getCfgData;
_diffXP = _roleXP - _unitXP;

if (_diffXP > 0) then {
	_chooseRoleBtn ctrlSetText (format ["%1 XP REQUIRED", _diffXP]);
	_chooseRoleBtn ctrlEnable false;
} else {
	_chooseRoleBtn ctrlSetText "CHOOSE ROLE";
	_chooseRoleBtn ctrlEnable true;
};
