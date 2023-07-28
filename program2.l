%{
#include<stdio.h>
int n;
%}
%%
[+|-]?[0-9]+ {n=atoi(yytext);
if(n%2==0)
printf("\t Even number");
else
printf("\tOdd number");}
.* {printf("\tWrong Input");}
%%
int main()
{
printf("Enter the input number:\n");
yylex();
return 0;
}
int yywrap()
{
return 1;
}