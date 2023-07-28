

%{
#include<stdio.h>
%}
reg (aa|bb)*((ab|ba)(aa|bb)*(ab|ba)(aa|bb)*)*
%%
{reg} printf("%s : Accepted\n",yytext);
.* printf("%s : Not Accepted\n",yytext);
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
