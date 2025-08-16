%option noyywrap
%{
	#include<stdio.h>
	int v_c=0;
	int c_c=0;
%}

%%
[aeiou|AEIOU] {printf("Vowel ");}
[a-z|A-Z] {printf("consonant ");}
%%

int main()
{
	printf("Enter String\n");
	yylex();
	getch();
	return 0;
}