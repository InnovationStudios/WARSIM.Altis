/*
	Author: Kingsley
	Description: Generate square grid markers around a center and radius.
	Arguments:
		0: ARRAY - position object
		1: SCALAR - radius
		2: STRING - side for the marker colour (west, east, guer, unknown)
	Example: [ (getPos player), 500, "WEST" ] call f_fnc_createGridMarkers;
*/

if (!isServer) exitWIth {};

private ["_center", "_radius","_steps", "_radStep", "_pos", "_text", "_block"];

_center = param [0, (position player)];
_radius = param [1, 500];
_side = param [2, "UNKNOWN"];

for [{_r = _radius}, {_r > 0}, {_r = _r - 100}] do {
	_steps = floor ((2 * pi * _r) / 50);
	_radStep = 360 / _steps;

	for [{_i = 0}, {_i < 360}, {_i = _i + _radStep}] do {
		for [{_x = 0}, {_x <= 0}, {_x = _x + 100}] do {
			_pos = [_center, _r, _i] call BIS_fnc_relPos;
			_px = floor ((_pos select 0) / 100);
			_py = floor ((_pos select 1) / 100);
			_pxysq = [(_px * 100) + 50, (_py * 100) + 50, 0];
			_text = format ["Grid_%1_%2", _px, _py];
			_block = createMarker[_text, _pxysq];
			_block setMarkerShape "RECTANGLE";
			_block setMarkerSize [50, 50];
			_block setMarkerColor (format ["Color%1", _side]);
			_block setMarkerAlpha 1;

			_index = format ["Grid_%1_%2", (_pxysq select 0), (_pxysq select 1)];
			[_index, "grid", "position", _pxysq] call f_fnc_dbWriteGeneric;
			[_index, "grid", "side", str _side] call f_fnc_dbWriteGeneric;
			[_index, "grid", "alpha", 1] call f_fnc_dbWriteGeneric;
		};
	};
};
