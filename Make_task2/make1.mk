CC := gcc
SOURCE := src1.c
OBJECT := $(SOURCE:.c=.o)

all: $(OBJECT)

%.o: %.c
	$(CC) -c $< -o $@
