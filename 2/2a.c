#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>

int main()
{
 char s1[16]="0123456789012345";
 char s2[16]="abcdefghijklmnop";
 int fp;
 fp=creat("a.dat",0);
 write(fp,s1,16);
 lseek(fp,48,SEEK_SET);
 write(fp,s2,16);
  system("chmod 777 a.dat");
 system("od -bc a.dat");

}
