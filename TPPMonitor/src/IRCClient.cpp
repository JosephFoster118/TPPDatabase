#include "IRCClient.h"

IRCClient::IRCClient(const char* ip,int prt,const char* chan): PeriodicThread("IRCClient",0.01)
{
	printf("IRC Client\n");
	connected = true;
	
	client_socket = socket(AF_INET,SOCK_STREAM,0);
	if(client_socket == -1)
	{
		printf("ERROR creating socket!\n");
		connected = false;
	}
	
	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(prt);
	server_addr.sin_addr.s_addr = inet_addr(ip);
	memset(server_addr.sin_zero,'\0',sizeof(server_addr.sin_zero));
	if(connect(client_socket,(struct sockaddr*) &server_addr, sizeof(server_addr)) != 0)
	{
		printf("ERROR connecting to %s:%d\n",ip,prt);
		connected = false;
	}
	
	memset(buffer,0,IRC_BUFFER_SIZE);
	
	pass_cnt = 0;
	strcpy(channel_name,"NONE");
	
	message = NULL;
	callback = NULL;
	
	if(connected)
	{
		start();
	}
			
}

void IRCClient::joinChannel(const char* chan)
{
	char buff[256];
	memset(buff,0,256);
	sprintf(buff,"JOIN %s\r\n",chan);
	send(client_socket,buff,strlen(buff),0);
	strcpy(channel_name,chan);
}

void IRCClient::doPeriodic()
{
	recv(client_socket,buffer, IRC_BUFFER_SIZE, 0);
	//memcpy(buffer_tmp,buffer,IRC_BUFFER_SIZE);
	//memcpy(buffer,buffer_tmp + 1,strlen(buffer_tmp) - 2);
	message = new IRCMessage(buffer);
	char sender[32];
	char type[32];
	char trailing[2048];
	message->getSender(sender);
	message->getType(type);
	message->getTrailing(trailing);
	//printf("%-20s: [%s] [%s] [%s]\n",channel_name,sender,type,trailing);
	memset(buffer,0,IRC_BUFFER_SIZE);
	
	if(strcmp(type,"PING") == 0)
	{
		send(client_socket,"PONG\r\n",strlen("PONG\r\n"),0);
	}
	
	if(callback != NULL)
	{
		callback->callbackMessage(channel_name, message);
	}
	//printf("DELETE MESSAGE\n");
	if(message != NULL)
	{
		delete message;
		message = NULL;
	}
}

bool IRCClient::login(const char* user, const char* pass)
{
	char buff[256];
	memset(buff,0,256);
	sprintf(buff,"PASS %s\r\n",pass);
	send(client_socket,buff,strlen(buff),0);
	////
	memset(buff,0,256);
	sprintf(buff,"NICK %s\r\n",user);
	send(client_socket,buff,strlen(buff),0);
}

void IRCClient::connectCallback(IRCCallback* cb)
{
	callback = cb;
}

