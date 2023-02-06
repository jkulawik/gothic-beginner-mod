INSTANCE ITAR_Mod_FakeRaven (C_Item)
{
	name 					=	"Ozdobna z³ota zbroja";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ITAR_Raven_Addon;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Raven_ADDON.3ds";
	visual_change 				=	"Armor_Raven_ADDON.asc";
	visual_skin 				=	1;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[0]					=	"Jest wykonana z cienkiej blachy.";
	TEXT[1]					=	NAME_Prot_Edge;		COUNT[1]	= 	protection[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;	COUNT[2]	= 	protection[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;		COUNT[3]	= 	protection[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;	COUNT[4]	= 	protection[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;		COUNT[5]	= 	value;
};
