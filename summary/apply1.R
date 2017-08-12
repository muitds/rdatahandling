#apply
# https://davetang.org/muse/2013/05/22/using-aggregate-and-apply-in-r/
#apply functions over array margins
#apply(X, MARGIN, FUN, ...)
#make up some dataframe
df <- data.frame(first = c(1:10), second = c(11:20))
df
apply(df , 2, mean)  #col
apply(df, 1, mean)  # row
