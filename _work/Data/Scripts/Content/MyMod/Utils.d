
// ------- String concat ------- //


func string concat2(var string s1, var string s2){
    return ConcatStrings(s1, s2);
};

func string concat3(var string s1, var string s2, var string s3) {
    return concat2(concat2(s1, s2), s3);
};

func string concat4(var string s1, var string s2, var string s3, var string s4) {
    return concat2(concat3(s1, s2, s3), s4);
};



// ------- Print queue ------- //

//const int Q_startY = 70;
const int Q_spaceY = 2;
//const int Q_startX = 10;

var int Q_startY;
//var int Q_spaceY;
var int Q_startX;

var int Q_slotCount;  // init at 1


// Shorthand for printscreen func so that AI_PrintScreen and PrintScreen can be easily swapped
func void ps(var string text, var int pos_x, var int pos_y, var int duration)
{
	var string concat;
	concat = concat3(text, ",    slot: ", IntToString(Q_slotCount));
	AI_PrintScreen(concat, pos_x, pos_y, FONT_ScreenSmall, duration+5);
};


func void Q_PrintScreen(var string text, var int duration)
{
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
//		Print("incrementing");
	};
};


// zParseExtender-dependent code
/*
var C_Trigger trigger;
trigger = AI_StartTriggerScriptEx("TimerLoop", 1000);  //todo: start and stop the trigger to not keep the loop running all the time?


// trigger.AIVariables[i] = remaining time that slot i is occupied. Slot 0 is reserved as failsafe
func void Q_PrintScreen(var string text, var int duration)
{
	// Find empty text slot and reserve it with print duration
	if(trigger.AIVariables[1] == 0){
		trigger.AIVariables[1] = duration;
		ps(text, Q_startX, Q_start+1*Q_spaceY, duration);
	}
	else if(trigger.AIVariables[2] == 0){
		trigger.AIVariables[2] = duration;
		ps(text, Q_startX, Q_start+2*Q_spaceY, duration);
	}
	else if(trigger.AIVariables[3] == 0){
		trigger.AIVariables[3] = duration;
		ps(text, Q_startX, Q_start+3*Q_spaceY, duration);
		
	}
	else if(trigger.AIVariables[4] == 0){
		trigger.AIVariables[4] = duration;
		ps(text, Q_startX, Q_start+4*Q_spaceY, duration);
		
	}
	else if(trigger.AIVariables[5] == 0){
		trigger.AIVariables[5] = duration;
		ps(text, Q_startX, Q_start+5*Q_spaceY, duration);
		
	}
	else if(trigger.AIVariables[6] == 0){
		trigger.AIVariables[6] = duration;
		ps(text, Q_startX, Q_start+6*Q_spaceY, duration);
	}
	else{  //
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
};
*/


