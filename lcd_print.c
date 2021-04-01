#include <stdio.h>
#include <unistd.h>
#include "base.h"
#include "char.h"

void char_selector(int bool)
{
	if (bool == 1){
		write (1, "@", 1);
	} else if (bool == 0){
		write (1, " ", 1);
	}
}

int my_strlen(const char* str)
{
	int i;
	for (i = 0; str[i] != '\0'; i++);
	return i;
}

void lcd_print(const char* str)
{
    for (int i = 0; i < 8; i++){
    	for (int l = 0; l < 18; l++){
    		for (int j = 0; j < 5; j++){
    			char_selector(lcd_ascii[l][i][j]);
    		}
    		write(1, " ", 1);
    	}
    	write(1, "\n", 1);
    }
}