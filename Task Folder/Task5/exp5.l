%option noyywrap
%{
	#include<stdio.h>
%}

%%
[0-9]  {printf("Digt ");}
[0-9]* {printf("Number");}
"if"|"else"|"while"|"do"|"switch"|"case" {printf("Keyword");}
.* {printf("Others");}

%%
int main()
{	
        printf("Enter String\n");
	yylex();
	return 0;
}