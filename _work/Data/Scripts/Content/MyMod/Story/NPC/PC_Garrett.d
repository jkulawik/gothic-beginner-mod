instance PC_Garrett (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "Garrett";
	guild		= GIL_NONE;
	id			= 0;
	voice		= 15;
	level		= 0;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next			= 500;
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 10;
	attribute[ATR_DEXTERITY] 		= 10;
	attribute[ATR_MANA_MAX] 		= 10;
	attribute[ATR_MANA] 			= 10;
	attribute[ATR_HITPOINTS_MAX]		= 40;
	attribute[ATR_HITPOINTS] 		= 40;
	
	// ------ visuals ------
	Mdl_SetVisual (self,"HUMANS.MDS");
	// ------ Visual ------ "body_Mesh",		bodyTex			SkinColor	headMesh,			faceTex,		teethTex,	armorInstance	
	Mdl_SetVisualBody (self, "hum_body_Naked0", 14,				0,			"Hum_Head_Pony", 	Face_N_Lares,	0, 			NO_ARMOR);
	

	// ------ Fighting skill ------
	B_SetFightSkills 	(self, 10); 
};


// ***********
// Test-Heroes
// ***********

instance PC_Lv10 (NPC_DEFAULT) //Mitte 2. Kapitel (Anfang der OW)
{
	// ------ SC ------
	name 		= "Ja";
	guild		= GIL_MIL;
	id			= 0;
	voice		= 15;
	level		= 10;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= (500*((slf.level+1)/2)*(slf.level+1));
	exp_next		= (500*((slf.level+2)/2)*(slf.level+1));
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 83; //10+50+23 (20% von 115) //80LP
	attribute[ATR_DEXTERITY] 		= 32; //10+0+22  (20% von 110)
	attribute[ATR_MANA_MAX] 		= 64; //10+0+54  (20% von 234)
	attribute[ATR_MANA] 			= 64;
	attribute[ATR_HITPOINTS_MAX]	= 148;    
	attribute[ATR_HITPOINTS] 		= 148;
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, ITAR_MIL_L);
	
	// ------ Kampf-Talente ------
	B_AddFightSkill (self, NPC_TALENT_1H, 		30);
	B_AddFightSkill (self, NPC_TALENT_2H, 		10);   
	B_AddFightSkill (self, NPC_TALENT_BOW, 		10);
	B_AddFightSkill (self, NPC_TALENT_CROSSBOW,	10);
	
	CreateInvItems (self, itmi_gold, 500);
	CreateInvItems (self, itrw_arrow, 100);
	
	EquipItem (self, ItMw_Nagelkeule2);
	EquipItem (self, ItRw_Bow_L_01);
};

instance PC_Lv20 (NPC_DEFAULT) //Anfang 2. Kapitel - Ende der ADW
{
	// ------ SC ------
	name 		= "Ja";
	guild		= GIL_MIL;
	id			= 0;
	voice		= 15;
	level		= 20;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= (500*((slf.level+1)/2)*(slf.level+1));
	exp_next		= (500*((slf.level+2)/2)*(slf.level+1));
	lp				= 40; //für Lockpick, SteintafelIII
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 106; //10+50+46 (40% von 115) //80LP
	attribute[ATR_DEXTERITY] 		= 54;  //10+0+44  (40% von 110)  
	attribute[ATR_MANA_MAX] 		= 118; //10+0+108 (40% von 234)
	attribute[ATR_MANA] 			= 35;
	attribute[ATR_HITPOINTS_MAX]	= 280;    
	attribute[ATR_HITPOINTS] 		= 280;
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, ITAR_Ranger_Addon);
	
	// ------ Kampf-Talente ------
	B_AddFightSkill (self, NPC_TALENT_1H, 		60); //80LP	
	B_AddFightSkill (self, NPC_TALENT_2H, 		30);	
	B_AddFightSkill (self, NPC_TALENT_BOW, 		10);
	B_AddFightSkill (self, NPC_TALENT_CROSSBOW,	10);
	
	CreateInvItems (self, itmi_gold, 1000);
	CreateInvItems (self, itrw_arrow, 100);
	CreateInvItems (self, itrw_bolt, 100);
	
	EquipItem (self, ItMw_Rubinklinge);	
	EquipItem (self, ItRw_Crossbow_M_02);	
	
	CreateInvItems (self, ItRu_PalLight, 1);
	CreateInvItems (self, ItRu_PalLightHeal, 1);
	CreateInvItems (self, ItRu_PalHolyBolt, 1);
};

instance PC_Lv40 (NPC_DEFAULT) //Anfang 4. Kapitel (Drachenjagd)
{
	// ------ SC ------
	name 		= "Ja";
	guild		= GIL_PAL;
	id			= 0;
	voice		= 15;
	level		= 40;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= (500*((slf.level+1)/2)*(slf.level+1));
	exp_next		= (500*((slf.level+2)/2)*(slf.level+1));
	lp				= 60; //für Lockpick, SteintafelIII, PermSTR
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 159;  //10+80+69 (60% von 115) //170LP
	attribute[ATR_DEXTERITY] 		= 76;   //10+0+66  (60% von 110)       
	attribute[ATR_MANA_MAX] 		= 172;	//10+0+162 (60% von 234) 
	attribute[ATR_MANA] 			= 172;	
	attribute[ATR_HITPOINTS_MAX]	= 520;    
	attribute[ATR_HITPOINTS] 		= 520;	
	
	// ------ visuals ------
	B_SetNpcVisual 	(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, ITAR_PAL_M);
	
	// ------ Kampf-Talente ------
	B_AddFightSkill (self, NPC_TALENT_1H, 		90); //170LP
	B_AddFightSkill (self, NPC_TALENT_2H, 		60); 
	B_AddFightSkill (self, NPC_TALENT_BOW, 		10); 
	B_AddFightSkill (self, NPC_TALENT_CROSSBOW,	10); 
	
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKLOCK, 		1);
	
	CreateInvItems (self, itmi_gold, 2000);
	CreateInvItems (self, itrw_bolt, 100);
	
	EquipItem (self, ItMw_1H_Blessed_02); 	
	EquipItem (self, ItRw_Crossbow_M_02);	
	
	CreateInvItems (self,ItKe_Lockpick,10);
	CreateInvItems (self,ItMi_Flask,2);
	CreateInvItems (self, ItPo_Health_02, 10);
	CreateInvItems (self, ItPo_Speed, 5);
	CreateInvItems (self,ItLsTorch,50);
	
	CreateInvItems (self, ItRu_PalLight, 1);
	CreateInvItems (self, ItRu_PalLightHeal, 1);
	CreateInvItems (self, ItRu_PalHolyBolt, 1);
	CreateInvItems (self, ItRu_PalMediumHeal, 1);
	CreateInvItems (self, ItRu_PalRepelEvil, 1);
};

instance PC_Lv60 (NPC_DEFAULT) //Anfang 6. Kapitel (Dracheninsel)
{
	// ------ SC ------
	name 		= "Ja";
	guild		= GIL_PAL;
	id			= 0;
	voice		= 15;
	level		= 60;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= (500*((slf.level+1)/2)*(slf.level+1));
	exp_next		= (500*((slf.level+2)/2)*(slf.level+1));
	lp				= 60; //60; für Lockpick, SteintafelIII, PermSTR
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 228; //10+126+92 (80% von 115) //370LP
	attribute[ATR_DEXTERITY] 		= 98;  //10+0+88  (80% von 110)         
	attribute[ATR_MANA_MAX] 		= 234; //10+0+224 (80% von 234)        
	attribute[ATR_MANA] 			= 234;  
	attribute[ATR_HITPOINTS_MAX]	= 760;    
	attribute[ATR_HITPOINTS] 		= 760;	
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, ITAR_PAL_H);
	
	// ------ Kampf-Talente ------
	B_AddFightSkill (self, NPC_TALENT_1H, 		90); //170LP
	B_AddFightSkill (self, NPC_TALENT_2H, 		60);
	B_AddFightSkill (self, NPC_TALENT_BOW, 		10);
	B_AddFightSkill (self, NPC_TALENT_CROSSBOW,	10);
	
	CreateInvItems (self, itmi_gold, 3000);
	CreateInvItems (self, itrw_bolt, 100);
	
	EquipItem (self, ItMw_1H_Blessed_03);
	EquipItem (self, ItRw_Crossbow_M_02);	
	
	CreateInvItems (self, ItRu_PalLight, 1);
	CreateInvItems (self, ItRu_PalLightHeal, 1);
	CreateInvItems (self, ItRu_PalHolyBolt, 1);
	CreateInvItems (self, ItRu_PalMediumHeal, 1);
	CreateInvItems (self, ItRu_PalRepelEvil, 1);
	CreateInvItems (self, ItRu_PalFullHeal, 1);
	CreateInvItems (self, ItRu_PalDestroyEvil, 1);
};




