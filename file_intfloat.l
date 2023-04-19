%{
#include<stdio.h>
%}
%%
[-+]*[0-9]+"."[0-9]+ {fprintf(yyout, "Float\n");} [-+]*[0-9]+ {fprintf(yyout, "Integer\n");}
%%
int yywrap() {
return 1; }
int main() {
extern FILE *yyin, *yyout;
yyin = fopen("f2input.txt", "r"); yyout = fopen("f2output.txt", "w"); yylex();
return 0;
}