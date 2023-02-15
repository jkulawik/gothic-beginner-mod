
//var string concatDonation;

//var int Shrine_STR_Bonus;
//var int Shrine_DEX_Bonus;
//var int Shrine_MANA_Bonus;


//*******************************************************
//	PrayNew Dialog abbrechen
//*******************************************************
INSTANCE PC_PrayNew_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PrayNew_End_Condition;
	information		= PC_PrayNew_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_PrayNew_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PrayShrine)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayNew_End_Info()
{
	B_ENDPRODUCTIONDIALOG ();
}; 

//*******************************************************
//	Beten
//*******************************************************
INSTANCE PC_PrayNew_Pray (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayNew_Pray_Condition;
	information		= PC_PrayNew_Pray_Info;
	permanent		= TRUE;
	description		= "Módl siê (nowe)"; 
};

FUNC INT PC_PrayNew_Pray_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PrayShrine)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayNew_Pray_Info()
{
	Info_ClearChoices (PC_PrayNew_Pray);
	Info_AddChoice (PC_PrayNew_Pray,Dialog_Back,PC_PrayNew_Pray_Back);
	Info_AddChoice (PC_PrayNew_Pray,"Chcê siê pomodliæ.",PC_PrayNew_Pray_NoPay);
	
	if (Npc_HasItems (hero,ItMi_Gold) >=10)
	{
		Info_AddChoice (PC_PrayNew_Pray,"Chcê siê pomodliæ i z³o¿yæ ofiarê 10 sztuk z³ota.",PC_PrayNew_Pray_SmallPay);
	};
	if (Npc_HasItems (hero,ItMi_Gold) >=50)
	{
		Info_AddChoice (PC_PrayNew_Pray,"Chcê siê pomodliæ i z³o¿yæ ofiarê 50 sztuk z³ota.",PC_PrayNew_Pray_MediumPay);
	};
	if (Npc_HasItems (hero,ItMi_Gold) >=100)
	{
		Info_AddChoice (PC_PrayNew_Pray,"Chcê siê pomodliæ i z³o¿yæ ofiarê 100 sztuk z³ota.",PC_PrayNew_Pray_BigPay);
	};

}; 

FUNC VOID PC_PrayNew_Pray_Back ()
{
	Info_ClearChoices (PC_PrayNew_Pray);
};

//****************
//	0 Gold
//****************

FUNC VOID PC_PrayNew_Pray_NoPay ()
{
	var int zufall; zufall = Hlp_Random(100);

	// ----- Heute Schon gebetet? -----	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else if (zufall < 5) //heute noch nicht gebetet
	{
		B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 1);
	}
	else
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayNew_Pray);
};

//****************
//	10 Gold
//****************
func VOID PC_PrayNew_Pray_SmallPay ()
{
	Npc_RemoveInvItems  (hero,ItMi_Gold, 10);
	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else
	{
		B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 1);
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayNew_Pray);
};

//****************
//	50 Gold
//****************
FUNC VOID PC_PrayNew_Pray_MediumPay ()
{
	Npc_RemoveInvItems  (hero,ItMi_Gold, 50);
	
	// ----- Heute Schon gebetet? -----	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else//heute noch nicht gebetet
	{
		B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 2);
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayNew_Pray);
};

//****************
//	100 Gold
//****************
func VOID PC_PrayNew_Pray_BigPay ()
{
	var int zufall;	zufall = Hlp_Random(100);
	
	Npc_RemoveInvItems  (hero,ItMi_Gold, 100);
	
	// ----- Heute Schon gebetet? -----	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else//heute noch nicht gebetet
	{
		if (Shrine_STR_Bonus < 10)
		&& (hero.guild != GIL_KDF)
		&& (hero.guild != GIL_NOV)
		&& (zufall < 50)
		{
			B_BlessAttribute (hero, ATR_STRENGTH, 1);
			Shrine_STR_Bonus += 1;
		}
		else if (Shrine_DEX_Bonus < 10)
		&& (hero.guild != GIL_KDF)
		&& (hero.guild != GIL_NOV)
		&& (zufall >= 50)
		{
			B_BlessAttribute (hero, ATR_DEXTERITY, 1);
			Shrine_DEX_Bonus += 1;
		}
		else if  (Shrine_MANA_Bonus < 20)
		&& (hero.guild != GIL_SLD)
		&& (hero.guild != GIL_DJG)
		{
			B_BlessAttribute (hero, ATR_MANA_MAX, 1);
			Shrine_MANA_Bonus += 1;
		}
		else
		{
			B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 3);
		};
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayNew_Pray);
};

//*******************************************************
//	SchwertWeihe
//*******************************************************
INSTANCE PC_PrayNew_BlessSword (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayNew_BlessSword_Condition;
	information		= PC_PrayNew_BlessSword_Info;
	permanent		= TRUE;
	description		= Bless_Sword; 
};

FUNC INT PC_PrayNew_BlessSword_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PrayShrine)
	&& (hero.guild == GIL_PAL)
	&& (Npc_GetDistToWP (hero,"NW_MONASTERY_CHAPELL_02") <= 500)   
	&& ((Npc_HasItems (hero,ItMw_1H_Blessed_01) >= 1)
	||  (Npc_HasItems (hero,ItMw_2H_Blessed_01) >= 1))
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayNew_BlessSword_Info()
{
	if (Npc_HasItems (hero,ItMi_Gold) >= Gold_BlessSword)
	{
		Npc_RemoveInvItems  (hero,ItMi_Gold, Gold_BlessSword);
		concatDonation = ConcatStrings(IntToString(Gold_BlessSword), PRINT_GoldGegeben);				
		AI_PrintScreen	(concatDonation, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
		
		if (Npc_HasItems (hero,ItMw_2H_Blessed_01) >= 1)		//2H-Waffe
		{	
			Npc_RemoveInvItems  (hero,ItMw_2H_Blessed_01, 1);
			CreateInvItems 		(hero,ItMw_2H_Blessed_02, 1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Heal_Cast" );
			B_GivePlayerXP (XP_SwordBlessed);
		}
		else	//1H-Waffe
		{
			Npc_RemoveInvItems  (hero,ItMw_1H_Blessed_01, 1);
			CreateInvItems 		(hero,ItMw_1H_Blessed_02, 1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Heal_Cast" );
			B_GivePlayerXP (XP_SwordBlessed);
		};
	}
	else
	{
		AI_PrintScreen	(PRINT_NotEnoughGold, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
	};
}; 

