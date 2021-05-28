%{
#include<stdio.h> int count=0;
%}

%%

\n	count++;
.	;

%%

void main( )
{
yylex( );
printf(“The total number of lines = %d\n”, count);
}
