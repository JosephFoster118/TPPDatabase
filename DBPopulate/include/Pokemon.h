#pragma once

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#define P_BUFFER_SIZE 32

class Pokemon
{
	public:
	Pokemon(const char* data);
	int getId();
	void getSpecies(char* str);
	void getAbility(char* str);
	void getMoveA(char* str);
	void getMoveB(char* str);
	void getMoveC(char* str);
	void getMoveD(char* str);
	private:
	int id;
	char species[P_BUFFER_SIZE];
	char ability[P_BUFFER_SIZE];
	char item[P_BUFFER_SIZE];
	char move_a[P_BUFFER_SIZE];
	char move_b[P_BUFFER_SIZE];
	char move_c[P_BUFFER_SIZE];
	char move_d[P_BUFFER_SIZE];
	
	
	
};




