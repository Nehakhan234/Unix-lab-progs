%{
#include<stdio.h>
int count;
%}

%%
"/*"[a-zA-Z0-9' '\n\t]*"*/" count++;
"//"[^ \n]* count++;

%%
int yywrap()
{
return 1;
}

main()
{
char fname1[10],fname2[10];
printf("enter the file1");
scanf("%s",fname1);
yyin=fopen(fname1,"r");

printf("enter the file2");
scanf("%s",fname2);
yyout=fopen(fname2,"w");
yylex();
printf("no of comments= %d\n",count);
}
