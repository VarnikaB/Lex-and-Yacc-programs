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
s : A s B
  | 
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