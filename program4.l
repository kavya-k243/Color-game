%{
#include<stdio.h>
#include<stdlib.h>
int count=0,space=0,tcount=0,rcount=0; 
%}

%%
\n count++; 
" " space++; /* Increase the value of space variable whenever encounter " ".*/
\t tcount++; /* Increase the value of tcount variable whenever encounter tab .*/
[^\t" "\n] rcount++; /* Otherwise, Increase the value of rcount variable.*/
. ;
%%

int main(void)
{
yyin=fopen("myfile.txt","r"); 
yylex(); 
printf("\nNumber of lines are:: %d\n",count); 
printf("Number of spaces are:: %d\n",space); 
printf("Number of tab character are:: %d\n",tcount);
printf("Number of rest character are:: %d\n",rcount); 
}

int yywrap() 
{
return 1;
}