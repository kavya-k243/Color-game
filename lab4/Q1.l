

%{
#include<stdio.h>
%}
reg ([0-9]*[02468])
%%
{reg} printf("%s : Even\n",yytext);
.* printf("%s : Odd\n",yytext);
%%
/*call the yywrap function*/
int yywrap(){}
int main(int argc, char *argv[])
{
printf("Enter input string:\n");
extern FILE *yayin;
yyin = fopen(argv[1],"r");
yylex();
return 0;
}
