private ["_display","_unit"];

disableSerialization;

_display = _this select 0;
_unit = player;
_roleList = _display displayCtrl 1500;
_content = _display displayCtrl 2202;

_roles = "true" configClasses (missionConfigFile >> "CfgWarsim" >> "roles" >> (str (side _unit)));

{
	_roleClass = configName _x;
	_roleName = (_x >> "name") call BIS_fnc_getCfgData;
	_index = _roleList lbAdd _roleName;
	_roleList lbSetData [_index, _roleClass];
} count _roles;

_content htmlLoad "config\roles\startup.html";
if (!ctrlHTMLLoaded _content) then {
	systemChat "config\roles\startup.html - LOADING FAILED";
};
