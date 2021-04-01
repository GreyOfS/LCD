#include <unistd.h>
#include "base.h"

int main(int argc, char** argv)
{
    if (argc == 2){
        lcd_print(argv[1]);
        return SUCC;
    }else{
        write(1, "Pas assez ou trop d'arguments\n", 30);
        return FAIL;
    }
}
