%{
#include<stdio.h>
#define OP 0
#define ID 1
#define Number 2
#define Keyword 3
#define Spaces 4
#define Bracket 5
#define Comment 6
#define Punctuation 7
#define Specifier 8
#define String 9
#define Program 10
#define Printstatement 11
#define Loops 12

%}

%%
LETTER [a-zA-Z]
DIGIT [0-9]
RESERVED_KEYWORD if|else|while|continue|break|int|double|bool|string|true|false
RESERVED_IDENTIFIER exit|print|println|toString|readInt|readDouble|readLine

"class" {printf("\n %d Class Declaration:%s",Program,yytext);}
main {printf("\n %d Main Method:%s",Program,yytext);}
"+"|"-"|"*"|"/" {printf("\n %d Operators:%s",OP,yytext);}
"<"|">"|"=="|"!=" {printf("\n %d Comparision Operators:%s",OP,yytext);}
"=" {printf("\n %d Assignment:%s",OP,yytext);}
"&&"|"||" {printf("\n %d Logical Operators:%s",OP,yytext);}
[a-zA-Z] {printf("\n %d Letters:%s",String,yytext);}
[0-9]* {printf("\n %d Digits:%s",Number,yytext);}
"("|")"|"["|"]"|"{"|"}" {printf("\n %d Brackets:%s",Bracket,yytext);}
int|void|boolean|double|float {printf("\n %d Keywords:%s",Keyword,yytext);}
"."|";"|"," {printf("\n %d Punctuations:%s",Punctuation,yytext);}
private|static {printf("\n %d Specifiers:%s",Specifier,yytext);}
if|else {printf("\n %d Loops:%s",Keyword,yytext);}
void|int {printf("\n %d Return type:%s",Keyword,yytext);}
"System.out.println"|"System.out.print" {printf("\n %d Print statement:%s",Printstatement,yytext);}
[a-zA-Z]+[_a-zA-Z0-9]* {printf("\n %d Variable:%s",ID,yytext);}
null|return|this|new|true|false {printf("\n %d Reserved Keywords:%s",Keyword,yytext);}
do|while|switch {printf("\n %d Loop Statements:%s",Loops,yytext);}
[ |\n|\t|" "] {printf("\n %d Whitespaces:%s",Spaces,yytext);}
"*/"

"//"[a-zA-Z0-9!@#.,:$%^&*()_+]*|"/*"[a-zA-Z0-9!@#$%^&*()_+]*"*/" {printf("\n %d Comment:%s",Comment,yytext);}

%%

int main()
{
  yylex();

}


