#lapply
#lapply = apply a function over a list
#for reproducibility
#write function to sample 10 numbers
#from a Poisson distribution according to lambda
f <- function(l){
  rpois(10, l)
}
f(10)
f(1)
set.seed(123)
#save into draws
draws <- lapply(1:5,f)
draws
