#include "IRCMessage.h"

IRCMessage::IRCMessage(const char* message)
{
	
	memset(sender,0,MAX_SENDER_SIZE);
	memset(type,0,MAX_TYPE_SIZE);
	memset(trailing,0,MAX_TRAILING_SIZE);
	
	char* full_message;
	full_message = new char[1024];
	strcpy(full_message,message);
	char* reference_front = strchr(full_message,'!');
	char* reference_back = NULL;
	if(reference_front != NULL)
	{
		reference_back = strchr(full_message,'@');
		if(reference_back != NULL)
		{
			strncpy(sender,reference_front + 1, MIN(reference_back - reference_front - 1,MAX_SENDER_SIZE));
		}
	}
	////
	if(reference_back != NULL)
	{
		reference_front = strchr(reference_back,' ');
		if(reference_front != NULL)
		{
			reference_back = strchr(reference_front + 1,' ');
			if(reference_back != NULL)
			{
				strncpy(type,reference_front + 1, MIN(reference_back - reference_front - 1,MAX_TYPE_SIZE));
			}
		}
	}
	////
	if(reference_back != NULL)
	{
		reference_front = strchr(reference_back,':');
		if(reference_front != NULL)
		{
			strcpy(trailing,reference_front + 1);
			uint16_t len = strlen(trailing);
			for(uint16_t i = 0; i < len; i++)
			{
				if(trailing[i] == '\r' || trailing[i] == '\n')
				{
					trailing[i] = 0;
				}
			}
			if(trailing[0] == 1)//Gets rid of the 1's
			{
				char* buffer_tmp = new char[MAX_TRAILING_SIZE];
				memcpy(buffer_tmp,trailing,MAX_TRAILING_SIZE);
				strcpy(trailing,buffer_tmp + 1);
				trailing[strlen(trailing) - 1] = 0;
				delete [] buffer_tmp;
			}
		}
	}
	////
	if(type[0] == '\0')
	{
		//printf("%s\n",message);
		char* result = strstr(full_message,"PING");
		if(result != NULL)
		{
			strcpy(type,"PING");
			strcpy(sender,"tmi.twitch.tv");
		}
		
	}
	
	delete [] full_message;
}

void IRCMessage::getSender(char* s)
{
	strcpy(s,sender);
}

void IRCMessage::getType(char* s)
{
	strcpy(s,type);
}

void IRCMessage::getTrailing(char* s)
{
	strcpy(s,trailing);
}

