#lIBRARIES
library(dplyr)
library(data.table)

#list files 
list.files("/Users/Humberto/Documents/Project/R")

#link when are files 
pathdata = file.path("/Users/Humberto/Documents/Project/R", "UCI HAR Dataset")

#Create variable with name files

files = list.files(pathdata, recursive=TRUE)