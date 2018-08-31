# load the dplyr package
library(dplyr)
# Load sample student data
StudentData<-read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_1959/datasets/SampleClassData.csv")
# Dump the student data
StudentData
#Load the tidyr library
library(tidyr)
#Gather the data
GatheredStudentData <-StudentData %>% gather(Indicator,Score, -SID,-First,-Last)

# Remove NA's
GatheredStudentData <- GatheredStudentData %>% na.omit()

# Dump the student data
glimpse(GatheredStudentData)