sapply(draws, mean)
[1] 1.3 2.3 3.7 4.3 4.0
#difference with lapply?
#lapply always returns a list. sapply (if it can) simplifies the results
lapply(draws,mean)