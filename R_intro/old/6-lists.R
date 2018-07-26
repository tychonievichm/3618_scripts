# Another alternative to a vector is a data structure known as a list.  A list
# is one-dimensional like a vector, but it can have entries that are not
# just numbers or character strings.  You can create lists using the list()
# function as you used c() to create vectors from numbers.  Be careful, though,
# as c() ll join two vectors into a single vector while list() will not join
# two lists into a single list.  However, c() will!
cow_data = list("cow", "bull", "moo", 2, TRUE)
horse_data = list("mare", "stallion", "neigh", 0, FALSE)
list(horse_data, cow_data)
c(horse_data, cow_data)

# You can also elements of a list by entry number or name, but the syntax for
# doing so is different than what we saw with vectors.  We won't be using lists
# too much in scripts later, but it will be occasionally useful in contexts
# like naming the rows or columns of a matrix, as we saw when defining matrices
# from data.

# Another common data structure used in R is known as the data frame.  Data
# frames are to matrices what lists are to vectors: each column of a data frame
# can hold a different type of data, and you are certainly not restricted to
# data that is strictly numerical.