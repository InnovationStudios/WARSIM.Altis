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
for "_i" from 1 to 4 do {this addItemToUniform "FirstAidKit";};
this addItemToUniform "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToUniform "Chemlight_blue";};
this addVest "V_PlateCarrier1_rgr";
for "_i" from 1 to 8 do {this addItemToVest "7Rnd_408_Mag";};
for "_i" from 1 to 4 do {this addItemToVest "16Rnd_9x21_Mag";};
this addGoggles "G_Bandanna_oli";
this addWeapon "srifle_LRR_F";
this addPrimaryWeaponItem "optic_LRPS";
this addWeapon "hgun_P07_F";
this addWeapon "Binocular";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGoggles";
