%option noyywrap
%{
    #include<stdio.h>

    int vowel_count = 0;
    int consonant_count = 0;
    int char_position = 0;  // Tracks letter positions (ignores non-letters)
%}

%%

[AEIOUaeiou]    { 
                    char_position++;
                    printf("Vowel at position %d\n", char_position); 
                    vowel_count++; 
                }

[A-Za-z]        { 
                    char_position++;
                    printf("Consonant at position %d\n", char_position); 
                    consonant_count++; 
                }

.|\n            ;   // Ignore other characters (non-letters don't increment position)

%%

int main() {
    printf("Enter a string (press Ctrl+D/Ctrl+Z to end input):\n");
    yylex();  // Start lexing
    printf("\nTotal vowels: %d\n", vowel_count);
    printf("Total consonants: %d\n", consonant_count);
    return 0;
}