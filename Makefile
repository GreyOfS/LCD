##
## GreyOfS, 2021
## Makefile
## File description:
## WeatherDetekto
##

SRC = $(wildcard *.c)

NAME = LCD

all:
	@figlet -c -t $(NAME) | lolcat || echo $(NAME)
	@echo "─\e[33mCompilation\e[5m...\e[0m"
	@gcc -o $(NAME) $(SRC)
	@echo "└────\e[32mSUCCESS\e[0m"

clean:
	@echo "─\e[33mClean\e[5m...\e[0m"
	@echo "└────\e[32mSUCCESS\e[0m"

fclean: clean
	@echo "─\e[33mFull Clean\e[5m...\e[0m"
	@rm -f $(NAME)
	@echo "└────\e[32mSUCCESS\e[0m"

re: fclean all

exec: re
	@figlet -c -t Test Start | lolcat || echo "Test Start"
	./$(NAME) "Ceci est un test !"
	@figlet -c -t Test End | lolcat || echo "Test End"

author:
	@echo "Jean André BEUF [Grey]"
