%{
#include"6.tab.h"
%}
%%
[A-Z] return ALPHA;
. return yytext[0];
\n return 0;
%%
int yywrap()
{
	return(0);
}
