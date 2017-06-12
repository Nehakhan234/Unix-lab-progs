%{
#include<stdio.h>
int vc=0,cc=0;
%}

%%
[aeiouAEIOU] vc++;
[a-zA-Z] cc++;
[ \n\t];

%%
int yywrap()
{
return 1;
}

main()
{
printf("enter a string\n");
yylex();
printf("no of vowels=%d\n no of consonants=%d\n",vc,cc);
}

