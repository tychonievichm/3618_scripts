# When executing a script, R's default behavior is to go from the top of your
# code, downward, until the end of the file or until something goes wrong.
# Most of the time, there will be places where this is not what you want:
# perhaps you want the same block of code executed multiple times, or only when
# a specific event occurs.  This is what control structures are for.  You have
# already seen one control structure used: the return statement of a function.

# In this file, I will go over R control structures related to selecting the
# next code to run from among several given options.

# if-else if-else blocks
# In the following example, I want a bit of code that prints to the console
# some data about a number.  I am interested to know whether the number is
# negative, greater than or equal to 1, 0, or between 0 and 1.  Try it out
# with a few different values for x!  What happens if x is a logical, a vector,
# or a list?
x <- 0.4

if (x < 0) {
  print("Negative.")
} else if (x == 0) {
  print("Zero.")
} else if (x > 0 & x < 1) {
  print("Between zero and one.")
} else if (x >= 1) {
  print("Greater than or equal to one.")
} else {
  print("Something went wrong.")
}

# Here is how this is parsed by the R interpreter.  First, R evaluates the
# logical expression that follows the first if, in parentheses.  If it
# evaluates to TRUE, then R executed whatever code is contained within the
# braces.  Then R skips over the rest of the code.  If that logical expression
# evaluates to FALSE, then R moves on to the else if statement and repeats the
# same process, executing the code in the braces if the condition is TRUE and
# skipping the rest, or skipping the code and continuing if the condition is
# FALSE.  If the interpreter sees that all of the conditions it was given were
# FALSE, it executes whatever code is in the braces following the final else
# statement.

# Note that it is possible to squeeze this sort of code block into fewer lines
# of test and to still have it parsed correctly, but it is not a good idea as it
# could make the code very difficult to read.  Take a look at what happens when
# I flout convention:
x <- 0.5
if(x<0){print("Negative.")}else if(x==0){print("Zero.")}else if(x>0&x<1){print(
"Between zero and one.")}else if(x>=1){print("Greater than or equal to one.")
}else{print("Something went wrong.")}

# The code does the same thing as before, but it is much harder for a human to
# correctly read it.

# switch statements
# An alternative to if blocks in code is the use of a structure known as a
# switch statement.  Rather than check general logical expression, a switch
# statement looks at a given character string variable and performs code based
# on what value it has.
# You can always use an if block instead of a switch statement, but there are
# reasons (execution speed, code readability, personal style, etc.) to use it
# if you have that desire.  

# if-else on a vector
# The behavior of the if statement on a vector is to only look at its first
# element.  If you want to execute code conditionally on each element of a
# vector, it just won't work.  There are ways to handle this: loops, or R's
# special "vectorized" ifelse() function

# ifelse() function
# The ifelse() function works on vectors and other arrays