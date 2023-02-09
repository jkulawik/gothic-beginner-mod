INSTANCE ItMi_CraftRuneRed (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_NONE;
	flags				=	ITEM_MULTI;

	value 				=	Value_CraftingRune;

	visual 				=	"itru_crafting_red.3DS";
	material 			=	MAT_STONE;

	description			= 	"Runa Jeran";
	TEXT[1]				=	"Nadaje broniom magicznym moc ognia.";
	TEXT[5]				= 	NAME_Value;	
	COUNT[5] 			= 	value;
};

INSTANCE ItMi_CraftRuneBlue (C_Item)
{
	name 				=	"Runa Odal";  // rybka

	mainflag 			=	ITEM_KAT_NONE;
	flags				=	ITEM_MULTI;

	value 				=	Value_CraftingRune;

	visual 				=	"itru_crafting_blue.3DS";
	material 			=	MAT_STONE;

	description			= 	"Runa Odal";
	TEXT[1]				=	"Nadaje broniom magicznym moc magiczn¹.";
	TEXT[5]				= 	NAME_Value;	
	COUNT[5] 			= 	value;
};

INSTANCE ItMi_CraftRuneYellow (C_Item)
{
	name 				=	"Runa Eihwaz";  // podwojny haczyk

	mainflag 			=	ITEM_KAT_NONE;
	flags				=	ITEM_MULTI;

	value 				=	Value_CraftingRune;

	visual 				=	"itru_crafting_yellow.3DS";
	material 			=	MAT_STONE;

	description			= 	"Runa Eihwaz";
	TEXT[1]				=	"Nadaje broniom magicznym moc";
	TEXT[2]				=	"zwiêkszania umiejêtnoœci bojowych.";
	TEXT[5]				= 	NAME_Value;	
	COUNT[5] 			= 	value;
};
