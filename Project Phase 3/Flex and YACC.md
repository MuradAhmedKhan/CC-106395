# CC 106395 Spring 2021: Project Phase 3 #
### PROJECT MEMBERS  ###
StID | Name 
------------ | -------------
**63093** | **Murad Ahmed Khan** <!--this is the group leader in bold-->
62914 | Afifa Jamil

## Parser ##
A parser is a compiler or interpreter component that breaks data into smaller elements for easy translation into another language. A parser takes input in the form of a sequence of tokens, interactive commands, or program instructions and breaks them up into parts that can be used by other components in programming.

A parser's main purpose is to determine if input data may be derived from the start symbol of the grammar. If yes, then in what ways can this input data be derived? This is achieved as follows:

## Top-Down Parsing ## 

Involves searching a parse tree to find the left-most derivations of an input stream by using a top-down expansion. Parsing begins with the start symbol which is transformed into the input symbol until all symbols are translated and a parse tree for an input string is constructed. Examples include LL parsers and recursive-descent parsers. Top-down parsing is also called predictive parsing or recursive parsing.

## Bottom-Up Parsing ##

Involves rewriting the input back to the start symbol. It acts in reverse by tracing out the rightmost derivation of a string until the parse tree is constructed up to the start symbol This type of parsing is also known as shift-reduce parsing. One example is an LR parser.
