CC = gcc
CFLAGS = -Wall -g -c
LFLAGS = -Wall -g

all: main2_1 main2_2 main2_3 main2_4

main2_1: main2_1.o
	$(CC) $(LFLAGS) main2_1.o -o main2_1

main2_2: main2_2.o
	$(CC) $(LFLAGS) main2_2.o -o main2_2

main2_3: main2_3.o
	$(CC) $(LFLAGS) main2_3.o -o main2_3

main2_4: main2_4.o
	$(CC) $(LFLAGS) main2_4.o -o main2_4

main2_1.o: main2_1.c
	$(CC) $(CFLAGS) main2_1.c -o main2_1.o

main2_2.o: main2_2.c
	$(CC) $(CFLAGS) main2_2.c -o main2_2.o 

main2_3.o: main2_3.c
	$(CC) $(CFLAGS) main2_3.c -o main2_3.o

main2_4.o: main2_4.c
	$(CC) $(CFLAGS) main2_4.c -o main2_4.o


.PHONEY: all clean

clean:
	rm *.o main2_1 main2_2 main2_3 main2_4