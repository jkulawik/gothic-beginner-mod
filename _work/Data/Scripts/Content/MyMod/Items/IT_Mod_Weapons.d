INSTANCE ItMw_Mod_2H_FakeSword (C_Item) 
{
	name 				=	"åwiecπcy z≥oty miecz";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Mod_2H_FakeSword;

	damageTotal			= 	Damage_Mod_2H_FakeSword;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Mod_2H_FakeSword;		

	cond_atr[2]   			= 	ATR_STRENGTH;
	cond_value[2]  			= 	Condition_Mod_2H_FakeSword;
	visual 				=	"golden_uriziel.3DS";

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; //SPELLFX_ITEMGLIMMER, SPELLFX_WEAKGLIMMER_YELLOW

	description			= name;
	TEXT[0]				= "Wyglπda groünie, ale nie jest najlepszej jakoúci.";
	TEXT[1] 			= "";
	TEXT[2]				= NAME_Damage;				COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;			COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;				COUNT[5]	= value;
};



/*
INSTANCE itmw_Uriziel  (C_Item) 
{	
	name 				=	"Uriziel";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	10000000;

//	damage		[DAM_INDEX_BLUNT]	=	0;
	damage		[DAM_INDEX_EDGE]	=	50;
//	damage		[DAM_INDEX_POINT]	=	0;
	damage		[DAM_INDEX_FIRE]	=	75;
	damage		[DAM_INDEX_FLY]		=	80; 
	damage		[DAM_INDEX_MAGIC]	=	45;

	damagetype			=	DAM_EDGE|DAM_FLY|DAM_FIRE|DAM_MAGIC;
	range    			=  	Range_Special_2H_4;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ITMW_2H_SWORD_SLEEPER_02.3DS";

	wear				=	WEAR_EFFECT;
	effect				=	"spellFX_crossbow";

	description			= name;
	TEXT[2]				= NAME_Damage;                                  COUNT[2]	= 250;
	TEXT[1] 			= "Es l‰sst seine Gegner in Flammen aufgehen.";
	TEXT[4]				= NAME_ADDON_BONUS_2H;			        COUNT[4]	= Waffenbonus_10;
	TEXT[3]				= NAME_ADDON_ONEHANDED_BELIAR;			COUNT[3]	= 80;
	TEXT[0]				= "Mit diesem Schwert habe ich den Schl‰fer verbannt.";	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
*/
