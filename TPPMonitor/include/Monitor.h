#pragma once

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <mysql.h>
#include "IRCCallback.h"
#include "gsi/Mutex.h"
#include "IRCClient.h"
#include "IRCMessage.h"
#include "Pokemon.h"
#include <sys/ioctl.h>



class Monitor: public IRCCallback
{
private:
	gsi::Mutex* mutex;
	MYSQL *database;
	bool is_database_connected;
	bool is_battling;
	Pokemon** pokemon;
	int window_size;
	uint32_t counter;
	uint32_t message_counter;
	int current_red;
	int current_blue;
public:
	Monitor(IRCClient* client_a, IRCClient* client_b);
	void initDatabase(const char* db, const char* password);
	void callbackMessage(const char* channel, IRCMessage* message);
	void extractPokemon(const char* l);
	Pokemon* getRedPokemon(); //Clones the red pokemon, must delete
	Pokemon* getBluePokemon(); //Clones the blue pokemon, must delete
};

