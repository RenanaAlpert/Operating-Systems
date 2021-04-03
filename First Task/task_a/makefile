CC = gcc -Wall -g
DYNAMIC = LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./; export LD_LIBRARY_PATH=.

all: main1_1 main1_2 main1_3
	
main1_1: main1_1.o hello_ariel.o
	$(CC) main1_1.o hello_ariel.o -o main1_1

main1_2: main1_2.o libhello_ariel.so
	$(CC) main1_2.o -lhello_ariel -L. -o main1_2

main1_3: main1_3.o libhello_ariel.so
	$(DYNAMIC)
	$(CC) main1_3.o -lhello_ariel -L. -o main1_3

main1_1.o: main1_1.c hello_ariel.h
	$(CC) -c main1_1.c -o main1_1.o

main1_2.o: main1_2.c hello_ariel.h
	$(CC) -c main1_2.c -o main1_2.o 

main1_3.o: main1_3.c hello_ariel.h
	$(CC) -c main1_3.c -o main1_3.o

libhello_ariel.so: hello_ariel.c
	$(CC) -c hello_ariel.c -shared -fPIC -o libhello_ariel.so 

hello_ariel.o: hello_ariel.c
	$(CC) -c hello_ariel.c -o hello_ariel.o 

.PHONY: clean all

clean:
	rm *.o main1_1 main1_2 main1_3 *.so
