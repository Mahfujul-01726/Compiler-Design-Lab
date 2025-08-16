%option noyywrap
%{
	#include<stdio.h>
%}

%%
{AEIOU| aeiou] (printf("Vowel");)
{A-Z| a-z} (printf("Consonant");)
%%
int main()
{
	printf(" Enter a String: \n");
	yylex();
	return 0;
}