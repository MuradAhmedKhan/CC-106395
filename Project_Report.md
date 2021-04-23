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



###Lexical Specification###
Replace this text with a complete lexical specification of your selected programming language.

###Grammar###
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

### Approach ###

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
