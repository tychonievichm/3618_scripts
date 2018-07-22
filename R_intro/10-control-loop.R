# With "if" statements, it was possible to ask R to use a logical condition
# to decide which of several blocks of code to run next, afterward R would
# continue executing code one line after another.  Often it will be useful to
# have R loop back and repeat some instructions, perhaps on the output of a
# prior calculation.  R has two standard forms of loop statements: "while" and
# "for", and one less standard form of loop called "repeat".

# "for" loops
# The safest form of loop to use is the for loop.  For a for loop, you must
# first specify a vector or other list of values for R to iterate over.  R will
# go through the list and perform your code one time for each entry on the list,
# in the order that you specified them.  Note: don't alter this list within the
# loop.  Here is an example for loop that runs a simple block of code 10 times
# to calculate compound interest and saves all values in a matrix.

# First, initialize the data with the appropriate inputs:
principal <- 1000
interest <- 0.04
amount <- matrix(0, 11, 1)  # See notes on optimization for why I did this.
amount[1] <- principal
rownames(amount) <- 0:10
colnames(amount) <- "balance"

# Then run the loop to create the desired matrix:
for (time in 1:10) {
  amount[time + 1] <- amount[time] * (1 + interest)
}
amount

# Exercise.  If each of these represents the amount in the account after so many
# time periods have passed, when in each time period was the interest applied?
# Make a script that  performs the same sort of calculation, but with the
# interest calculated at a different time in each time period.


# while loop, contine, break, repeat/break