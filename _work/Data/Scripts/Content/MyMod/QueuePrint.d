

// ------- Print queue ------- //

const int Q_startY = 70;
const int Q_spaceY = 2;
const int Q_startX = 2;
const int Q_slot1CoolOff = 0; //miliseconds
const int Q_coolOff = 1000;

var int Q_slotCount;  // init at 1

var int Q_lastUsageMinute;
var int Q_lastUsageHour;
var int Q_lastUsageMinute_Slot1;
var int Q_lastUsageHour_Slot1;
var int Q_lastUsageDuration;
var int Q_lastUsageDuration_Slot1;

func void Q_initPrintQueue()
{
	Q_slotCount = 1;
	Q_lastUsageHour_Slot1 = 0;
	Q_lastUsageMinute_Slot1 = 0;
	Q_lastUsageDuration = 0;
	Q_lastUsageDuration_Slot1 = 0;
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
	var int interval_slot1;
	var int time_h;
	var int time_m;
	
	interval_slot1 = Wld_CalcIntervalMinutes(Q_lastUsageHour_Slot1, Q_lastUsageMinute_Slot1, Wld_GetTimeHour(), Wld_GetTimeMin());
	interval = Wld_CalcIntervalMinutes(Q_lastUsageHour, Q_lastUsageMinute, Wld_GetTimeHour(), Wld_GetTimeMin());
	
	// Reset slot when:
	if ((interval_slot1*GAME_MINUTE_TO_REAL_MILISECONDS > (Q_lastUsageDuration_Slot1*1000 + Q_slot1CoolOff)	&&	// slot 1 cooldown finished
	interval*GAME_MINUTE_TO_REAL_MILISECONDS > (Q_lastUsageDuration*1000))						// and last message has faded out
	||	Q_slotCount == 13) 											// or if slots ran out first
	{
		Q_slotCount = 1;
//		PrintLog("Resetting slots");
	};

	// Print in each slot consecutively
	if(Q_slotCount == 1){
		ps(text, Q_startX, Q_startY-1*Q_spaceY, duration);
		Q_lastUsageHour_Slot1 = Wld_GetTimeHour();
		Q_lastUsageMinute_Slot1 = Wld_GetTimeMin();
		Q_lastUsageDuration_Slot1 = duration;
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
	}
	else if(Q_slotCount == 7){
		ps(text, Q_startX, Q_startY-7*Q_spaceY, duration);
	}
	else if(Q_slotCount == 8){
		ps(text, Q_startX, Q_startY-8*Q_spaceY, duration);
	}
	else if(Q_slotCount == 9){
		ps(text, Q_startX, Q_startY-9*Q_spaceY, duration);
	}
	else if(Q_slotCount == 10){
		ps(text, Q_startX, Q_startY-10*Q_spaceY, duration);
	}
	else if(Q_slotCount == 11){
		ps(text, Q_startX, Q_startY-11*Q_spaceY, duration);
	}
	else if(Q_slotCount == 12){
		ps(text, Q_startX, Q_startY-12*Q_spaceY, duration);
	};
	
	// Update counter
	Q_slotCount += 1;
	Q_lastUsageHour = Wld_GetTimeHour();
	Q_lastUsageMinute = Wld_GetTimeMin();
	Q_lastUsageDuration = duration;
};

