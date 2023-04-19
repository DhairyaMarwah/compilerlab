%{
#include<stdio.h>    
int count=1;
%}

%%
[ ] {count++;}
[\n] {printf("Number of words: %d\n", count); }
%%
int yywrap(){
    return 1;
}
int main(){
    yylex();
    return 0;
}