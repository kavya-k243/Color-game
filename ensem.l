%{	
#undef yywrap
#define yywrap() 1
	void display(int);
%}

%%

[a|e|i|o|u|] {
		int flag=1;
		display(flag);
		return;
		}

.+ {
	int flag=0;
	display(flag);
	return;
	}
	
%%

void display(int flag)
{
	if(flag==1)
		printf(“The given letter [%s] is a vowel”,yytext);
	else
		printf(“The given letter [%s] is a consonant”,yytext);		
}

main()
{
	printf(“Enter a letter to check if it is a vowel or a consonant : “);
	yylex(); 
}

 


