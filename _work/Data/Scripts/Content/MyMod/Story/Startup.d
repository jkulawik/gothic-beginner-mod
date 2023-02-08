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
};


