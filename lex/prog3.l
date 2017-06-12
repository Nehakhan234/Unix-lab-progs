%{
#include<stdio.h>
int pi=0,ni=0,pf=0,nf=0;
%}

D[0-9]
%%
{D}+ pi++;
-{D}+ ni++;
{D}*"."{D}+ pf++;
-{D}*"."{D}+ nf++;
%%

int yywrap()
{
return 1;
}

void main()
{
printf("enter the no ");
yylex();
printf("+ve i=%d\n-ve i=%d\n+ve f=%d\n-ve f=%d",pi,ni,pf,nf);
}
