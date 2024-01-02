CC := gcc
CFLAGS := -Wall -Werror -Wextra

SOURCES := $(wildcard *.c)
OBJECTS := $(SOURCES:.c=.o)

all: $(OBJECTS)

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS)
