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
#include <string>


#include "gsi/Thread.h"
#include "gsi/UdpSocket.h"
#include "Monitor.h"

class AppTalker: public gsi::Thread
{
private:
	uint16_t server_port;
	void run();
	gsi::UdpSocket* socket;
	bool failed;
	Monitor* monitor;
public:
	const static uint16_t BUFFER_SIZE = 2048;
	const static uint16_t DEFUALT_SERVER_PORT = 25738;
	AppTalker(Monitor* m); //Defualt Constructor
	bool hasFailed();
};

