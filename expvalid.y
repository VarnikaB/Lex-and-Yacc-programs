%{
#include<stdio.h>
#include<stdlib.h>
int yyerror();
int yylex();
%}
%token   NUMBER   ID	/*token definition*/
%%
expr:expr '+' expr;
|expr '-' expr;	/*Grammar*/
|expr '*' expr;
|expr '/' expr;
|'('expr')'
|NUMBER
|ID
;
%%

int main()
{
printf("Enter the Expression\n");
yyparse();
printf("Valid Expression\n");
}
int yyerror()
{
printf("Expression is invalid\n");
exit(0);
}
 
