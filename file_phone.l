%{
#include<stdio.h>
%}
%%
[79][0-9]{9} {fprintf(yyout, "Valid Phone Number\n");} .+ {fprintf(yyout, "Invalid Phone Number\n");}
%%
int yywrap() {
return 1; }
int main() {
extern FILE *yyin, *yyout;
yyin = fopen("f5input.txt", "r"); yyout = fopen("f5output.txt", "w"); yylex();
return 0;
}
