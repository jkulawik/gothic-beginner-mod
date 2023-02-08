func void M_LogEntry(var string topic, var string entry)
{
	Log_AddEntry(topic, entry);
	
	var string concat;
	concat = concat4(PRINT_NewLogEntry, " (", topic, ")");

	Q_PrintScreen		(concat, 4);
	Snd_Play 		("LogEntry");
};

