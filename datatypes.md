#Symbols
Fundamental datatype, standalone case-insensitive word made up of letters, 
numbers and special characters ( + - / * = < > ? ! _ ), e.g.
  - foo
  - ice9
  - my-killer-app27
  - --<<==>>--

#Numbers
Lisp differentiates
  - Floating point numbers
  - integer numbers
Determined by . - autoconversion to float, if one of x operands in a function
call is float. 
High number calculation (e.g. (expt 53 53))
Rational representation of fractions, if types are all integers, i.e.
`(/ 4 6)` will return `2/3`
`(/ 4.0 6)` returns `0.6666667`

#Stirngs
In double quotes, can be printed with "princ", with escape symbols

    > (princ "Tutti Frutti")
    Tutti Fruti
    "Tutti Fruti"

First is output of princ, second is return of last evaluated data (i.e. the
string)

    > (princ "He yelled \"Stop that thief!\" from the bussy street")
    He yelled "Stop that thief!" from the busy street.

# List
Most basic structure - can be interpreted as "form" or as "data structure",
according to the mode, in which the list is provided

# Code Mode
List interpreted as a "form". Has to have a symbol associated with a function or
a function as first item, followed by a list of data (datatypes, or lists):

    > (expt 2 3)
    8
    > (expt 2 (+ 3 4))
    128

# Data Mode
Interprete Lists as data not as form, by "quoting", i.e. adding a single quote
infront of the list

    > '(expt 2 3)
    (expt 2 3)

#Cons Cells
Basic data structure that can make up lists.
Cons cells is a pair of pointers to other values, so 
value <--[ | ]--> value
Values can be any data types, like symbols:

    > (cons 'chicken 'cat)
    (CHICKEN . CAT)
    > (cons 'chicken 'nil)
    (CHICKEN)
    > (cons 'chicken ())
    (CHICKEN)
    > '(chicken)
    (CHICKEN)

All create 'chicken <--[ | ]--> 'nil

'nil is the symbol pointing to the End of a list - it evaluates to the empty
list. A cons cell with an item and the empty list is a list. Longer lists are
constructed as follows:

    > (cons 'pork (cons 'beef (cons 'chicken ()))
    (PORK BEEF CHICKEN)

Lisp does everything to show lists as lists and hide the fact that they are
actually cons cells; only if they cannot be hidden (e.g. as it's not a list)
does Lisp show the cell.

Using cons to create lists is called "consing", a list is "consed".

#List functions

##car 
Item of the first cons cell (in case of list: first element)

##cdr
Item of the second cons cell (in case of list: rest list)

## cadr, cdar, cadadr, caddr, etc.
car and cdr can be abritarily combined - up to four levels - to get first of second cell, etc.
Especially usefull with nested lists:

    > (cddr '((peas carrots tomatoes) (pork beef chicken) duck))
    (DUCK)
    
cddr is rest of rest: first element is first list, rest is second list + duck
   
    > (caddr '((peas carrots tomatoes) (pork beef chicken) duck))
    DUCK 

first of rest of rest - rest of rest is (duck) first of that is duck as element

    > (cddar '((peas carrots tomatoes) (pork beef chicken) duck))
    (TOMATOES)

rest of rest of first.

    > (cadadr '((peas carrots tomatoes)(prok beef chicken) duck))
    BEEF
    
first of rest of first of rest:
Rest: '((prok beef chicken) duck)
first of that: '(prok beef chicken) 
rest of that: '(beef chicken)
first of that: BEEF

## list
Additionally to basic list functions (cons, cdr, car) Lisp offers a number of
additional helper function. One practical is `list` to create lists:

    > (list 'prok 'beef 'chicken)



