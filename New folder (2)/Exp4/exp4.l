%option noyywrap
%{
	#include <stdio.h>
	int vowel_count = 0;
	int consonant_count = 0;
%}

%%
[AEIOU|aeiou]       { vowel_count++; }
[A-Z|a-z]           { consonant_count++; }
%%

int main()
{
    printf("enter a string:\n");
    yylex();
    printf("vowel = %d\n", vowel_count);
    printf("consonant = %d\n", consonant_count);
    getch();
    return 0;
}