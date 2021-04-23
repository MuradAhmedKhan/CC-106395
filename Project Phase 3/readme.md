# CC 106395 Spring 2021: Project Phase 3 #
### PROJECT MEMBERS  ###
StID | Name 
------------ | -------------
**63093** | **Murad Ahmed Khan** <!--this is the group leader in bold-->
62914 | Afifa Jamil


## Lexical Specification ##

There are the some lexical specifications in the Mini java which are given below:

**White Space**, new line, carriage return, and tabulator are the examples of white space.

A numeric **integer literals** are from any number in between 1 to 9, the length of integer literals doesn't matter, but the end must also in between 0 to 9. And one more thing and that is we can use 0 as an integeral literal.

An **identifiers** are basically strings which can be start with any letter, underscore and even digits. Moreover Identifiers are not the keywords, it's a string which names depends upon the user's wish.

## Code Example of InsertionSort in Mini Java ##

```
class InsertionSort{
    public static void main(String[] a){
	System.out.println(new INS().Sortion(15));
    }
}
//The below code will sort the array of integer and print the array
class INS {
    
    int[] numbers ;
    int arrsize ;

    public int Sortion(int b){
	int aux01 ;
	aux01 = this.Init(b);
	aux01 = this.Print();
	System.out.println(99999);
	aux01 = this.Sort();
	aux01 = this.Print();
	return 0 ;
    }

    public int Sort(){
	int nt ;
	int i ;
	int aux02 ;
	int aux04 ;
	int aux05 ;
	int aux06 ;
	int aux07 ;
	int j ;
	int t ;
	i = size - 1 ;
	aux02 = 0 - 1 ;
	while (aux02 < i) {
	    j = 1 ;
	    //aux03 = i+1 ;
	    while (j < (i+1)){
		aux07 = j - 1 ;
		aux04 = number[aux07] ;
		aux05 = number[j] ;
		if (aux05 < aux04) {
		    aux06 = j - 1 ;
		    t = number[aux06] ;
		    number[aux06] = number[j] ;
		    number[j] = t;
		}
		else nt = 0 ;
		j = j + 1 ;
	    }
	    i = i - 1 ;
	}
	return 0 ;
    }

    // Printing
    public int Print(){
	int j ;
	j = 0 ;
	while (j < (size)) {
	    System.out.println(number[j]);
	    j = j + 1 ;
	}
	return 0 ;
    }
    
    // Initializing array of integers
    public int Init(int b){
	size = b ;
	number = new int[b] ;
	
	number[0] = 4 ;
	number[1] = 20  ; 
	number[2] = 12 ;
	number[3] = 16 ;
	number[4] = 10 ; 
	number[5] = 1 ;
	number[6] = 6  ; 
	number[7] = 9  ; 
	number[8] = 2 ; 
	number[9] = 5  ;
	
	return 0 ;	
    }

}
```

# LEXICAL TOKENS #

### This tokens are might be the Identifiers, Literals and the Operators ###

NUMBER =""

IDENTIFIER = ""

PLUS ="+"

MINUS ="-"

BECOMES = "="

INTO = "*"

DIVISION ="/"

AND ="&&"

OR ="||"

GTHAN = ">"

LTHAN = "<"

EQUALS = "=="

NEQUALS = "! ="

### Reserved Words

VOID ="void"

WHILE ="while"

TRUE ="true"

RETURN ="return"

PUBLIC ="public"

THIS ="this"

STATIC ="static"

PRIVATE ="private"

BOOLEAN=”boolean”

CLASS ="class"

IF ="if"

ELSE ="else"

INT =”int”

NEW ="new"

NULL ="null"


### The Special Tokens ###

EOT = "$"

ERRORS = ""

ERROR COMMENTS = "<unclosed_comments>"

WHITESPEACES = " "

### Grammar ###

Program → ClassDeclaration*

ClassDeclaration → class IDENT(extends IDENT)? { ClassMember * }

ClassMember → Field | Method | MainMethod

Field → public Type IDENT ;

MainMethod → public static void main ( String [ ] IDENT ) Block

Method → public Type IDENT ( Parameters? ) Block

Parameters → Parameter | Parameter , Parameters

Parameter → Type IDENT

Type → int | boolean | void | IDENT

Statement → Block

| EmptyStatement

| IfStatement

PrintStatement

| ExpressionStatement

| WhileStatement

| ReturnStatement

Block → { BlockStatement* }

BlockStatement → Statement | LocalVariableDeclarationStatement

LocalVariableDeclarationStatement → Type IDENT(= Expression)? ;

EmptyStatement → ;

WhileStatement → while ( Expression ) Statement

IfStatement → if ( Expression ) Statement(else Statement)?

PrintStatement → PrintStatementHead . println ( Expression ) ;

PrintStatementHead → ( PrintStatementHead ) | System . out

ExpressionStatement → Expression ;

ReturnStatement → return Expression? ;

Expression → AssignmentExpression

AssignmentExpression → LogicalOrExpression(= AssignmentExpression)?

LogicalOrExpression → (LogicalOrExpression ||)? LogicalAndExpression

LogicalAndExpression → (LogicalAndExpression &&)? EqualityExpression

EqualityExpression → (EqualityExpression(== | !=))? RelationalExpression

RelationalExpression → (RelationalExpression(< | <= | > | >=))?

AdditiveExpression → (AdditiveExpression(+ | -))?

MultiplicativeExpression → (MultiplicativeExpression(* | / | %))?

UnaryExpression → PrimaryExpression | (! | -)

PrimaryExpression → null

| false

| true

| INTEGER_LITERAL

| MethodInvocationExpression

| FieldAccessExpression

| LocalVariableReferenceExpression

| this

| ( Expression )

| NewObjectExpression

MethodInvocationExpression → (PrimaryExpression .)?    IDENT(ExpressionList?)

ExpressionList → Expression(, Expression)\*

FieldAccessExpression → (PrimaryExpression .)?  IDENT

LocalVariableReferenceExpression → IDENT

NewObjectExpression → new IDENT ( )

## References ##

- https://www.techopedia.com/definition/3854/parser
