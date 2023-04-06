%{
	#include<stdio.h>
	#include "y.tab.h"
%}

KEYWORD	"vagya"|"vaiga"|"ma"|"time"|"thayo"|"che"|"ane"
KEYWORD1 "vagya"
KEYWORD2 "vaiga"
KEYWORD3 "ma"
KEYWORD4 "time"
KEYWORD5 "thayo"
KEYWORD6 "che"
KEYWORD7 "ane"
OPERATOR "ketla"|"ketlo"
CITYNAME ""[a-zA-Z][a-zA-Z]*""
WHITESPACE " "
EOQ "?"
COMMA ","

%%
{KEYWORD1} { 
	printf("%10s : keyword1\n",yytext); 
	}
{KEYWORD2} { 
	printf("%10s : keyword2\n",yytext); 
	}
{KEYWORD3} { 
	printf("%10s : keyword3\n",yytext); 
	}
{KEYWORD4} { 
	printf("%10s : keyword4\n",yytext); 
	}
{KEYWORD5} { 
	printf("%10s : keyword5\n",yytext); 
	}
{KEYWORD6} { 
	printf("%10s : keyword6\n",yytext); 
	}
{KEYWORD7} { 
	printf("%10s : keyword7\n",yytext);
	}
{OPERATOR} { 
	printf("%10s : oprator\n",yytext); 
	}

{CITYNAME} {  
	printf("%10s : cityname\n",yytext); 
	}
{EOQ} { 
	printf("%10s : End of question\n",yytext);
	}
{COMMA} { 
	printf("%10s : Comma\n",yytext);
	}
{WHITESPACE} {
	printf("%10s : WhiteSpace\n",yytext);
	}

. { 
	printf("%10s : invalid\n",yytext);
	}

%%
int yywrap(){
	return 1;
	}
