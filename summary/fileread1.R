# Read only selected columns from csv file

student = read.csv("./data/student.csv")
str(student)
# "rollno"     "sname"      "feepaid"    "gender"     "cat"       
# "dob"        "class10"    "class12"    "sem1"       "sem2"      
# "attnd"      "btechmarks" "batch"      "br"         "btechfinal"
# "city"       "java"       "dbms"       "dwm"        "vlsi"      
# "cpp"        "cbnst"      "finalgrade"


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

setAs("character","myDate", function(from) as.Date(from, format="%d-%b-%y") )
#ignore error from above line output
colcls = c(NA,'character','numeric','factor', 'factor', 'myDate', 
           rep('NULL',17))
student <- read.csv("./data/student.csv", colClasses=colcls, header=T)
str(student)
head(student)
colcls = c(NA,'character','numeric','factor', 'factor', 'myDate','numeric', 'factor',
   'numeric', 'numeric','numeric', 'numeric','factor', 'numeric','factor','factor',
   rep('integer',6),'factor')
student <- read.csv("./data/student.csv", colClasses=colcls, header=T)
str(student)
head(student)
summary(student)

saveRDS(student, "student.rds")
