#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/stat.h>
int main(int argc,char *argv[])
{
 struct stat buf;
int I=1;
if(argc==1)
{
printf("no args");
}

else
{
 do
{
 stat(argv[I],&buf);
 if(S_ISREG(buf.st_mode))
 printf("%s is regular file\n",argv[I]);
 else if(S_ISBLK(buf.st_mode))
 printf("%s is block file \n",argv[I]);
 else if(S_ISCHR(buf.st_mode))
 printf("%s is character file\n",argv[I]);
 else if(S_ISDIR(buf.st_mode))
 printf("%s directory \n",argv[I]);
 else if(S_ISFIFO(buf.st_mode))
  printf("%s is fifo file \n",argv[I]);
 else if(S_ISLNK(buf.st_mode))
 printf("%s is symbolic link file\n",argv[I]);
 else
 printf("%s is unknown file\n");
I++;
}
while(I<argc);
}
}
