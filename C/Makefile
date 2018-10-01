NAME = Quine
NAME1 = Colleen
NAME2 = Grace
NAME3 = Sully
CC = @gcc
CFLAGS = -Wall -Wextra -Werror
SRC1 = Colleen.c
SRC2 = Grace.c
SRC3 = Sully.c
OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)
OBJ3 = $(SRC3:.c=.o)

$(NAME): $(OBJ1) $(OBJ2) $(OBJ3)
	@echo "Building..."
	$(CC) $(CFLAGS) $(OBJ1) -o $(NAME1)
	$(CC) $(CFLAGS) $(OBJ2) -o $(NAME2)
	$(CC) $(CFLAGS) $(OBJ3) -o $(NAME3)
	@echo "Complete!"

all: $(NAME)

clean:
	@/bin/rm -f $(OBJ1)
	@/bin/rm -f $(OBJ2)
	@/bin/rm -f $(OBJ3)

fclean: clean
	@/bin/rm -f $(NAME1)
	@/bin/rm -f $(NAME2)
	@/bin/rm -f $(NAME3)
	@/bin/rm -f Sully_*
	@/bin/rm -f Grace_*

all: $(NAME)

re:	fclean all
