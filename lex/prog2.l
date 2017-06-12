%{
#include<stdio.h>
int cc=0,wc=0,sc=0,lc=0;
%}

%%
[^ \n\t]+ wc++,cc+=yyleng;
[ ] sc++,cc++;
[\n] lc++;
[\t] sc+=8,cc+=8;
%%

int yywrap()
{
return 1;
}

main()
{
char fname[10];
printf("enter the file name\n");
scanf("%s",fname);
yyin=fopen(fname,"r");
yylex();
printf("character=%d\n words=%d\n spaces=%d\n lines=%d\n ",cc,wc,sc,lc);
}
