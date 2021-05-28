%{
   #include<stdio.h>
   #include<stdlib.h>
   int yyerror();
   int yylex();
%}
%token A B
%%
str : s 
   ;
s : x B
 ;
x : x A | A
  ;
%%
void main()
{
   printf("Type the string? \n");
   if(!yyparse())
	printf("Valid String\n");
}
int yyerror()
{
	printf("Invalid String\n");
	exit(0);
}