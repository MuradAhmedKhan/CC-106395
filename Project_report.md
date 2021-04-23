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
IDENTIFIER ::=  LETTER [[ LETTER ]]*
NUMERAL ::=  DIGIT [[ DIGIT ]]*
OPERATOR ::= + | ==
LETTER ::= A | B | C | ... | Z
NUMERAL ::= 0 | 1 | ... | 9

Token
Lexeme
Value        {for integer tokens}
ValueR       {for real tokens}
Literal      {for quoted strings}

FloatingPointLiteral = DIGIT+ '.' DIGIT+
StringLiteral = '"' (CHAR | '\"')* '"'
BooleanLiteral = 'true' | 'false'
SEMI = ';'
ID = (LETTER | '_') (LETTER | DIGIT | '_')*
DIGIT = '0' | ... | '9'
LETTER = 'a' | ... | 'z' | 'A' | ... | 'Z'
CHAR = <unicode character in Java>
Whitespace characters (' ', '\t', '\r', '\n') are skipped outside of tokens.

%%
// second section

%class Lexer
%unicode
%cup

[..]

LineTerminator = \r|\n|\r\n

%%
// third section

/* keywords */
<YYINITIAL> "abstract"           { return symbol(sym.ABSTRACT); }
<YYINITIAL> "boolean"            { return symbol(sym.BOOLEAN); }
BooleanLiteral :
        t r u e
        f a l s e
<YYINITIAL> "break"              { return symbol(sym.BREAK); }

<STRING> {
  \"                             { yybegin(YYINITIAL); 
                                   return symbol(sym.STRING_LITERAL, 
                                   string.toString()); }
 [..]
}

/* error fallback */
[^]                              { throw new Error("Illegal character <"+
                                                    yytext()+">"); }
grammar simple;

basic   : NAME ':' NAME ;

NAME    : [a-zA-Z]* ;

COMMENT : '/*' .*? '*/' -> skip ;

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
