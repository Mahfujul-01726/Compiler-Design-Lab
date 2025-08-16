%option noyywrap
%{
	#include<stdio.h>
	int line=0,other=0,space=0;
%}

%%
\n {line++;}
[ ] {space++;}
. {other++;}
%%
int main()
{
yylex();
printf("%d %d",line,space);
getch();
	return 0;
}