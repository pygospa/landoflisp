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

