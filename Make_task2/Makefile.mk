CC := gcc
MAIN_SOURCE := main.c
SRC_OBJECTS := src1.o src2.o src3.o
MAIN_OBJECT := main.o
EXECUTABLE := main

all: main

main: $(SRC_OBJECTS) $(MAIN_OBJECT)
	$(CC) $^ -o $@
	echo $(MAIN_OBJECT)

print:
	echo $(MAIN_SOURCE)

%.o: %.c
	$(CC) -c $< -o $@

include make1.mk
include make2.mk
include make3.mk

.PHONY: clean

clean:
	rm -f $(MAIN_OBJECT) $(SRC_OBJECTS) $(EXECUTABLE)
