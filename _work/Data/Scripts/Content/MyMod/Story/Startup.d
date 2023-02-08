func void STARTUP_GLOBAL()
{
	Game_InitGerman();
};

func void INIT_GLOBAL()
{
	Game_InitGerman();

	Q_initPrintQueue();  // Utils.d

};

func void STARTUP_TOTENINSEL()
{
	Wld_InsertNpc (DEV_2130_Szmyk, "SZMYK_STAND_01");
};


