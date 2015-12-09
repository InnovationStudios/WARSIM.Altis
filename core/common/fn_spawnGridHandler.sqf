/*
	Author: Kingsley
	Description: Handles each grid marker and its territory colour
	Parameter(s): None
	Example: call f_fnc_spawnGridHandler;
*/

[] spawn {
	if (!isServer) exitWith {};
	_refreshRate = (missionConfigFile >> "CfgWarsim" >> "common" >> "grid" >> "refreshRate") call BIS_fnc_getCfgData;
	while {true} do {
		{
			if (alive _x) then {
				_pos = getPos _x;
				_px = floor ((_pos select 0) / 100);
				_py = floor ((_pos select 1) / 100);
				_pos2 = [(_px * 100) + 50, (_py * 100) + 50, 0];
				_text = format ["Grid_%1_%2", _px, _py];

				if (getMarkerColor _text == "") then {
					// Marker not found
					_block = createMarker[_text, _pos2];
					_block setMarkerShape "RECTANGLE";
					_block setMarkerSize [50, 50];
					_block setMarkerColor (format ["Color%1", (side _x)]);
					if ( [_text, _pos] call BIS_fnc_inTrigger ) then {
						_winner = [_pos2, 100] call f_fnc_heldBy;
						_winningSide = _winner select 0;
						_winningCount = _winner select 1;
						_alpha = (_winningCount / 100) * 10;
						if (_alpha < 0.5) then {_alpha = 0.5};
						_block setMarkerAlpha _alpha;
					};
				} else {
					// Marker found
					if ( [_text, _pos] call BIS_fnc_inTrigger ) then {
						_winner = [_pos2, 100] call f_fnc_heldBy;
						_winningSide = _winner select 0;
						_winningCount = _winner select 1;
						_alpha = (_winningCount / 100) * 10;
						if (_alpha < 0.5) then {_alpha = 0.5};
						_text setMarkerAlpha _alpha;
						switch (_winningSide) do {
							case (west): { _text setMarkerColor "ColorWEST"; };
							case (east): { _text setMarkerColor "ColorEAST"; };
							case (resistance): { _text setMarkerColor "ColorGUER"; };
						};
					};
				};
			};
		} count allUnits;

		sleep _refreshRate;
	};
};
