func void STARTUP_GLOBAL()
{
	Game_InitGerman();
};

func void INIT_GLOBAL()
{
	Game_InitGerman();

	Q_initPrintQueue();  // Utils.d
	
	//Debug
	Log_CreateTopic(TOPIC_DEBUG, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_DEBUG, LOG_RUNNING);
};

func void STARTUP_TOTENINSEL()
{
	Wld_InsertNpc(DEV_2130_Szmyk, "SZMYK_STAND_01");
	Wld_InsertNpc(PC_Hero, "WP_TEST_0");
	
	//HUMANS-S_WOUNDED
	//HUMANS-S_WOUNDEDB
	//HUMANS-T_WOUNDED_2_STAND
	//HUMANS-T_WOUNDEDB_2_STAND
	// bs: BS_UNCONSCIOUS
	// AI_PlayAniBS ( VAR C_NPC npc, VAR STRING aniname, VAR INT bodystate );
};


