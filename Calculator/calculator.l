%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>

int result = 0;
int last_op = '+';

void calculate(int num) {
    switch(last_op) {
        case '+': result += num; break;
        case '-': result -= num; break;
        case '*': result *= num; break;
        case '/': 
            if(num == 0) {
                printf("Error: Division by zero\n");
                exit(1);
            }
            result /= num; 
            break;
    }
}
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    calculate(num);
}
[+\-*/] {
    last_op = yytext[0];
}
[ \t\n]+  ;  // ignore whitespace
. {
    printf("Invalid character: %s\n", yytext);
    exit(1);
}
<<EOF>> {
    printf("Result = %d\n", result);
    return 0;
}
%%

int main() {
    printf("Enter expression: ");
    yylex();
    return 0;
}
