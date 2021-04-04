#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <sched.h>
#include <unistd.h>
#include <stdlib.h>

#define STACK_SIZE 10000

int grand_child(void* text)
{
    printf("grand child process");
}

int child(void* text)
{
    int clone_id = clone(grand_child, STACK_SIZE, CLONE_PARENT, 0);
    printf("child process");
}

int main(int argc, int argv[])
{
    int clone_id = clone(child, STACK_SIZE, CLONE_PARENT, 0);
    return 0;
}