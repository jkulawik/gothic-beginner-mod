
// Quest log funcs:
// func void Log_CreateTopic( VAR STRING name, VAR INT section ) // section: LOG_MISSION or LOG_NOTE
// func void Log_AddEntry( VAR STRING topic, VAR STRING entry )
// func void Log_SetTopicStatus( VAR STRING name, VAR INT status) // status: LOG_RUNNING,LOG_SUCCESS,LOG_FAILED,LOG_OBSOLETE
// Log_SetTopicStatus has to be used after creating a LOG_MISSION topic


const string TOPIC_MOD_TEST = "Informacje od NPCa";


const string TOPIC_DEBUG = "Debug log";
