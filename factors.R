# Factors
# 
#nominal
diabetes = c('Type1','Type2','Type1','Type1')
#ordinal
clsposn = c(1 , 2 , 3)
status = c('Poor','Improved', 'Excellent')
diabetes ; clsposn ; status
class(diabetes) ; class(clsposn) ; class(status)
# order of values don't matter
fdiabetes = factor(diabetes)
class(fdiabetes)
fdiabetes
summary(fdiabetes)
summary(diabetes)
# add another Type; converts into character
fdiabetes = c(fdiabetes, 'Type3')
fdiabetes
class(fdiabetes)
# Add another Level
fdiabetes = factor(diabetes)
levels(fdiabetes)
fdiabetes = factor(fdiabetes, levels = c(levels(fdiabetes), 'Type3'))
fdiabetes
levels(fdiabetes) = c(levels(fdiabetes),'Type4')
fdiabetes
levels(fdiabetes)[5] = 'Type5'
fdiabetes
summary(fdiabetes)
fdiabetes[4] = c('Type3')
fdiabetes
fdiabetes[5] = c('Type6')  # Invalid as Type6 is not a level

