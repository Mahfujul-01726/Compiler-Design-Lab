%option noyywrap
%{
	#include<stdio.h>
%}

%%

%%
int main()
{	
	printf(" Welcome To NUBTK");
	yylex();
	return 0;
}