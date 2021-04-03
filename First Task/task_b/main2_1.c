#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    printf("The grand parent's (i.e - main) id is %d\n", getpid());
    int fork_id = fork();
    if(fork_id == -1)
    {
        perror("Couldn't create a clone");
        return -1;
    }
    else if(fork_id == 0)
    {
        printf("the child's process id is %d\n", getpid());
        fork_id = fork();
        if(fork_id == -1)
        {
            perror("Couldn't clone the child");
            return -1;
        }
        else if(fork_id == 0)
        {
            printf("the grandchild's process id is %d\n",getpid());
        }
    }
    else
        sleep(1);
    return 0;
}