# CC 106395 Spring 2021: Project Phase 2 #
### PROJECT MEMBERS  ###
StID | Name 
------------ | -------------
**63093** | **Murad Ahmed Khan** <!--this is the group leader in bold-->
62914 | Afifa Jamil

## **Lexical Analyzer** ##
%{

#include<stdio.h>

#define OP 0

#define Identifier 1

#define Numbers 2

#define Keywords 3

#define Spaces 4

#define Brackets 5

#define Comments 6

#define Punctuations 7

#define Specifiers 8

#define String 9

#define Program 10

#define Print 11

%}

%%

"class" {printf("\n %d Here is the strating point of :%s",Program,yytext);}

main {printf("\n %d Name of class:%s",Program,yytext);}

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

"System.out.println"|"System.out.print" {printf("\n %d Print statement:%s",Print,yytext);}

[a-zA-Z]+[_a-zA-Z0-9]* {printf("\n %d Variable:%s",ID,yytext);}

null|return|this|new|true|false {printf("\n %d Reserved Keywords:%s",Keyword,yytext);}

do|while|switch {printf("\n %d Loop Statements:%s",Keyword,yytext);}

[ |\n|\t|" "] {printf("\n %d Whitespaces:%s",Spaces,yytext);}

"*/"

"//"[a-zA-Z0-9!@#.,:$%^&*()_+]*|"/*"[a-zA-Z0-9!@#$%^&*()_+]*"*/" {printf("\n %d Comment:%s",Comment,yytext);}

%%

int main()
{
    yylex();

}
