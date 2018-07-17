# We will often want to store lists of data, and R has a few ready-made
# data formats to help with that.  We will use SOME of those formats, but
# do not be surprised when we switch over to custom formats later on.
# The basic format for R to store a list of information is called a vector.
# You can construct vectors using the concatenation function c().
c(1, 2, 3)

# Let's try some arithmetic on vectors:

x <- c(3, 4, 5)
x
y <- c(1, 2, 3)
x

x + y
x * y

# Notice that both addition and multiplication were done entry-by entry.
# different behavior manifests when you try to combine vectors of different
# lengths:
2 * x
c(1, 2) * x
c(1, 2) + c(1, 1, 1, 1)

# The first and second lines probably turned out like you expected, but be
# wary of what happened in the third line!  The worst sort of error that you
# can have in a computation is one that does not cause the computer to
# hand back any sort of error or warning.

# Exercise:  other than a warning, what will the output be if you add a vector
# of length 3 to a vector of length 7?

# Now let's say that you have a vector for which you wish to ater some of the
# entries.  We can do this by referring to the vector's entries through indices.
v = c(7, 4, 6, 3, 8, 1)
v[1]
v[3]
v[6]
v[7]

# What do you think that the last output there was supposed to mean?  Let's
# try fixing it by tacking on another element to v.
v[7] <- 1
v[7]

# Exercise: figure out what happens when c() is applied to vectors.  Figure out
# what happens when, instead of v[7] = 1, you enter v[10] = 0.

# Exercise: here are some operations for you to try out:
# v[2:4]
# v[-1]
# v[5:2]
# v[0:2]
# tail(v, -3)
# tail(v, 3)
# head(v, -3)
# head(v, 3)
# Figure out what each of these does when applied to other lists and with
# other index values.

# vectors of strings and operations tktktktkt