%{
	
#include"y.tab.h"
	
	
extern int yylval;

%}

%%

1   { yylval=atoi(yytext); return ONE;}

0   { yylval=atoi(yytext); return ZERO;}

.     	return yytext[0];

\n 	return 0;

%%
int yywrap()
{
  return 0;
}