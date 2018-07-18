# As in nearly all programming languages, R comes with some built-in ways of
# storing data in your computer's memory, which also tell R how it is to treat
# your data.  If you have some object lying around, you can check this using
# the class() function.  Some ueful classes to remember are:

# character
a <- "a"
class(a)

# numeric
b <- 3
class(b)

# integer; you may have to ask for it explicitly!
c <- as.integer(2)
class(c)

# logical
d <- TRUE
class(d)

# NULL
e <- NULL
class(e)

# vectors and matrices should inherit the class of their entries, but beware
# mixing different types of data in the same vector:
A <- c(a, a)
class(A)
B <- c(b, b)
class(B)
C = c(A, B)
class(C)
C

# Notice that in the matrix C, the number 3 was converted into the character
# "3" to make sure that the vector's entries all had the same class.  This is
# known as coercion, and it does not happen in all languages (you might get
# an exception thrown at you instead.)!  If you don't want this to happen, then
# you will need to make a list instead of a vector.  Lists do not require that
# entries all have the same data type, and can in fact contain other lists
# within them, producing some very complicated structure for your data.

# Exercise.  Among the data types for the variables a, b, c, d, and e, figure
# out what data types have precedence over others when placed together into a
# vector.

# Exercise.  The function as.integer() coerces its output to be stored in
# memory as an integer instead of as a "numeric", aka a double-precision float.
# What are some other functions that do this?  Hint: read ?as
