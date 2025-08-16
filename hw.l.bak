%option noyywrap
%{
    #include<stdio.h>

    int vowel_count = 0;
    int consonant_count = 0;
    int char_position = 0;  // Track character position
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

.|\n            ;   // Ignore other characters (but still count position)
                   // Note: This will skip non-letter characters but increment position

%%

int main()
{
    printf("Enter a string:\n");
    yylex();
    printf("\nTotal vowels: %d\n", vowel_count);
    printf("Total consonants: %d\n", consonant_count);
    return 0;
}