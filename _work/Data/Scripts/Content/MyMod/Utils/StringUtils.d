

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

// ------- Debug print ------- //


func void Log_AddDebugEntry(var string text)
{
	var string rand;
	rand = IntToString(Hlp_Random(99));
	Log_AddEntry(TOPIC_DEBUG, concat3(text, "          ", rand) );
};

func void ValuePrint(var string text, var int value)
{
	var string val_str;
	val_str = IntToString(value);
	Print(concat3(text, ": ", val_str));
};

func void ValuePrintLog(var string text, var int value)
{
	var string val_str;
	var string concat;
	val_str = IntToString(value);
	concat = concat3(text, ": ", val_str);
	Log_AddDebugEntry(concat);
	Print(concat3(text, ": ", val_str));
};

func void PrintLog(var string text)
{
	Log_AddDebugEntry(text);
	Print(text);
};
