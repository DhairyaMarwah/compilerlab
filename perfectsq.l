%{
#include<stdio.h> #include<math.h> #include<string.h> void check(char*);
%}
%%
[0-9]+ {check(yytext);} %%
void check(char *a) {
int len = strlen(a), i, num = 0; for (i = 0; i < len; i++)
num = num * 10 + (a[i] - '0'); if (num >= 0) {
int sr = sqrt(num); if(sr * sr == num) {
printf("Perfect Square");
return; }
}
printf("Not a Perfect Square"); }
int yywrap() {return 1;} int main() {
yylex();
return 0; }