%{
   #include<stdio.h>
   #include<stdlib.h>
   int yyerror();
   int yylex();
%}
%token ALPHA
%%
s: ALPHA
 ;
%%
int yyerror()
{
    printf("Invalid\n");
    exit(0);
    
}
void main()
{
    printf("Enter an Alphabet\n");
    yyparse();
    printf("Valid");
    
}