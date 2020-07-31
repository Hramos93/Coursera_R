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

#######################ADD TAGGING TO DATA##############

#Create Sanity and Column Values to te Train Data
colnames(xtrain) = features[,2]
colnames(ytrain) = "activityId"
colnames(subject_train) = "subjectId"

#Test Data 
colnames(xtest) = features[,2]
colnames(ytest) = "activityId"
colnames(subject_test) = "subjectId"

#Labels

colnames(activityLabels) <- c('activityId', 'activityType')


#MERGE

Mrg_train = cbind(ytrain, subject_train, xtrain) %>%
  View

Mrg_test = cbind(ytest, subject_test, xtest) %>%
  View

mrgALL = rbind(Mrg_train, Mrg_test)

###################################################
