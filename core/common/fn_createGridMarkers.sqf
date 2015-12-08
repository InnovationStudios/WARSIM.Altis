/*
	Author: Kingsley
	Description: Generate square grid markers around a center and radius.
	Arguments:
		0: ARRAY - position object
		1: SCALAR - radius
	Example: [ (getPos player), 500 ] call f_fnc_createGridMarkers;
*/

private ["_center", "_radius","_steps", "_radStep", "_pos", "_text", "_block"];

_center = param [0, (position player)];
_radius = param [1, 500];

for [{_r = _radius}, {_r > 0}, {_r = _r - 100}] do {
	_steps = floor ((2 * pi * _r) / 50); // 40
	_radStep = 360 / _steps;

	for [{_i = 0}, {_i < 360}, {_i = _i + _radStep}] do {
		for [{_x = 0}, {_x <= 0}, {_x = _x + 100}] do {
			_pos = [_center, _r, _i] call BIS_fnc_relPos;
			_px = floor ((_pos select 0) / 100);
			_py = floor ((_pos select 1) / 100);
			_text = format ["Grid_%1_%2", _px, _py];
			_block = createMarker[_text, [(_px * 100) + 50, (_py * 100) + 50, 0]];
			_block setMarkerShape "RECTANGLE";
			_block setMarkerSize [50, 50];
			_block setMarkerColor "ColorUNKNOWN"; // Need correct colour
			_block setMarkerAlpha 0.5;
		};
	};
};
