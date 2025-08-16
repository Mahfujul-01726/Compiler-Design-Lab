%option noyywrap
%{
	#include<stdio.h>
%}

%%
[A-Z] {printf("Uppercase ");}
[a-z] {printf("Lowercase ");}
%%
int main()
{
	printf("Enter String\n");
	yylex();
	return 0;
}