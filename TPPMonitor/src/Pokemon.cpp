#include "Pokemon.h"


Pokemon::Pokemon(const char* d,MYSQL *db)
{
	memset(species,0,P_BUFFER_SIZE);
	memset(ability,0,P_BUFFER_SIZE);
	memset(item,0,P_BUFFER_SIZE);
	memset(move_a,0,P_BUFFER_SIZE);
	memset(move_b,0,P_BUFFER_SIZE);
	memset(move_c,0,P_BUFFER_SIZE);
	memset(move_d,0,P_BUFFER_SIZE);
	
	
	
	strcpy(species, d);
	printf("Loading Pokemon \"%s\"\n",species);
	
	MYSQL_ROW row;
	char input[256];
	memset(input,0,256);
	sprintf(input,"SELECT MoveA,MoveB,MoveC,MoveD FROM MoveList where Pokemon=\"%s\"",species);
	if (mysql_query(db, input)) 
	{
		printf("Error loading moves!\n");
		
	}
	
	MYSQL_RES *result = mysql_store_result(db);
	int num_fields = mysql_num_fields(result);
	row = mysql_fetch_row(result);
	 
		for(int i = 0; i < num_fields; i++) 
		{ 
			printf("\"%s\" ", row[i] ? row[i] : "NULL"); 
		} 
			printf("\n"); 
	
	mysql_free_result(result);
	
}

Pokemon::Pokemon(int i, const char* spec, const char* ab, const char* it,
		const char* m_a, const char* m_b, const char* m_c, const char* m_d)
{
	id = i;
	strcpy(species, spec);
	strcpy(ability, ab);
	strcpy(item, it);
	strcpy(move_a,m_a);
	strcpy(move_b,m_b);
	strcpy(move_c,m_c);
	strcpy(move_d,m_d);
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









