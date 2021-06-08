%{
#include "y.tab.h"
%}
%%
[a-zA-Z][a-zA-Z0-9]*	{return ID;}
[0-9]+	{return NUMBER;}
.	{return yytext[0];}
\n	{return 0;}	/*Logical EOF*/
%%
int yywrap()
{
 return 1;
}
