### MEMBERS ###
StdID | Name
------------ | -------------
**63093** | **Murad Ahmed Khan** <!--Group Leader-->
62914 | Afifa Jamil

## Selected Language ##    

Mini Java

## Some mini java code samples ##

### Functions in java ###

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


##   Lexical Specifications Mini Java  ##   

## **Grammar Notations in MiniJava:** ##
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
```

## Reserved Words ##
Following are the reserved words
```
class, static, void, main, extends, return, true, int, boolean
```
    
## Context_Free_Grammar (CFG) of MiniJava:
```

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
