%{
#include "5.tab.h"
extern int yylval;
%}
%%
[ \t]    ;
[0-9]+	{yylval = atoi(yytext);return NUMBER;}
.	{return yytext[0];}
\n	{return 0;}	/*Logical EOF*/
%%
int yywrap()
{
 return 1;
}