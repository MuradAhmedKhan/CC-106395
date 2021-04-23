# CC 106395: Mini Java #

### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**63093** | **Murad Ahmed Khan** 
62914 | Afifa

## Project Description ##
Replace this text with the description of your project. Tell what the project was about. What you aimed to deliver in the project.

## Sample Code of Mini Java ##

### Functions in Mini java ###

```
   class PrintHello {
        public static void main() {
                System.out.println("Simple Program for hello world");
        }
    }

```


### Calling Function in Mini Java ###

```
parseA() {
    if (theToken == 'a') {accept('a'); accept('a');}
    else error()
}

parseStart() {
    if (theToken=='a') {
       accept('a');
       parseA();
    }
```

### Variables Declaration in Mini Java ###

```
   int A = 7; //This the variable initialization of integer type

```

### If/else Statements ### 

```
    if (theString == 'a') {accept('a');}

```

### Arrays ###

```
    int [] a;   //local variable 
    a = new int [76];
    a[0] = 7;
    a[2] = 77;
```

### For Loops ###
```
for (int i = 0; i < 5; i++) {
  System.out.println(i);
}
```



### Lexical Specification ###

```
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

```

## **Grammar in MiniJava:** ##
```
goal : mainclass classdecs          
     ;

mainclass : CLASS ID '{' VOID ID '(' ID ARR ID ')' '{' blockstmts '}' '}' 
          ;

classdecs : classdec classdecs      
          |                         
          ;

classdec : CLASS ID extendsopt '{' classmembers '}' 
         ;

classmembers : vardec classmembers 
             | methoddec classmembers 
             |                      
             ;

vardec : type ID ';'                
       | type ID '=' expr ';'       
       ;

methoddec : type ID '(' params ')' '{' blockstmts '}'
          ;

params : param paramsrest           
       |                            
       ;

paramsrest : ',' param paramsrest   
           |                        
           ;

param : type ID                     
      ;

extendsopt : EXTENDS ID             
           |                        
           ;


blockstmts : vardec blockstmts      
           | stmt blockstmts        
           |                        
           ;

stmt : '{' blockstmts '}'                             
     | IF '(' expr ')' stmt %prec PREC_ELSELESS_IF    
     | IF '(' expr ')' stmt ELSE stmt                 
     | WHILE '(' expr ')' stmt                        
     | expr '=' expr ';'                              
     | CONTINUE ';'                                   
     | BREAK ';'                                      
     | RETURN expr ';'                                
     | RETURN ';'                                     
     | expr '.' ID '(' exprlistopt ')'  ';'           
     | ';'                                            
     ;

expr : expr '>' expr          
     | expr '<' expr           
     | expr GREAT_EQ expr      
     | expr LESS_EQ expr       
     | expr EQ expr            
     | expr DIFF expr          
     | expr OR expr            
     | expr AND expr           
     | expr '+' expr           
     | expr '-' expr           
     | expr '/' expr           
     | expr '*' expr           
     | expr '%' expr           
     | object filledbracks     
     | LIT_INT                
     | LIT_STR                
     | TRUE                   
     | FALSE                  
     | TOK_NULL               
     | object                 
     | '-' expr %prec PREC_UNARY_OP  
     | '!' expr %prec PREC_UNARY_OP   
     ;

type : type ARR 
     | BOOLEAN  
     | INT      
     | VOID     
     | ID       
     ;

object : NEW type                         
       | NEW ID '(' exprlistopt ')'       
       | ID                               
       | THIS_DOT ID                      
       | THIS                             
       | expr '.' ID '(' exprlistopt ')'  
       | '(' expr ')'                     
       | '{' exprlist '}'                 
       ;

exprlist : expr ',' exprlist  
         | expr               
         ;

exprlistopt : exprlist  
            |           
            ;


filledbracks : filledbracks '[' expr ']'  
             | '[' expr ']'               
             ;


```

### Approaches ###

New Approach that we learn are gievn below:
- Linux Terminal
- Flex
- YACC
- Mini Java

## Problems Faced ##
There are lots of problems that we faced, lots of new platforms, new things, new languages that we never learn before. So, we decided to solve those problems by research, learn about that problems and language.

### Problem 1: I don't know how to Code in Mini Java ###
Me and my group partner both of us didn't have any idea of mini Java before this course. We are familiar with C#. We mostly do code in C# language so that made a problem that we faced.

### Problem 3: Don't Familiar with Github ###
GitHub is one the problem we faced because me and my group partner was new with github so, we didn't know how to create repository, how to invite collaborator, what format of .md file and how to insert images, videos making heading and bullet points on .md file.

### Problem 2: YACC ###
That was the new platform so that's why lots of problems that we faced like Setting up, Compilation, How to work on it.


## References ##
- https://rosettacode.org/wiki/Compiler/lexical_analyzer
- http://pld.cs.luc.edu/courses/388/mnotes/compiler.html
