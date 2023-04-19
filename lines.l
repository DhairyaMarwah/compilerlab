%{
#include<stdio.h>
int lines = 0, spaces = 0, other = 0;
%}

%%
\n      { lines++; }
[ ]     { spaces++; }
[^a-zA-Z0-9\n ] { other++; }
.       { }

%%
int yywrap()
{
    return 1;
}
int main() {
    yylex();
    printf("Lines: %d\nSpaces: %d\nOther: %d\n", lines, spaces, other);
    return 0;
}

