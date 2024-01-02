CC := gcc
CFLAGS := -Wall -Werror -Wextra

SOURCES := $(wildcard *.c)
OBJECTS := $(SOURCES:.c=.o)

main.o: main.c
	$(CC) -c main.c

src1.o: src1.c
	$(CC) -c src1.c

clean:
	rm -f $(OBJECTS)
