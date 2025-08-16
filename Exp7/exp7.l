%option noyywrap
%{
    #include <stdio.h>
    int p=0, n=0, pf=0, nf=0;
%}

%%

-[0-9]+           { n++; }        
-[0-9]+\.[0-9]+   { nf++; }      
[0-9]+\.[0-9]+    { pf++; }       
[0-9]+            { p++; }        

%%
int main()
{
    yylex();
    printf("%d %d %d %d\n", p, n, pf, nf);
    return 0;
}
