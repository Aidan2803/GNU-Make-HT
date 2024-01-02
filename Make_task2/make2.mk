CC := gcc
SOURCE := src2.c
OBJECT := $(SOURCE:.c=.o)

all: $(OBJECT)

%.o: %.c
	$(CC) -c $< -o $@
