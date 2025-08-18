%{
#include <stdio.h>
int upper = 0, lower = 0;
%}

%%

[A-Z]      { upper++; }
[a-z]      { lower++; }
.          ; 

%%

int main()
{
    yylex();
    printf("Uppercase: %d\nLowercase: %d\n", upper, lower);
    return 0;
}

int yywrap()
{
    return 1;
}