%{
#include<stdio.h>
#include<stdlib.h>
int yyerror();
int yylex();
%}
%token   NUMBER   	/*token definition*/
%left '+' '-'
%left '*' '/'

%%
e : expr {printf("Result = %d\n",$1);}
  ;
expr:expr '+' expr  {$$ = $1+$3;}
|expr '-' expr   { $$ = $1-$3;}
|expr '*' expr	{ $$ = $1*$3;}
|expr '/' expr	{ $$ = $1/$3;}
|'('expr')' { $$ = $2;}
|NUMBER	{ $$ = $1;}
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
 
