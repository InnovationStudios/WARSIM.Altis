this = _this select 0;
if (!local this) exitWith {};

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;
this forceAddUniform "U_B_FullGhillie_lsh";
this addItemToUniform "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {this addItemToUniform "HandGrenade";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
this addVest "V_PlateCarrier1_rgr";
for "_i" from 1 to 4 do {this addItemToVest "FirstAidKit";};
for "_i" from 1 to 6 do {this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 4 do {this addItemToVest "30Rnd_65x39_caseless_mag_Tracer";};
this addGoggles "G_Bandanna_oli";
this addWeapon "arifle_MX_F";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_Hamr";
this addPrimaryWeaponItem "bipod_01_F_snd";
this addWeapon "hgun_P07_F";
this addWeapon "Rangefinder";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGoggles";
