NAME1 = Colleen
NAME2 = Grace
NAME3 = Sully

CC = gcc
ASM = nasm -f macho64

SRC1 = Colleen.s
SRC2 = Grace.s
SRC3 = Sully.s

OBJ1 = Colleen.o
OBJ2 = Grace.o
OBJ3 = Sully.o

all:
	@echo "Building..."
	$(ASM) $(SRC1)
	$(ASM) $(SRC2)
	$(ASM) $(SRC3)
	$(CC) $(OBJ1) -o $(NAME1)
	$(CC) $(OBJ2) -o $(NAME2)
	$(CC) $(OBJ3) -o $(NAME3)

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
