#include<unistd.h>
#include<string.h>
#include<stdio.h>
#include<sys/types.h>
#define maxline 20


int main()
{
  pid_t pid;
  int status;
  char buf[maxline];
  pid=fork();
  if(pid==0)
{
  printf("Enter a valid unix command\n");
  if(fgets(buf,maxline,stdin) !=NULL)
{
  buf[strlen(buf)-1]==0;
  system(buf);
}
}
 pid=waitpid(pid,&status,0);
}
