# set directory
setwd("C:/Users/ashutosh/Desktop/R Work/Kaggle/Titanic")

install.packages('FactoMineR')
library(FactoMineR)

# loading training data set
testData <- read.csv2('train.csv', header = TRUE, na.strings = c(""),  sep = ",", stringsAsFactors = T)
View(testData)
testDataDF <- data.frame(testData)

# removes Name and Cabin columns
testDataDF <- subset(testDataDF, select = -c(Name, Ticket, Cabin))
View(testDataDF)

testDataDF$PassengerId <- as.numeric(testDataDF$PassengerId)
testDataDF$Survived <- as.numeric(testDataDF$Survived)
testDataDF$Pclass <- as.numeric(testDataDF$Pclass)
testDataDF$Sex <- as.numeric(testDataDF$Sex)
testDataDF$Age <- as.numeric(testDataDF$Age)
testDataDF$SibSp <- as.numeric(testDataDF$SibSp)
testDataDF$Parch <- as.numeric(testDataDF$Parch)
testDataDF$Fare <- as.numeric(testDataDF$Fare)
testDataDF$Embarked <- as.numeric(testDataDF$Embarked)

str(testDataDF)
View(testDataDF)

pcaVar<- PCA(testDataDF)
pcaVar$ind

