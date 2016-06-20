#pragma once

#include <stdint.h>
#include <sys/types.h>       // For data types
#include <sys/socket.h>      // For socket(), connect(), send(), and recv()
#include <netdb.h>           // For gethostbyname()
#include <arpa/inet.h>       // For inet_addr()
#include <unistd.h>          // For close()
#include <netinet/in.h>      // For sockaddr_in
#include <string.h>
#include <errno.h>
#include <stdio.h>
#include "gsi/PeriodicThread.h"
#include "IRCMessage.h"
#include "IRCCallback.h"

#define IRC_BUFFER_SIZE 1024

class IRCClient: public gsi::PeriodicThread
{
private:
	void doPeriodic();
	int client_socket;
	char buffer[IRC_BUFFER_SIZE];
	char buffer_tmp[IRC_BUFFER_SIZE];
	sockaddr_in server_addr;
	hostent* server;
	bool connected;
	char channel_name[64];
	IRCMessage* message;
	IRCCallback* callback;
	
	uint32_t pass_cnt;
public:
	IRCClient(const char* ip,int prt,const char* chan);
	bool login(const char* user, const char* pass);
	void joinChannel(const char* chan);
	void connectCallback(IRCCallback* cb);
};




