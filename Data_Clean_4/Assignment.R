#lIBRARIES
library(dplyr)
library(data.table)

#list files 
list.files("/Users/Humberto/Documents/Project/R")

#link when are files 
pathdata = file.path("/Users/Humberto/Documents/Project/R", "UCI HAR Dataset")

#Create variable with name files

files = list.files(pathdata, recursive=TRUE)

####################################################

#reading training tables - xtrain/ytrain, subject
xtrain = read.table(file.path(pathdata, "train", "X_train.txt"), header = FALSE)
ytrain = read.table(file.path(pathdata, "train", "y_train.txt"), header = FALSE)
subject_train = read.table(file.path(pathdata, "train", "subject_train.txt"), header = FALSE)

#reading test tables..
xtest = read.table(file.path(pathdata, "test", "X_test.txt"), header = FALSE)
ytest = read.table(file.path(pathdata, "test", "y_test.txt"), header = FALSE)
subject_test = read.table(file.path(pathdata, "test", "subject_test.txt"), header = FALSE)

#reading feature data
features = read.table(file.path(pathdata, "features.txt"), header = FALSE)
#Read activity label data
activityLabels = read.table(file.path(pathdata,"activity_labels.txt"),  header = FALSE)
