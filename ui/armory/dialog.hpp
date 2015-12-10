class GUI_Armory
{
	idd = 4000;
	movingenable = false;

	onLoad = "null = _this execVM 'ui\armory\init.sqf'";

	class controls
	{
		class GUI_Back: IGUIBack
		{
			idc = -1;
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.2492 * safezoneH + safezoneY;
			w = 0.412603 * safezoneW;
			h = 0.5016 * safezoneH;
		};
		class GUI_Header: WS_Header
		{
			idc = -1;
			text = "WARSIM ARMORY";
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.412603 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class GUI_BtnClose: RscButton
		{
			idc = 1600;
			text = "Close";
			x = 0.654725 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.0515754 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0";
		};
		class GUI_BtnSpacer: RscButtonSpacer
		{
			idc = -1;
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.359996 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class GUI_List: RscListbox
		{
			idc = 1500;
			x = 0.298856 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.170199 * safezoneW;
			h = 0.484 * safezoneH;
		};
		class GUI_Content: RscStructuredText
		{
			idc = 1100;
			x = 0.474212 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.226932 * safezoneW;
			h = 0.484 * safezoneH;
		};
	};
};
