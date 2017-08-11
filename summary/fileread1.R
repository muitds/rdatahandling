# Read only selected columns from csv file

student = read.csv("./data/student.csv")
str(student)
student = read.csv("./data/student.csv", stringsAsFactors = F)
str(student)
names(student)

student = read.csv("./data/student.csv" , row.names = 1)
str(student)
dim(student)

colcls = c(NA,'character','numeric','factor', 'factor', rep('NULL',17))
student = read.csv("./data/student.csv" , colClasses = colcls)
dim(student)
head(student)
str(student)

