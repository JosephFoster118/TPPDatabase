#pragma once

#include <stdio.h>
#include <stdarg.h>
#include "IRCMessage.h"

class IRCCallback
{
public:
	virtual void callbackMessage(const char* channel, IRCMessage* message) = 0;
};




