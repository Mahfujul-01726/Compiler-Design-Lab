%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-z0-9._]*[@][a-z.]* {printf("Email Valid\n");} 
.* {printf("Email is not Valid");} 
%%
int main()
{
yylex();
	return 0;
}