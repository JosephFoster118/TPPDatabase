#pragma once

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <mysql.h>

#define P_BUFFER_SIZE 32
#define P_M_BUFFER_SIZE 2048

class Pokemon
{
	public:
	Pokemon(const char* data,MYSQL *db);
	Pokemon(int i, const char* spec, const char* ab, const char* it,
		const char* m_a, const char* m_b, const char* m_c, const char* m_d);
	Pokemon(Pokemon* tbc);//Clone Constructor
	int getId();
	void getSpecies(char* str);
	void getAbility(char* str);
	void getMoveA(char* str);
	void getMoveB(char* str);
	void getMoveC(char* str);
	void getMoveD(char* str);
	void getMoveString(char* str);
	
	
	private:
	int id;
	char species[P_BUFFER_SIZE];
	char ability[P_BUFFER_SIZE];
	char item[P_BUFFER_SIZE];
	char move_a[P_BUFFER_SIZE];
	char move_b[P_BUFFER_SIZE];
	char move_c[P_BUFFER_SIZE];
	char move_d[P_BUFFER_SIZE];
	char move_output_string[P_M_BUFFER_SIZE];
	void generateMoveString();
	
	
	
};




