class GUI_Roles
{
	idd = 2000;
	movingenable = false;

	onLoad = "null = _this execVM 'ui\roles\init.sqf'";

	class controls
	{
		class GUI_Back: IGUIBack
		{
			idc = 2200;
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.2492 * safezoneH + safezoneY;
			w = 0.412603 * safezoneW;
			h = 0.5016 * safezoneH;
		};
		class GUI_Header: WS_Header
		{
			idc = 2201;
			text = "ROLES"; //--- ToDo: Localize;
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.412603 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class GUI_RoleList: RscListbox
		{
			idc = 1500;
			x = 0.298856 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.159884 * safezoneW;
			h = 0.484 * safezoneH;
			onLBSelChanged = "null = _this execVM 'ui\roles\selChanged.sqf'";
		};
		class GUI_BtnClose: RscButton
		{
			idc = 1600;
			text = "Close"; //--- ToDo: Localize;
			x = 0.654726 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.0515754 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0";
		};
		class GUI_Spacer: RscButtonSpacer
		{
			idc = 1601;
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.359996 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class GUI_Content: RscHTML
		{
			idc = 2202;
			x = 0.463897 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.237247 * safezoneW;
			h = 0.33 * safezoneH;
		};
		class GUI_Loadouts: RscListbox
		{
			idc = 1501;
			x = 0.463897 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.237247 * safezoneW;
			h = 0.11 * safezoneH;
		};
		class GUI_BtnAssign: RscButton
		{
			idc = 1602;
			text = "Choose Role"; //--- ToDo: Localize;
			x = 0.463897 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.237247 * safezoneW;
			h = 0.022 * safezoneH;
			action = "null = [] execVM 'ui\roles\assignRole.sqf'";
		};
	};
};
