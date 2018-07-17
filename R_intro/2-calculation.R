# Once this script is open in RStudio, you can use Ctrl+Return to tell RStudio
# to interpret all lines in script that are currently selected, or at least
# the line that your cursor is currently on.  Try running through this script
# one line at a time to see the effect of various commands.  You can also
# enter commands directly in the console to get the same effects.  R will not
# interpret anything following the symbol "#", which allows you to add
# commentary to your scripts.

# Try to run another script.

source("1-hello.R")

# Assign a value
# In R, as in most languages, you can use the equality sign "=" to assign a 
# value to a variable.  This usually works the way you would think, but R has
# a different syntax for this that is preferred, using the symbols <- to form
# an arrow.  This ensures that you know that the assignment is only supposed
# to go one way, that x will now hold the value assigned to it and produce it
# for you when asked.
x = 3
x
x <- 6
x

# The value stored in x changed when it was given a new assignment!  You can
# even assign to x a value that depends on the current value of x!
x <- x + 1

# What does this do?
(x <- 4)

# Arithmetic
y <- 2*x
y
y+x
2 ^ y
8 - 2

# Residue modulo x
r <- -4 %% 6

# Integer division
q <- -4 %/% 6

# Let's test the quotient remainder theorem!  We'll deal with logical tests
# in more detail later.

test <- 6*q + r
test == -4

# Use parentheses if you want to force an order of operations:

(x + y) ^ x

# Built-in functions of use:

#Logarithms may not work how you think!

log(10)
log10(10)

# Access any base by telling R to change a keyword argument.  The default
# value for this keyword argument is e, which the log function uses unless
# you tell it otherwise.  This is often called a kwarg for short.  It is
# conventional to leave spaces between operators whenever possible, except
# when the "=" sign is used to change a kwarg.
log(10, base=10)

# If you want to have access to the last value that was returned by R, use
# .Last.value .  This is useful if you would like to use R like a calculator
#  without having to assign a variable name to every output.  RStudio has a
# better way of handling this known as "piping" which you may see later.
(a = 10)
.Last.value


# Exercise: write a script that starts with the following variable and
# multiplies it by 1.03 a total of 10 times.  Make sure that it displays each
# output.

(x <- 12306.45)





# Here is a very barbaric solution.  We need something better!

(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
(x <- x * 1.02)
