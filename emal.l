%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
[a-z0-9]+"@gmail.com" { printf("Accepted"); } .+ { printf("Not Accepted"); }
%%
int yywrap() {
return 1; }
int main(){yylex();}