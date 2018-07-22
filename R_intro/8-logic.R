# You saw that there is a type of data known as "logical", and that it can have
# values TRUE or FALSE.  The typical way we get this sort of data to appear is
# by asking R to answer a question about an object or a list of objects, like
# "is this a number?" or "is 5 larger than 7?".

# Comparisons

# Some basic logical functions are the ones that you studied in your high
# school math: inequalities and equations.  To ask R to check if an equation
# is true, use two equals signs:
5 == 1 + 4
3 == 3 + 1
3 == "a"

# To negate an equality, you can instead write "!=" (visualize this as a line
# drawn through the equals sign)
5 != 1 + 4
3 != 3 + 1
3 != "a"

# You can also use the exclamation point as a logical operator: it turns TRUE
# to FALSE and vice-versa

!(3 == 5)

# R does strict and weak inequalities, though only one symbol is needed for
# strict inequality:
5 < 5
5 <= 5
4 > 4
4 >= 4

# In every case, it helps to remember that "or equals" means that "=" comes in
# as the second symbol in addition to whever the first symbol is.

# CAUTION: if you ask R to treat a non-logical expression as a logical, it may
# or may not do what you think it should do.  Consider:
!2

# It seems like R took my number 2, decided that it should be coerced to be a
# logical TRUE, then negated it.  All it takes is a transposed parenthesis to
# cause a potentially serious problem, and R will not give you any sort of
# error message to warn you!
(!1) == 1

# Exercise.  How does R coerce numbers into logicals?  What about characters
# or character strings?

# Use of logicals as indices
# When a logical is applied to a vector, the result is a vector of logicals
# In each place in the old vector where the logical condition you wrote was
# satisfied, you will see the logical "TRUE", and you will see "FALSE"
# everywhere else
x = c(3, 4, 5)
x > 3

# On the other hand, if hand R a list of logicals the same size as your vector,
# R will make a new vector that includes the values of the old vector wheverever
# you had "TRUE".
x[c(FALSE, FALSE, TRUE)]

# You can combine these to get the values from your vector, in their original
# relative order, that satisfy your favorite logical expression:
x[x > 3]

# Exercise.  Sometimes, you will want to pick out elements from a list of
# numbers, perhaps the days of the year that correspond to the fifteenth day
# in each 30-day block.  Let's write a script along these lines.
# Generate a vector v of the first 100 positive integers using :.
# Create from this a vector w that contains exactly the integers on that list
# whose squares are two away from a multiple of 7.  Use %% for this!
# Solution:
v = 1:100
w = c(v[(v^2 + 2) %% 7 == 0], v[(v^2 - 2) %% 7 == 0])

# Let's unpack it into a more readable script.  This will involve a few extra
# intermediate variables, but it is not a big price to pay for readability:
v = 1:100

a <- v^2 + 2
a_mod_7 <- a %% 7
a_logical <- a_mod_7 == 0
w_a <- v[a_logical]

b <- v^2 - 2
b_mod_7 <- b %% 7
b_logical <- b_mod_7 == 0
w_b <- v[b_logical]

w <- c(w_a, w_b)

# If the vectors involved were truly large, say on the order of 100,000,000
# entries, we would need to be a bit more careful about assigning intermediate
# variables due to the amount of memory used.  But that is something to worry
# about when it might become an issue!

# Connectives
# You'll notice that I used the c() function to combine two lists in my solution
# to the last exercise.  This is certainly one way to solve the problem, but
# there is a better way: to use logical connective.
# 
# Logical connectives are symbols for operations on logicals, sometimes called
# Boolean functions after logician George Boole.  Here are a few examples:
# 
# "and"
# For two logicals P and Q, P & Q will be TRUE exactly when both P and Q are
# TRUE.  Here is what is often called a "truth table" demonstrating what this
# means for logicals in R:
col_1 <- c(TRUE, TRUE, FALSE, FALSE)
col_2 <- c(TRUE, FALSE, TRUE, FALSE)
col_3 <- c(TRUE & TRUE, TRUE & FALSE, FALSE & TRUE, FALSE & FALSE)
col_names <- c("P", "Q", "P&Q")

truth_table <- matrix(c(col_1, col_2, col_3), ncol=3)
colnames(truth_table) <- col_names
truth_table

# Exercise.  logical "or" is given by the connective "|", the vertical line
# character.  Append a column to truth_table for "P|Q" and fix the name of the
# column to be the character string "P|Q".  Do the same for "xor(P, Q)", "!P",
# and "(!P) | (!Q)".

# Each of the logical connectives &, |, !, and xor() apply to vectors element-
# by-element.  Here is an alternative solution to the prior exercise that takes
# advantage of this:
v = 1:100

a <- v^2 + 2
a_mod_7 <- a %% 7
a_logical <- a_mod_7 == 0

b <- v^2 - 2
b_mod_7 <- b %% 7
b_logical <- b_mod_7 == 0

w_logical <- a_logical | b_logical
(w <- v[w_logical])

# Other connectives
# There are two other connectives of note, || and &&.  On scalars, these
# are the same as | and &, respectively, but they behave differently on
# vectors They are primarily used to optimize code involving logical comparisons
# where evaluating extra logical expressions takes a significant amount of time.
# We do not have cause to worry about this yet, so please avoid using them.
# Just know that a typo doubling & or | will not automatically get R to
# throw an error message at you, and that doing this when vectors are compared
# can cause trouble if you are not prepared.

# Advanced applications of connectives (Challenge)
# You can also chop up matrices using logicals.  The syntax is a little bit
# counterintuitive: pay attention to the "extra" commas and whey they are
# telling R to do!  Which of these attempts to take the columns where the entry
# in the top row is less than 32 was successful?
B = matrix(26:50, nrow=5)
B
B[B[1, ] < 32]
B[B[1, ] < 32, ]
B[, B[1, ] < 32]

# Exercise.  Figure out why you should have expected the outputs that you got
# for each of the three inputs above.  Then write an expression that gives you
# back the matrix with the rows whose third elements are even removed.