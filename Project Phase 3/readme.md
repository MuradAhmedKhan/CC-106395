# CC 106395 Spring 2021: Project Phase 3 #
### PROJECT MEMBERS  ###
StID | Name 
------------ | -------------
**63093** | **Murad Ahmed Khan** 
62914 | Afifa Jamil

## Parser ##
A parser is a compiler or interpreter component that breaks data into smaller elements for easy translation into another language. A parser takes input in the form of a sequence of tokens, interactive commands, or program instructions and breaks them up into parts that can be used by other components in programming.

A parser's main purpose is to determine if input data may be derived from the start symbol of the grammar. If yes, then in what ways can this input data be derived? This is achieved as follows:

#### Top-Down Parsing #### 

Involves searching a parse tree to find the left-most derivations of an input stream by using a top-down expansion. Parsing begins with the start symbol which is transformed into the input symbol until all symbols are translated and a parse tree for an input string is constructed. Examples include LL parsers and recursive-descent parsers. Top-down parsing is also called predictive parsing or recursive parsing.

#### Bottom-Up Parsing ####

Involves rewriting the input back to the start symbol. It acts in reverse by tracing out the rightmost derivation of a string until the parse tree is constructed up to the start symbol This type of parsing is also known as shift-reduce parsing. One example is an LR parser.

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

## References ##

- https://www.techopedia.com/definition/3854/parser
- https://courses.engr.illinois.edu/cs421/sp2012/mps/MP3/mp3.pdf
