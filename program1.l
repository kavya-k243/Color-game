%{
#include<stdio.h>
%}
%%
"HI" {printf("Hello");}
.* {printf("Wrong Input");}
%%
int main()
{
printf("Enter input string:\n");
yylex();

return 0;
}
int yywrap()
{
return 1;
}