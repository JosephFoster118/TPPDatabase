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
	//printf("Number of fields %d  %d\n",num_fields,row);
	if(row != NULL)
	{
	 
		for(int i = 0; i < num_fields; i++) 
		{ 
			//printf("\"%s\" ", row[i] ? row[i] : "NULL");
			switch(i)
			{
				case 0:
					{
						strcpy(move_a,row[i] ? row[i] : "NULL");
					}
				case 1:
					{
						strcpy(move_b,row[i] ? row[i] : "NULL");
					}
				case 2:
					{
						strcpy(move_c,row[i] ? row[i] : "NULL");
					}
				case 3:
					{
						strcpy(move_d,row[i] ? row[i] : "NULL");
					}
			}
		} 
			//printf("\n"); 
	}
	else
	{
		fprintf(stderr,"Error, %s not found\n",species);
		fflush(stderr);
	}
	
	mysql_free_result(result);
	generateMoveString();
	
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
	generateMoveString();
}

Pokemon::Pokemon(Pokemon* tbc)
{
	id = tbc->getId();
	tbc->getMoveA(move_a);
	tbc->getMoveB(move_b);
	tbc->getMoveC(move_c);
	tbc->getMoveD(move_d);
	generateMoveString();
}

void Pokemon::generateMoveString()
{
	sprintf(move_output_string,"%s|%s|%s|%s|",move_a,move_b,move_c,move_d);
}

void Pokemon::getMoveString(char* str)
{
	strcpy(str,move_output_string);
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









