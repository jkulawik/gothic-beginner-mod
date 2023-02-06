INSTANCE ItMw_Mod_2H_FakeSword (C_Item) 
{	
	name 				=	"Zardzewia³y miecz dwurêczny";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Mod_2H_FakeSword;

	damageTotal			= 	Damage_Mod_2H_FakeSword;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Mod_2H_FakeSword;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Mod_2H_FakeSword;
	visual 				=	"golden_uriziel.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
