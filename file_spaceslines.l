%{
#include<stdio.h>
int spaces=0, lines=0, chars=0, tabs=0; %}
%%
[\n] {lines++;}
[' '] {spaces++;}
[^\t] {chars++;}
[\t] {tabs++;}
%%
int yywrap() {
return 1; }
int main() {
extern FILE *yyin, *yyout;
yyin = fopen("f1input.txt", "r");
yyout = fopen("f1output.txt", "w");
yylex();
fprintf(yyout, "No. of lines : %d\nNo. of spaces : %d\nNo. of characters : %d\nNo.
of tabs : %d",lines,spaces,chars,tabs); return 0;
}
