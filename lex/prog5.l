%{
#include<stdio.h>
int pf=0,sf=0;
%}

%%
"printf" {fprintf(yyout, "writef"); pf++; }
"scanf" {fprintf(yyout, "readf"); sf++; }
%%

yywrap()
{
return 1;
}

main()
{
char fname1[10],fname2[10];
printf("enter file1\n");
scanf("%s",fname1);
yyin=fopen(fname1,"r");
printf("enter file2");
scanf("%s",fname2);
yyout=fopen(fname2,"w");
yylex();
printf("printf=%d\n scanf=%d\n",pf,sf);
}
