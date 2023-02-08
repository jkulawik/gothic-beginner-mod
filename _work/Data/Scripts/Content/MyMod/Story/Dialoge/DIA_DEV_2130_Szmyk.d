// ************************************************************
// 			 				 EXIT
// ************************************************************

instance DIA_Szmyk_EXIT(C_INFO)
{
	npc			= DEV_2130_Szmyk;
	nr			= 999;
	condition	= DIA_Szmyk_EXIT_Condition;
	information	= DIA_Szmyk_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};

func int DIA_Szmyk_EXIT_Condition()
{
	return true;
};

func void DIA_Szmyk_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 			 				Hello
// ************************************************************

instance DIA_Szmyk_Hello (C_INFO)
{
	npc			= DEV_2130_Szmyk;
	nr			= 1;
	condition	= DIA_Szmyk_Hello_Condition;
	information	= DIA_Szmyk_Hello_Info;
	permanent	= false;
	important 	= true;
};

func int DIA_Szmyk_Hello_Condition()
{
	return false;
};

func void DIA_Szmyk_Hello_Info()
{
	AI_Output (self, other,"DIA_Szmyk_Hello_01_00"); //Welcome to baby's first Gothic 2 mod!
	AI_StopProcessInfos	(self);
};



// ************************************************************
// 			 				Test
// ************************************************************

instance DIA_Szmyk_Test (C_INFO)
{
	npc			= DEV_2130_Szmyk;
	nr			= 2;
	condition	= DIA_Szmyk_EXIT_Condition;
	information	= DIA_Szmyk_Test_Info;
	permanent	= true;
	important 	= false;
	description = "Dzia³a w koñcu to gówno?";
};


func void DIA_Szmyk_Test_Info()
{
	AI_Output(other, self,"DIA_Szmyk_Test_15_00"); //Dzia³a w koñcu to gówno?
	AI_Output(self, other,"DIA_Szmyk_Test_01_01"); //Dzia³a!
	Q_PrintScreen("testA", 4);
	Q_PrintScreen("testB", 5);
	Q_PrintScreen("testC", 4);
	Q_PrintScreen("testD", 5);
	Q_PrintScreen("testE", 4);
	Q_PrintScreen("testF", 3);
	AI_StopProcessInfos(self);
};



// ************************************************************
// 			 			Print tests
// ************************************************************

instance DIA_Szmyk_PrintTest (C_INFO)
{
	npc			= DEV_2130_Szmyk;
	nr			= 3;
	condition	= DIA_Szmyk_EXIT_Condition;
	information	= DIA_Szmyk_PrintTest_Info_WithLog;
	permanent	= true;
	important 	= false;
	description = "Wydrukuj mi coœ.";
};


func void DIA_Szmyk_PrintTest_Info()
{
	Q_PrintScreen("testA", 4);
	Q_PrintScreen("testB", 5);
	Q_PrintScreen("testC", 4);
	Q_PrintScreen("testD", 5);
//	Q_PrintScreen("testE", 4);
//	Q_PrintScreen("testF", 3);
};


func void DIA_Szmyk_PrintTest_Info_WithLog()
{
	Log_CreateTopic(TOPIC_MOD_TEST, LOG_NOTE);
	M_LogEntry(TOPIC_MOD_TEST, "Niebo jest niebieskie.");
	M_LogEntry(TOPIC_MOD_TEST, "S³oñce jest ¿ó³te.");
	var string tmp;
	var string tmp2;
	tmp = IntToString(Wld_GetTimeMin());
	tmp2 = IntToString(Wld_GetTimeHour());
	Q_PrintScreen(tmp, 4);
	Q_PrintScreen(tmp2, 4);
//	Q_PrintScreen("testF", 3);
};


// ************************************************************
// 			 			Print settgings
// ************************************************************

instance DIA_Szmyk_PrintSettings (C_INFO)
{
	npc			= DEV_2130_Szmyk;
	nr			= 4;
	condition	= DIA_Szmyk_EXIT_Condition;
	information	= DIA_Szmyk_PrintSettings_Info;
	permanent	= true;
	important 	= false;
	description = "Zmieñ ustawienia Q_startX";
};


func void DIA_Szmyk_PrintSettings_Info()
{
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "0" , setting00);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "10" , setting10);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "20" , setting20);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "90" , setting30);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "-1" , setting40);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "3" , setting50);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "4" , setting60);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "5" , setting70);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "6" , setting80);
	Info_AddChoice(DIA_Szmyk_PrintSettings, "7" , setting90);
};

func void setting00()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 0;
};
func void setting10()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 10;
};
func void setting20()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 20;
};
func void setting30()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 90;
};
func void setting40()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = -1;
};
func void setting50()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 3;
};
func void setting60()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 4;
};
func void setting70()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 5;
};
func void setting80()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 6;
};
func void setting90()
{ 
	Info_ClearChoices(DIA_Szmyk_PrintSettings);
	Q_startX = 7;
};

