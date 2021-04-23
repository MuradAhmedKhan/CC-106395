%{
#include <stdio.h>
#include <stdlib.h>

extern char yytext[];
extern int column;
extern int yylineno;

int yylex(void);
void yyerror(char *s);
%}

%token Boolean Integer String True False
%token This New Println Return ArrayLength Main
%token Id Number And
%token If Else While Class Extends Public Static Void



%left '+' '-'
%left '*'
%left '.'
%right '='
%left '{'
%left '['
%left And
%left '!'
%nonassoc '<'

%start Goal

%%
Goal
    :   MainClass ClassDeclarationList      { printf("Your Given Expression is valid\n"); YYACCEPT; }
    ;

MainClass
    :   Class Identifier '{' Public Static Void Main '(' String '[' ']' Identifier ')' '{' Statement '}' '}'
    ;

ClassDeclarationList
    :   ClassDeclaration ClassDeclarationList
    |   /* Empty */
    ;

ClassDeclaration
    :   Class Identifier '{' VarDeclarationList MethodDeclarationList '}'
    |   Class Identifier '{' MethodDeclarationList '}'
    |   Class Identifier Extends Identifier '{' VarDeclarationList MethodDeclarationList '}'
    |   Class Identifier Extends Identifier '{' MethodDeclarationList '}'
    ;

VarDeclarationList
    :   VarDeclaration
    |   VarDeclarationList VarDeclaration
    ;

VarDeclaration
    :   Type Identifier ';'
    ;

MethodDeclarationList
    :   MethodDeclaration MethodDeclarationList
    |   /* Empty */
    ;

MethodDeclaration
    :   Public Type Identifier '(' ParameterList ')' '{' VarDeclarationList StatementList Return Expression ';' '}'
    |   Public Type Identifier '(' ParameterList ')' '{' StatementList Return Expression ';' '}'
    ;
ParameterList
    :   Type Identifier
    |   Type Identifier ',' ParameterList
    |   /* Empty */
    ;

Type
    :   Integer '[' ']'
    |   Boolean
    |   Integer
    |   Identifier
    ;

StatementList
    :   Statement StatementList
    |   /* Empty */
    ;

Statement
    :   '{' StatementList '}'
    |   If '(' Expression ')' Statement Else Statement
    |   While '(' Expression ')' Statement
    |   Println '(' Expression ')' ';'
    |   Identifier '=' Expression ';'
    |   Identifier '[' Expression ']' '=' Expression ';'
    ;

ExpressionList
    :   Expression
    |   Expression ',' ExpressionList
    |   /* Empty */
    ;

Expression
    :   Expression And Expression
    |   Expression '<' Expression
    |   Expression '+' Expression
    |   Expression '-' Expression
    |   Expression '*' Expression
    |   Expression '[' Expression ']'
    |   Expression '.' ArrayLength
    |   Expression '.' Identifier '(' ExpressionList ')'
    |   Number
    |   True
    |   False
    |   Identifier
    |   This
    |   New Integer '[' Expression ']'
    |   New Identifier '(' ')'
    |   '!' Expression
    |   '(' Expression ')'
    ;

Identifier: Id
          | Statement {yyerror ("Something is wrong with the syntax\n"); YYABORT; }
    ;

%%

void yyerror(char *s) {
   
    fprintf(stderr, "line %d: %s\n", yylineno, s);
}
int yywrap(){return(1);}
int main(void) {
    yyparse();
    return 0;
}
