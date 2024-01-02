CC := gcc
SOURCE := src3.c
OBJECT := $(SOURCE:.c=.o)

all: $(OBJECT)

%.o: %.c
	$(CC) -c $< -o $@
