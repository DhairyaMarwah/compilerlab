%{ #include<stdio.h> int ans=0,curr=0; %}
%%
"//"
"/*"
"*/"
.;
%%
int yywrap() {
{ans++; }
{curr = 1; }
{if(curr==1) {ans++, curr=0;} }
return 1; }
int main() { yylex();
printf("No of comments are : %d\n", ans);
return 0; }
