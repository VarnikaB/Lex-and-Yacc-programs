%{
	#include<stdio.h>
%}
%%
[X] return yytext[0];
.   return yytext[0];
\n return 0;
%%
int yywrap()
{
	return 1;
}