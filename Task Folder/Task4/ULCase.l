%option noyywrap
%{
#include <stdio.h>
%}

%%
[A-Z]   { printf("Uppercase: %s\n", yytext); }
[a-z]   { printf("Lowercase: %s\n", yytext); }
.       { /* Ignore */ }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}
