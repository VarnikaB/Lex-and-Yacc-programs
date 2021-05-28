%{ 
	
#include<stdio.h>
	
#include<stdlib.h>

int yyerror();
int yylex();
%}

%token ONE ZERO

%%

N: L  { $$ = $1; printf("Count=%d",$1);exit(0);}
 
 ;

L: L B { $$ = $1 + $2;}
 | B   { $$ = $1;}
 
 ;

B: ZERO { $$ = $1;}
 | ONE  { $$ = $1;}
 
 ;

%%

void main()

{
   
printf("Enter a Binary Number\n");
   
yyparse();

}


yyerror()

{
   
printf("Invalid Binary Number\n");
   
exit(0);

}
   

