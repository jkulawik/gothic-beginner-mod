

// ------- Print queue ------- //

const int Q_startY = 70;
const int Q_spaceY = 2;
const int Q_startX = 4;

var int Q_slotCount;  // init at 1

var int Q_lastUsageMinute;
var int Q_lastUsageHour;
var int Q_lastUsageDuration;

func void Q_initPrintQueue()
{
	Q_slotCount = 1;
	Q_lastUsageHour = 0;
	Q_lastUsageMinute = 0;
	Q_lastUsageDuration = 0;
};

// Shorthand for printscreen func so that AI_PrintScreen and PrintScreen can be easily swapped
func void ps(var string text, var int pos_x, var int pos_y, var int duration)
{
	var string concat;
	concat = concat3(text, "    slot: ", IntToString(Q_slotCount) );
	AI_PrintScreen(concat, pos_x, pos_y, FONT_ScreenSmall, duration);
};


func void Q_PrintScreen(var string text, var int duration)
{
	// If it has been long since the last usage, reset slots
	var int interval;
	var int time_h;
	var int time_m;
	
	interval = Wld_CalcIntervalMinutes(Q_lastUsageHour, Q_lastUsageMinute, Wld_GetTimeHour(), Wld_GetTimeMin());

	ValuePrintLog("interval", interval);
	
	if (interval*GAME_MINUTE_TO_REAL_MILISECONDS > Q_lastUsageDuration*1000)
	{
		Q_slotCount = 1;
		PrintLog("Resetting slots");
	};

	// Print in each slot consecutively
	if(Q_slotCount == 1){
		ps(text, Q_startX, Q_startY-1*Q_spaceY, duration);
	}
	else if(Q_slotCount == 2){
		ps(text, Q_startX, Q_startY-2*Q_spaceY, duration);
	}
	else if(Q_slotCount == 3){
		ps(text, Q_startX, Q_startY-3*Q_spaceY, duration);
	}
	else if(Q_slotCount == 4){
		ps(text, Q_startX, Q_startY-4*Q_spaceY, duration);
	}
	else if(Q_slotCount == 5){
		ps(text, Q_startX, Q_startY-5*Q_spaceY, duration);
	}
	else if(Q_slotCount == 6){
		ps(text, Q_startX, Q_startY-6*Q_spaceY, duration);
	};
	
	// Update counter
	if(Q_slotCount == 6){
		Q_slotCount = 1;
	}
	else{
		Q_slotCount += 1;
	};

	Q_lastUsageHour = Wld_GetTimeHour();
	Q_lastUsageMinute = Wld_GetTimeMin();
	Q_lastUsageDuration = duration;
};


// ------- Print queue: zParseExtender implementation ------- //
/*
/// Union zPraserExtender Trigger class
class C_Trigger
{
    var int Delay; // defines the frequency (in miliseconds) at which the function will be called.
    var int Enabled; // determines if the trigger is active. If the value is equal to zero, the trigger is destroyed.
    var int AIVariables[16]; // user data, which can be set independently when creating trigger (yes, you can write there absolutely everything you want).

};

// function returns a trigger with no NPC (self, other or victim) bound to it
func C_Trigger AI_StartTriggerScript(   var string funcName,
                                        var int delay) {};

// function is extended, if certain participants need to be assigned to it
func C_Trigger AI_StartTriggerScriptEx( var string funcName,
                                        var int delay,
                                        var C_Npc slf,
                                        var C_Npc oth,
                                        var C_Npc vct) {};


var C_Trigger trigger;
trigger = AI_StartTriggerScript("TimerLoop", 1000);  //todo: start and stop the trigger to not keep the loop running all the time?


// trigger.AIVariables[i] = remaining time that slot i is occupied. Slot 0 is reserved as failsafe
func void zPE_Q_PrintScreen(var string text, var int duration)
{
	// Find empty text slot and reserve it with print duration
	if(trigger.AIVariables[1] == 0){
		trigger.AIVariables[1] = duration;
		ps(text, Q_startX, Q_startY-1*Q_spaceY, duration);
	}
	else if(trigger.AIVariables[2] == 0){
		trigger.AIVariables[2] = duration;
		ps(text, Q_startX, Q_startY-2*Q_spaceY, duration);
	}
	else if(trigger.AIVariables[3] == 0){
		trigger.AIVariables[3] = duration;
		ps(text, Q_startX, Q_startY-3*Q_spaceY, duration);
		
	}
	else if(trigger.AIVariables[4] == 0){
		trigger.AIVariables[4] = duration;
		ps(text, Q_startX, Q_startY-4*Q_spaceY, duration);
	}
	else if(trigger.AIVariables[5] == 0){
		trigger.AIVariables[5] = duration;
		ps(text, Q_startX, Q_startY-5*Q_spaceY, duration);
		
	}
	else if(trigger.AIVariables[6] == 0){
		trigger.AIVariables[6] = duration;
		ps(text, Q_startX, Q_startY-6*Q_spaceY, duration);
	}
	else{  // overflow slot at the bottom
		ps(text, Q_startX, Q_startY, duration);
	}
};


func int TimerLoop()
{	
	if(trigger.AIVariables[1] > 0){
		trigger.AIVariables[1] -= 1;
	}
	else if(trigger.AIVariables[2] > 0){
		trigger.AIVariables[2] -= 1;
	}
	else if(trigger.AIVariables[3] > 0){
		trigger.AIVariables[3] -= 1;
	}
	else if(trigger.AIVariables[4] > 0){
		trigger.AIVariables[4] -= 1;
	}
	else if(trigger.AIVariables[5] > 0){
		trigger.AIVariables[5] -= 1;
	}
	else if(trigger.AIVariables[6] > 0){
		trigger.AIVariables[6] -= 1;
	}
	return LOOP_CONTINUE;
};
*/


