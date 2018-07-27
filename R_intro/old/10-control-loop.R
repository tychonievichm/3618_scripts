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

# The output format isn't perfect, but it's definitely good enough to see what
# is going on

# Exercise.  Write a script that compounds interest every two periods, using a
# rate of 0.08.  Have it display account values for all time periods, but the
# value should only change on even-numbered periods.  Add the column you
# generate to the right of the one from the example.  Hint: look at the values
# of time %% 2 in the above loop and use an if statement or some clever
# arithmetic.


# I mentioned that "for" loops are safer than other loop constructs, and now I
# will explain why.  The reason comes down to one fact: a for loop can only
# go through the iteration list it was given at the start, and then it will stop
# its operation.  This means that, at least taken by itself, a for loop will
# not introduce an infinite loop into your script.  The other loop types are
# very much able to do this!

# CAUTION: some of the following scripts may cause your interpreter to become
# locked into an unending loop.  Either use the Esc key or Ctrl+C when the
# window has focus to stop this.

# while loops
# In some circumstances it is useful to have an operation that repeats until
# some condition is satisfied, instead of until a certain number of iterations
# have been completed.  This is the situation in which a while loop is useful.
# I will use a while loop to calculate the number of payments needed to pay off
# a mortgage loan of $200,000 with 0.3% interest charged per month and a
# monthly payment of $1,500.  In this case, the condition I am looking for is 
# "while I still owe money"

num_payments <- 0
owed <- 200000.00
interest <- 0.003
payment <- 2000

while (owed > 0) {
  owed <- owed * (1 + interest)
  owed <- owed - payment
  num_payments <- num_payments + 1
  print(owed)
}
final_payment = payment + owed
cat("I will make", num_payments - 1, "payments of", payment,
    "with one final payment of", final_payment, ". ",
    "Paying off this loan will take", num_payments/12, "years.\n")

# Notice how I placed a message at the end to explain what the calculation's
# results actually mean!

# Exercise.  Change the size of payment and see what happens to the length of
# time it takes to pay off the loan.  What happens if you set payment to 575?
# You may want to remove or alter the "print(owed)" line for this.

# while loop, contine, break, repeat/break