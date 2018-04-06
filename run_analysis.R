# setwd("~/Desktop/coursera/DataCleaning/Week4/CodeProject")

run_analysis <- function() {

        # ENSURE WE HAVE THE RIGHT PACKAGES LOADED
        #install.packages("reshape2")
        #install.packages("dplyr")
        #library(reshape2)
        #library(dplyr)
        
        # DOWNLOAD THE SOURCE DATA ZIP FILE
        #download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
        #zipF<-"./getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" %>%
        #        unzip(exdir=".")
        
        # ROW LABELS AND FEATURE NAMES
        rowLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
        rowLabels[,2] <- as.character(rowLabels[,2])
        featureNames <- read.table("./UCI HAR Dataset/features.txt")
        featureNames[,2] <- as.character(featureNames[,2])
        
        # KEEP ONLY DATA ON MEAN AND SD
        extractFeatures <- grep(".*mean.*|.*std.*", featureNames[,2])
        extractFeatures.names <- featureNames[extractFeatures,2]
        extractFeatures.names <- gsub('-std()', 'StandardDeviation', extractFeatures.names)
        extractFeatures.names <- gsub('-mean()', 'Mean', extractFeatures.names)
        extractFeatures.names <- gsub('[-()]', '', extractFeatures.names)
        
        # GET THE TEST DATA
        testData <- read.table("./UCI HAR Dataset/test/X_test.txt")[extractFeatures]
        testActivityData <- read.table("./UCI HAR Dataset/test/Y_test.txt")
        testSubjectData <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        # REASSEMBLE TEST DATA
        testData <- cbind(testSubjectData, testActivityData, testData)
        colnames(testData) <- c("subject", "activity", extractFeatures.names)
        
        # GET THE TRAINING DATA
        trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")[extractFeatures]
        trainActivityData <- read.table("./UCI HAR Dataset/train/Y_train.txt")
        trainSubjectData <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        # REASSEMBLE TRAINING DATA
        trainData <- cbind(trainSubjectData, trainActivityData, trainData)
        colnames(trainData) <- c("subject", "activity", extractFeatures.names)
        print(c("subject", "activity", extractFeatures.names))
        
        # MERGE TRAINING AND TEST DATA
        combinedData <- rbind(testData, trainData)
        
        # CHANGE STRINGS TO FACTORS
        combinedData$activity <- factor(combinedData$activity, levels = rowLabels[,1], labels = rowLabels[,2])
        combinedData$subject <- as.factor(combinedData$subject)
        
        cdl <- melt(combinedData, id = c("subject", "activity"))
        cdw <- dcast(cdl, subject+activity ~ variable, mean)
        print(getwd());
        write.table(cdw, "tidy.txt", row.names = FALSE, quote = FALSE)
}