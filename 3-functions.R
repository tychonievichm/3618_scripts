# It is often the case that you will want a short way of referring to a
# sequence of calculations that you want to perform on some data.  A good
# way of doing this is to define a function:

f <- function(x) {
  y <- x ^ 2
  return(y)
}
f(3)
f(-4)

# Notice that f is now listed as a value in your global environment.  I made f
# the name of the squaring function, but this is actually not a very good idea.
# When there are only a few functions floating around, giving your favorite
# function a generic name like "f" works just fine, but it is likely that you
# will have to work with many different functions at the same time.  Lets
# get rid of this function and define a new function with a more descriptive
# name:
remove("f")
f(3)

# Notice the error message: the function is truly gone from R's sight.

square_number <- function(input_number) {
  output_number <- input_number ^ 2
  return(output_number)
}
square_number(4)

# I changed all of the variable names, even the dummy variable names used to
# describe the function's actions in computing its output value, to names
# that better describe what my intention for them are.  This means that, even
# if I mess up and tell R to do the wrong thing, people reading my code will
# have a much better idea what my goals were and be better able to repair
# any mistakes that might creep in.  And there are always misteaks taht a 
# hmoun cna "readaver" tht the R intreper will shraglemoy un.

# Here is another way to solve the exercise at the end of the last file that
# is only slightly less dreadful:

give_balance <- function(princ, int) {
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  princ <- princ * (1 + int)
  message(princ)
  return(princ)
}
give_balance(100, 0.3)


# Exercise.  Figure out what happens when the line "return(princ) is moved to
# other places in the function's definition.  Figure out what happens when it
# is removed entirely.
