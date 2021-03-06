#include "Monitor.h"

Monitor::Monitor(IRCClient* client_a, IRCClient* client_b)
{
	counter = 0;
	message_counter = 0;
	is_database_connected = false;
	is_battling = false;
	pokemon = new Pokemon*[6];
	for(uint8_t i = 0; i < 6; i++)
	{
		pokemon[i] = NULL;
	}
	mutex = new gsi::Mutex();
	mutex->lock();
	client_a->connectCallback(this);
	client_b->connectCallback(this);
	mutex->unlock();
	struct winsize w;
    ioctl(STDOUT_FILENO, TIOCGWINSZ, &w);

    printf ("lines %d\n", w.ws_row);
    printf ("columns %d\n", w.ws_col);
	window_size = w.ws_col;
	current_red = -1;
	current_blue = -1;
	
	
}


void Monitor::callbackMessage(const char* channel, IRCMessage* message)
{
	//mutex->lock();
	char sender[32];
	char type[32];
	char trailing[2048];
	message->getSender(sender);
	message->getType(type);
	message->getTrailing(trailing);
	int result = 0;
	message_counter++;
	printf("[%-8d][%-28s]:%s\n",message_counter,sender,trailing);
	if(strcmp(sender,"tpp") == 0)
	{	
		//printf("%-28s:%-120s [%8d]\n",sender,trailing,message_counter);
		//printf("%-20s: %s\n",channel,trailing);
		if(strstr(trailing,"fainted!") != NULL)
		{
			if(strstr(trailing,"Blue") != NULL)
			{
				printf("Blue fainted\n");
				char output[256];
				memset(output,0,256);
				sprintf(output,"UPDATE TeamStats SET Faints=Faints + 1 WHERE Team = \"Blue\";");
				result = mysql_query(database,output);
				if(result == 1)
				{
					printf("EEEEERRROOORRR!!!!\n");
				}
			}
			if(strstr(trailing,"Red") != NULL)
			{
				printf("Red fainted\n");
				char output[256];
				memset(output,0,256);
				sprintf(output,"UPDATE TeamStats SET Faints=Faints + 1 WHERE Team = \"Red\";");
				result = mysql_query(database,output);
				if(result == 1)
				{
					printf("EEEEERRROOORRR!!!!\n");
				}
			}
		}
		
		if(strstr(trailing,"ACTION The battle between") != NULL)
		{
			printf("Battle Started!\n");
			is_battling = true;
		}
		
		//Check who won
		if(strcmp(channel,"#tpp") == 0)
		{
			if(strstr(trailing,"won the match!"))
			{
				is_battling = false;
				current_red = -1;
				current_blue = -1;
				if(strstr(trailing,"Blue") != NULL)
				{
					printf("Blue Won\n");
					char output[256];
					memset(output,0,256);
					sprintf(output,"UPDATE TeamStats SET Wins=Wins + 1 WHERE Team = \"Blue\";");
					result = mysql_query(database,output);
					if(result == 1)
					{
						printf("EEEEERRROOORRR!!!!\n");
					}
				}
				if(strstr(trailing,"Red") != NULL)
				{
					printf("Red Won\n");
					char output[256];
					memset(output,0,256);
					sprintf(output,"UPDATE TeamStats SET Wins=Wins + 1 WHERE Team = \"Red\";");
					result = mysql_query(database,output);
					if(result == 1)
					{
						printf("EEEEERRROOORRR!!!!\n");
					}
				}
			}
			//new pokemon sent out
			if(strstr(trailing,"sent out"))
			{
				int t_pos = 0;
				char new_pokemon[P_BUFFER_SIZE];
				char comp_pokemon[P_BUFFER_SIZE];
				memset(new_pokemon,0,P_BUFFER_SIZE);
				memset(comp_pokemon,0,P_BUFFER_SIZE);
				if(strstr(trailing,"Red") != NULL)
				{
					t_pos = 20;
					strncpy(new_pokemon,trailing + t_pos,strlen(trailing + t_pos) - 1);
					for(int i = 0; i< strlen(new_pokemon);i++)
					{
						new_pokemon[i] = toupper(new_pokemon[i]);
					}
					for(int i = 0; i < 6; i++)
					{
						if(pokemon[i] != NULL)
						{
							pokemon[i]->getSpecies(comp_pokemon);
							if(strcmp(new_pokemon,comp_pokemon) == 0)
							{
								current_red = i;
								break;
							}
						}
					}
					printf("RED SENT :%s %d\n",new_pokemon,current_red);
					
				}
				if(strstr(trailing,"Blue") != NULL)
				{
					t_pos = 21;
					strncpy(new_pokemon,trailing + t_pos,strlen(trailing + t_pos) - 1);
					for(int i = 0; i< strlen(new_pokemon);i++)
					{
						new_pokemon[i] = toupper(new_pokemon[i]);
					}
					for(int i = 0; i < 6; i++)
					{
						if(pokemon[i] != NULL)
						{
							pokemon[i]->getSpecies(comp_pokemon);
							if(strcmp(new_pokemon,comp_pokemon) == 0)
							{
								current_blue = i;
								break;
							}
						}
					}
					printf("BLUE SENT:%s %d\n",new_pokemon,current_blue);
				}
				
				
			}
			
			
		}
		
		if(strstr(trailing,"The battle between"))
		{
			char* front_ref = trailing + 26;
			current_blue = 0;
			current_red = 3;
			//printf("Pokemon are: %s\n",front_ref);
			char sp[18];
			memset(sp,0,18);
			extractPokemon(front_ref);
			pokemon[current_blue]->getSpecies(sp);
			printf("Blue sent out %s!\n",sp);
			pokemon[current_red]->getSpecies(sp);
			printf("Red sent out %s!\n",sp);
		}
			   
		
	}
	//mutex->unlock();
}

void Monitor::initDatabase(const char* db, const char* password)
{
	if(database != NULL)
	{
		mysql_close(database);
	}
	database = mysql_init(NULL);
	if(mysql_real_connect(database,"localhost","root",password,db,0,NULL,0) == NULL)
	{
		printf("Error connecting to database!\n");
		mysql_close(database);
		return;
	}
	
	//extractPokemon("ARCEUS POISON, Luvdisc, ARCEUS POION and Nosepass, Sealeo, ARCEUS POISON has just begun!");
	
	
}





void Monitor::extractPokemon(const char* l)
{
	mutex->lock();
	printf("Loading Pokemon\n");
	printf("Pokemon are: %s\n",l);
	for(int i = 0; i < 6; i++)
	{
		if(pokemon[i] != NULL)
		{
			delete pokemon[i];
			pokemon[i] = NULL;
		}
	}
	char list[128];
	strcpy(list,l);
	//printf("%c%c%c\n",list[0],list[1],list[2]);
	char n[128];
	memset(n,0,128);
	int count = 0;
	int it = 0;
	//pokemon 1
	while(list[count] != ',')
	{
		n[it] = list[count];
		count++;
		it++;
	}
	n[it + 1] = 0;
	
	count+=2;
	for(int i = 0; i< strlen(n);i++)
	{
		n[i] = toupper(n[i]);
	}
	pokemon[0] = new Pokemon(n,database);
	memset(n,0,128);
	it = 0;
	
	
	
	
	//pokemon 2
	while(list[count] != ',')
	{
		n[it] = list[count];
		count++;
		it++;
	}
	n[it + 1] = 0;
	for(int i = 0; i< strlen(n);i++)
	{
		n[i] = toupper(n[i]);
	}
	pokemon[1] = new Pokemon(n,database);
	count+=2;
	memset(n,0,128);
	it = 0;
	//pokemon 3
	while(!((list[count] == ' ') && (list[count + 1] == 'a')))
	{
		n[it] = list[count];
		count++;
		it++;
	}
	n[it + 1] = 0;
	for(int i = 0; i< strlen(n);i++)
	{
		n[i] = toupper(n[i]);
	}
	pokemon[2] = new Pokemon(n,database);
	count+=5;
	memset(n,0,128);
	it = 0;
	
	
	
	
	
	//pokemon 4
	while(list[count] != ',')
	{
		n[it] = list[count];
		count++;
		it++;
	}
	n[it + 1] = 0;
	for(int i = 0; i< strlen(n);i++)
	{
		n[i] = toupper(n[i]);
	}
	pokemon[3] = new Pokemon(n,database);
	count+=2;
	memset(n,0,128);
	it = 0;
	
	//pokemon 5
	while(list[count] != ',')
	{
		n[it] = list[count];
		count++;
		it++;
	}
	n[it + 1] = 0;
	for(int i = 0; i< strlen(n);i++)
	{
		n[i] = toupper(n[i]);
	}
	pokemon[4] = new Pokemon(n,database);
	count+=2;
	memset(n,0,128);
	it = 0;
	
	//pokemon 6
	while(!((list[count] == ' ') && (list[count + 1] == 'h')))
	{
		n[it] = list[count];
		count++;
		it++;
	}
	n[it + 1] = 0;
	for(int i = 0; i< strlen(n);i++)
	{
		n[i] = toupper(n[i]);
	}
	pokemon[5] = new Pokemon(n,database);
	memset(n,0,128);
	it = 0;
	
	printf("%100d\n",counter);
	counter++;
	
	//printf("%c,%c\n",list[count],list[count + 1]);
	mutex->unlock();
}

Pokemon* Monitor::getRedPokemon()
{
	if(current_red < 0)
	{
		mutex->lock();
		Pokemon* clone = new Pokemon(pokemon[current_red]);
		mutex->unlock();
		return clone;
	}
	return NULL;
}

Pokemon* Monitor::getBluePokemon()
{
	if(current_blue < 0)
	{
		mutex->lock();
		Pokemon* clone = new Pokemon(pokemon[current_blue]);
		mutex->unlock();
		return clone;
	}
	return NULL;
}

void Monitor::getRedMoves(char* buf)
{
	mutex->lock();
	if(current_red >= 0)
	{
		pokemon[current_red]->getMoveString(buf);
	}
	else
	{
		strcpy(buf,"A|B|C|D|");
	}
	mutex->unlock();
}

void Monitor::getBlueMoves(char* buf)
{
	mutex->lock();
	if(current_blue >= 0)
	{
		pokemon[current_blue]->getMoveString(buf);
	}
	else
	{
		strcpy(buf,"A|B|C|D|");
	}
	mutex->unlock();
}








