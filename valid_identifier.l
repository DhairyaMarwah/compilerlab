%{
#include<stdio.h>    
%}
%%
[a-zA-Z_][a-zA-Z_0-9]* {printf("Identifier\n");}
[0-9]+ {printf("Number\n");}
[ \t\n] {;}
%%
int yywrap(){
    return 1;
}
int main(){
    yylex();
    return 0;
}