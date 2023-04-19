%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
[a-z0-9]+"@gmail.com" { fprintf(yyout, "Accepted"); } .+ { fprintf(yyout, "Not Accepted"); }
%%
int yywrap() {return 1;}
int main()
{
extern FILE *yyin, *yyout;
yyin = fopen("f3input.txt", "r"); yyout = fopen("f3output.txt", "w"); yylex();
}
