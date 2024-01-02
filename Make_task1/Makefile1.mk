CC := gcc
CFLAGS := -Wall -Werror -Wextra

SOURCES := $(wildcard *.c)
OBJECTS := $(SOURCES:.c=.o)
EXECUTABLE := exec

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
