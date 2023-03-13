##
## EPITECH PROJECT, 2022
## mysh
## File description:
## makefile
##

NAME	=	chocolatine

CC		=	gcc -g3
RM		=	rm -rf

SRC		=	$(shell find src -type f -name "*.c")

OBJ		=	$(SRC:.c=.o)

LIB		=	-lm -Iinclude

WARN1	=	-W -Wall -Wextra -Wpedantic -Wformat-nonliteral -Wformat-signedness
WARN2	=	-Wconversion -Wunsuffixed-float-constants -Wmissing-prototypes
WARN3	=	-Wunused-macros -Warith-conversion -Wno-unused-parameter

$(NAME):
		@$(CC) -o $(NAME) $(SRC) $(WARN1) $(WARN2) $(WARN3) $(LIB)
		@make -s clean

all:	$(NAME)

clean:
		$(RM) $(OBJ)

fclean:	clean
		$(RM) $(NAME)

re:		fclean all

tests_run:
		@make -s clean

.PHONY:	all clean fclean re
