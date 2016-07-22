//################################################################
//#
//#	AppTalker.h
//#	Talks to the Twitch Plays Pokemon Utility Bot
//#	to send pokemon information
//#
//################################################################

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

class AppTalker
{
private:
	uint16_t server_port;
public:
	const static uint16_t DEFUALT_SERVER_PORT = 25738;
	AppTalker(); //Defualt Constructor
};

