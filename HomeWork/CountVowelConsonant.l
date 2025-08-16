%option noyywrap
%{
    #include <stdio.h>

    int vowel_count = 0;
    int consonant_count = 0;
%}

%%
[AEIOUaeiou]     { 
                    printf("Vowel: %s\n", yytext); 
                    vowel_count++; 
                 }

[A-Za-z]         { 
                    printf("Consonant: %s\n", yytext); 
                    consonant_count++; 
                 }

.|\n             { /* Ignore other characters */ }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    printf("\nTotal vowels: %d\n", vowel_count);
    printf("Total consonants: %d\n", consonant_count);
    return 0;
}
