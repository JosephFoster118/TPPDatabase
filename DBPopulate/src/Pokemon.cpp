#include "Pokemon.h"


Pokemon::Pokemon(const char* d)
{
	//printf("----------------Pokemon Data----------------\n");
	id = 0;
	memset(species,0,P_BUFFER_SIZE);
	memset(ability,0,P_BUFFER_SIZE);
	memset(item,0,P_BUFFER_SIZE);
	memset(move_a,0,P_BUFFER_SIZE);
	memset(move_b,0,P_BUFFER_SIZE);
	memset(move_c,0,P_BUFFER_SIZE);
	memset(move_d,0,P_BUFFER_SIZE);
	//printf("Pokemon RAW Data [%s]\n",d);
	//parse data
	char parsed_data[512];
	memset(parsed_data,0,512);
	char data[512];
	strcpy(data,d);
	char* front_ref = data;
	char* back_ref = data;
	back_ref = strchr(front_ref,'\t');
	strncpy(parsed_data,front_ref,back_ref - front_ref);
	id = atoi(parsed_data);
	//printf("ID: \"%s\" \"%d\"\n",parsed_data,id);
	
	
	memset(parsed_data,0,512);
	front_ref = back_ref+1;
	back_ref = strchr(front_ref,'\t');
	strncpy(parsed_data,front_ref,back_ref - front_ref);
	strcpy(species,parsed_data);
	//printf("Species: \"%s\" \"%s\"\n",parsed_data,species);
	
	
	memset(parsed_data,0,512);
	front_ref = back_ref+1;
	back_ref = strchr(front_ref,'\t');
	strncpy(parsed_data,front_ref,back_ref - front_ref);
	strcpy(ability,parsed_data);
	//printf("Ability: \"%s\" \"%s\"\n",parsed_data,ability);
	
	
	memset(parsed_data,0,512);
	front_ref = back_ref+1;
	back_ref = strchr(front_ref,'\t');
	strncpy(parsed_data,front_ref,back_ref - front_ref);
	strcpy(move_a,parsed_data);
	//printf("Move A: \"%s\" \"%s\"\n",parsed_data,move_a);
	
	
	memset(parsed_data,0,512);
	front_ref = back_ref+1;
	back_ref = strchr(front_ref,'\t');
	strncpy(parsed_data,front_ref,back_ref - front_ref);
	strcpy(move_b,parsed_data);
	//printf("Move B: \"%s\" \"%s\"\n",parsed_data,move_b);
	
	
	memset(parsed_data,0,512);
	front_ref = back_ref+1;
	back_ref = strchr(front_ref,'\t');
	strncpy(parsed_data,front_ref,back_ref - front_ref);
	strcpy(move_c,parsed_data);
	//printf("Move C: \"%s\" \"%s\"\n",parsed_data,move_c);
	
	
	memset(parsed_data,0,512);
	front_ref = back_ref+1;
	back_ref = strchr(front_ref,'\t');
	strncpy(parsed_data,front_ref,back_ref - front_ref);
	strcpy(move_d,parsed_data);
	//printf("Move D: \"%s\" \"%s\"\n",parsed_data,move_d);
	
	
}

int Pokemon::getId()
{
	return id;
}

void Pokemon::getSpecies(char* str)
{
	strcpy(str,species);
}

void Pokemon::getMoveA(char* str)
{
	strcpy(str,move_a);
}

void Pokemon::getMoveB(char* str)
{
	strcpy(str,move_b);
}

void Pokemon::getMoveC(char* str)
{
	strcpy(str,move_c);
}

void Pokemon::getMoveD(char* str)
{
	strcpy(str,move_d);
}









