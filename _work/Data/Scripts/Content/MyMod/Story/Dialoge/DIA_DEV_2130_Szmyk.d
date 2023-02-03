// ************************************************************
// 			  				   EXIT
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
// 			  				Test
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
	return true;
};

func void DIA_Szmyk_Hello_Info()
{
	AI_Output (self, other,"DIA_Szmyk_Hello_01_00"); //Welcome to Gothic Mod Build Tool example mod!

	AI_StopProcessInfos	(self);
};



// ************************************************************
// 			  				Test
// ************************************************************

instance DIA_Szmyk_Test (C_INFO)
{
	npc			= DEV_2130_Szmyk;
	nr			= 2;
	condition	= DIA_Szmyk_Test_Condition;
	information	= DIA_Szmyk_Test_Info;
	permanent	= true;
	important 	= false;
	description = "Dzia³a w koñcu to gówno?";
};

func int DIA_Szmyk_Test_Condition()
{
	return true;
};

func void DIA_Szmyk_Test_Info()
{
	AI_Output (other, self,"DIA_Szmyk_Test_15_00"); //Dzia³a w koñcu to gówno?
	AI_Output (self, other,"DIA_Szmyk_Test_01_01"); //Dzia³a!
	AI_StopProcessInfos	(self);
};
