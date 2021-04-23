# CC 106395 Spring 2021: Project Phase 3 #
### PROJECT MEMBERS  ###
StID | Name 
------------ | -------------
**63093** | **Murad Ahmed Khan** <!--this is the group leader in bold-->
62914 | Afifa Jamil


## Lexical Specification ##

There are some lexical specifications in Mini java which are given below:

*White Space*, new line, carriage return, and tabulator are examples of white space.

A numeric *integer literals* are from any number in between 1 to 9, the length of integer literals doesn't matter, but the end must also in between 0 to 9. And one more thing and that is we can use 0 as an integeral literal.

An *identifiers* are basically strings which can be start with any letter, underscore and even digits. Moreover Identifiers are not the keywords, it's a string which names depends upon the user's wish.

# LEXICAL TOKENS #

### This tokens are might be Identifiers, Literals and Operators ###

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


### Special Tokens ###

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

FieldAccessExpression → (PrimaryExpression .)? IDENT

LocalVariableReferenceExpression → IDENT

NewObjectExpression → new IDENT ( )
