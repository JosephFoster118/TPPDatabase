//################################################################
//#
//#	AppTalker.h
//#	Talks to the Twitch Plays Pokemon Utility Bot
//#	to send pokemon information
//#
//################################################################

#include "AppTalker.h"

AppTalker::AppTalker(Monitor* m): Thread("AppTalker")
{
	//TODO: Initialize Variables
	server_port = DEFUALT_SERVER_PORT;
	monitor = m;
	failed = false;
	try
	{
		socket = new gsi::UdpSocket();
		int port_status = socket->setLocalPort(server_port);
		if(port_status < 0)
		{
			throw port_status;
		}
	}
	catch(int e)
	{
		printf("AppTalker Error\n");
		failed = true;
	}
	
	if(!failed)
	{
		start();
	}
}

void AppTalker::run()
{
	char recv_buffer[BUFFER_SIZE];
	char send_buffer[BUFFER_SIZE];
	
	std::string recv_ip;
	uint16_t recv_port;
	while(!isStopRequested())
	{
		recv_port = 0;
		memset(recv_buffer,0,BUFFER_SIZE);
		socket->recvFrom(recv_buffer,BUFFER_SIZE,recv_ip,recv_port);
		printf("[%-18s][%-8d]:\"%s\"\n",recv_ip.data(),recv_port,recv_buffer);
		if(strcmp(recv_buffer,"m_red") == 0)
		{
			memset(send_buffer,0,BUFFER_SIZE);
			monitor->getRedMoves(send_buffer);
			printf("%s\n",send_buffer);
		}
		if(strcmp(recv_buffer,"m_blue") == 0)
		{
			memset(send_buffer,0,BUFFER_SIZE);
			monitor->getBlueMoves(send_buffer);
			printf("%s\n",send_buffer);
		}
		socket->sendTo(send_buffer,strlen(send_buffer) + 1,recv_ip,recv_port);
	}
}

bool AppTalker::hasFailed()
{
	return failed;
}

