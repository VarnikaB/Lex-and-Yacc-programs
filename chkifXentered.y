%{
	#include<stdio.h>
	#include<stdlib.h>
	int yyerror();
	int yylex();
%}
%%
prog: proga | progb
    ;
proga: 'X'
     ;
progb: 'X'
     ;
%%
int yyerror()
{
     printf("Invalid\n");
     exit(0);
}
void main()
{
     printf("Enter a character\n");
     yyparse();
     printf("Valid\n");
}
