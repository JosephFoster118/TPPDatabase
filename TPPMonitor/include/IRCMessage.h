#pragma once

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <sys/param.h>

class IRCMessage
{
private:
	const static uint16_t MAX_TRAILING_SIZE = 2048;
	const static uint16_t MAX_SENDER_SIZE = 32;
	const static uint16_t MAX_TYPE_SIZE = 32;
	char sender[MAX_SENDER_SIZE];
	char type[MAX_TYPE_SIZE];
	char trailing[MAX_TRAILING_SIZE];
public:
	IRCMessage(const char* message);
	void getSender(char* s);
	void getType(char* s);
	void getTrailing(char* s);
};



