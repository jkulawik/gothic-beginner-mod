
// item with a model with new body and face textures to force the game to compile the new textures

INSTANCE ItMi_TexGen (C_Item)
{
	name 				=	"Generator tekstur";

	mainflag 			=	ITEM_KAT_NONE;
	flags				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"texture_dummy.3DS";
	material 			=	MAT_WOOD ;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5] 	= 	value;
};
