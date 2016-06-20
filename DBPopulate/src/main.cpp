
#include <stdio.h>
#include <string.h>
#include <mysql.h>
#include <unistd.h>
#include <ctype.h>

#include "Pokemon.h"

#define BUFFER_SIZE 16384


int deleteTable(MYSQL *db, const char* table)
{
	int result = 0;
	char output[BUFFER_SIZE];
	memset(output,0,BUFFER_SIZE);
	sprintf(output,"DROP TABLE %s;",table);
	result = mysql_query(db,output);
	return result;
}
	
	
int addEntry(MYSQL *db, const char* table, const char* data)
{
	int result = 0;
	char output[BUFFER_SIZE];
	memset(output,0,BUFFER_SIZE);
	sprintf(output,"INSERT INTO %s VALUES (%s);",table,data);
	result = mysql_query(db,output);
	return result;
}

int createTable(MYSQL *db, const char* table, const char* datatypes)
{
	int result = 0;
	char output[BUFFER_SIZE];
	memset(output,0,BUFFER_SIZE);
	sprintf(output,"CREATE TABLE IF NOT EXISTS %s(%s);",table,datatypes);
	result = mysql_query(db,output);
	return result;
}

int buildMoveList(MYSQL *database, const char* file_name)
{
	FILE *list_file = NULL;
	list_file = fopen(file_name,"r");
	if(list_file == NULL)
	{
		printf("ERROR: Could not open file \"%s\"\n",file_name);
		return -5;
	}
	int result = 0;
	int id = 0;
	char data[512];
	char species[32];
	char move_a[32];
	char move_b[32];
	char move_c[32];
	char move_d[32];
	memset(data,0,512);
	memset(move_a,0,32);
	memset(move_b,0,32);
	memset(move_c,0,32);
	memset(move_d,0,32);
	while(fgets(data,512,list_file))
	{
		Pokemon* pokemon = new Pokemon(data);
		id = pokemon->getId();
		pokemon->getSpecies(species);
		pokemon->getMoveA(move_a);
		pokemon->getMoveB(move_b);
		pokemon->getMoveC(move_c);
		pokemon->getMoveD(move_d);
		
		for(uint16_t i = 0; i < strlen(species); i++)
		{
			species[i] = toupper(species[i]);
		}
		printf("DATA: %3d %16s %14s %14s %14s %14s\n",id,species,move_a,move_b,move_c,move_d);
		sprintf(data,"%d,\"%s\",\"%s\",\"%s\",\"%s\",\"%s\"",id,species,move_a,move_b,move_c,move_d);
		printf("COMPILED: %s\n",data);
		result = addEntry(database,"MoveList",data);
		printf("Was Successful: %s\n",result?"NO":"YES");
		delete pokemon;
	}
	
	
}



int main()
{
	printf("Data Base Populate\n");
	printf("MySQL Client Version: %s\n",mysql_get_client_info());
	MYSQL *database = mysql_init(NULL);
	if(mysql_real_connect(database,"localhost","root","000104178700512546","Pokemon",0,NULL,0) == NULL)
	{
		printf("Error connecting to database!\n");
		return -1;
	}
	
	int result = -3;
	
	result = deleteTable(database,"MoveList");
	printf("Result: %d\n",result);
	result = createTable(database,"MoveList",
						 "ID int NOT NULL, Pokemon varchar(32) PRIMARY KEY,MoveA varchar(16),MoveB varchar(16),MoveC varchar(16),MoveD varchar(16)");
	
	printf("Result: %d\n",result);
	char buffer[BUFFER_SIZE];
	memset(buffer,0,BUFFER_SIZE);
	for(int i = 0; i < 100; i++)
	{
		sprintf(buffer,"%d,\"Poops %d\",\"123\",\"123\",\"123\",\"123\"",i,i);
		result = addEntry(database,"MoveList",buffer);
		printf("Result: %d %d\n",i,result); 
	}
	
	buildMoveList(database,"movelist.txt");
	
	return 0;
}