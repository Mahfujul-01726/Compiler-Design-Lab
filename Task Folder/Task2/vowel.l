%option noyywrap
%{
    #include<stdio.h>
%}

%%
[AEIOUaeiou]    printf("Vowel");
[A-Za-z]        printf("Consonant");

%%

int main()
{
    printf("Enter a string:\n");
    yylex();
    return 0;
}