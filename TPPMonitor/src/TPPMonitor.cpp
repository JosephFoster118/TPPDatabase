
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include "dictionary.h"
#include "iniparser.h"

#include "gsi/Thread.h"
#include "IRCClient.h"
#include "Monitor.h"
#include "AppTalker.h"

#define clear() printf("\033[H\033[J")
#define gotoxy(x,y) printf("\033[%d;%dH", (x), (y))


int main()
{
	printf("\U0000263a  \U0000263a  \U0000263a ---[TPPMonitor]---\U0000263a  \U0000263a  \U0000263a \n");
	freopen( "stderr.log", "a", stderr );
	dictionary* settings_file = NULL;
	settings_file = iniparser_load("Settings.cfg");
	if(settings_file == NULL)
	{
		printf("\033[31;1m");
		printf("ERROR: Settings file does not exist!\n");
		printf("\033[0m");
		return -3;
	}
	//Load settings
	char* data = NULL;
	char login_user[64];
	char login_password[64];
	char move_list_database[64];
	char move_list_table[64];
	char team_stats_database[64];
	char team_stats_table[64];
	char twitch_username[64];
	char twitch_password[64];
	uint16_t app_talker_port = 0;
	
	memset(login_user,0,64);
	memset(login_password,0,64);
	memset(move_list_database,0,64);
	memset(move_list_table,0,64);
	memset(team_stats_database,0,64);
	memset(team_stats_table,0,64);
	memset(twitch_username,0,64);
	memset(twitch_password,0,64);
	
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"DATABASE_LOGIN:user",NULL);
	if(data != NULL)
	{
		strcpy(login_user,data);
	}
	else
	{
		strcpy(login_user,"error");
	}
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"DATABASE_LOGIN:password",NULL);
	if(data != NULL)
	{
		strcpy(login_password,data);
	}
	else
	{
		strcpy(login_password,"error");
	}
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"MOVE_LIST:database",NULL);
	if(data != NULL)
	{
		strcpy(move_list_database,data);
	}
	else
	{
		strcpy(move_list_database,"error");
	}
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"MOVE_LIST:table",NULL);
	if(data != NULL)
	{
		strcpy(move_list_table,data);
	}
	else
	{
		strcpy(move_list_table,"error");
	}
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"TEAM_STATS:database",NULL);
	if(data != NULL)
	{
		strcpy(team_stats_database,data);
	}
	else
	{
		strcpy(team_stats_database,"error");
	}
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"TEAM_STATS:table",NULL);
	if(data != NULL)
	{
		strcpy(team_stats_table,data);
	}
	else
	{
		strcpy(team_stats_table,"error");
	}
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"TWITCH_LOGIN:user",NULL);
	if(data != NULL)
	{
		strcpy(twitch_username,data);
	}
	else
	{
		strcpy(twitch_username,"error");
	}
	////////////////////////////////////////
	data = iniparser_getstring(settings_file,"TWITCH_LOGIN:password",NULL);
	if(data != NULL)
	{
		strcpy(twitch_password,data);
	}
	else
	{
		strcpy(twitch_password,"error");
	}
	////////////////////////////////////////App Talker Port
	data = iniparser_getstring(settings_file,"APP_TALKER:port",NULL);
	if(data != NULL)
	{
		app_talker_port = atoi(data);
	}
	else
	{
		app_talker_port = 0;
	}
	
	printf("Username: %s\n",login_user);
	//printf("Password: %s\n",login_password);
	printf("Move List Database: %s\n",move_list_database);
	printf("Move List Table: %s\n",move_list_table);
	printf("Team Stats Database: %s\n",team_stats_database);
	printf("Team Stats Table: %s\n",team_stats_table);
	printf("Twitch Username: %s\n",twitch_username);
	printf("Twitch Password: %s\n",twitch_password);
	printf("AppTalker port: %d\n",app_talker_port);
	iniparser_freedict(settings_file);
	
	IRCClient* tpp_listener;
	tpp_listener = new IRCClient("52.11.116.127",6667,"tpp");
	tpp_listener->login(twitch_username,twitch_password);
	tpp_listener->joinChannel("#tpp");
	
	IRCClient* twitchplayspokemon_listener;
	twitchplayspokemon_listener = new IRCClient("52.11.116.127",6667,"tpp");
	twitchplayspokemon_listener->login(twitch_username,twitch_password);
	twitchplayspokemon_listener->joinChannel("#twitchplayspokemon");
	
	Monitor* monitor;
	monitor = new Monitor(tpp_listener,twitchplayspokemon_listener);
	monitor->initDatabase(team_stats_database,login_password);
	
	//TODO: Change to dynamic constructor
	AppTalker* app_talker = new AppTalker();
	if(app_talker->hasFailed())
	{
		printf("AppTalker failed to bind port!\n");
		return -8;
	}
	
	//wait for 
	while(true)
	{
		gsi::Thread::sleep(100);
	}
	
	//printf("\U00002639\U00000020\U00000048\U00000061\U0000000A");
	return 0;
}



