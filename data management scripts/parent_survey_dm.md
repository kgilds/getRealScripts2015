# parent data management
Kevin Gilds  
Saturday November 14, 2015  

# Data Management Script for the Data Survey. 


**Data must be download from Qulatrics into a CSV file. Save the csv file into the directory below.**


## Set up R to receive the data and load the data into R. (update directory and file name)

```r
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
## 
## The following objects are masked from 'package:stats':
## 
##     filter, lag
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
setwd("C:/Users/kevin/Dropbox/GetReal/Data/2015-2016/December 2015")

parent <- read.csv("parent_survey_12132015.csv", skip=1)
```



## Make variable names easier to read

```r
colnames (parent) [6] <- "council"
colnames (parent) [7] <- "girlCode"
colnames (parent) [8] <- "schoolName"
colnames (parent) [9] <- "Time"
colnames (parent) [10] <- "graduate"
colnames (parent) [11] <- "sheHasSelfConfidence"
colnames (parent) [12] <- "goodAttitudeAboutSchool"
colnames (parent) [13] <- "readsBooksForFun"
colnames (parent)[14] <-  "positiveRelationships"
colnames (parent)[15] <-  "homeworkWithoutSupervision"
colnames (parent) [16] <- "helpedMyDaughterGainConfidenceInHerAbilities"
colnames (parent)[17] <-  "helpedMyDaughterAchieveSuccessInSchool"
colnames (parent)[18] <-  "helpedHerEstablishPostiveRelationshipsWithHerClassmates"
colnames (parent) [19] <-  "helpedYourDaughterAchieveSuccessInSchool"
colnames (parent) [20] <-  "ImproveTheGetRealProgram"
```


## Fix varaibles that will be trouble later

```r
##################Data management########################33


parent$girlCode <- as.character(parent$girlCode)
###Change girl code to character

parent$girlCode <- toupper(parent$girlCode)
###update girl Code to Upper Case
```


## Subset for finished surveys


```r
parfin <- subset (parent, Finished == 1)
### Find the finished data entry

##### Elements of the data frame
dim(parfin)
```

```
## [1] 479  21
```




# Pre Survey

```r
parentPre <-filter(parfin, Time =="Pre")
```



### Find and subset unduplicated Pre cases

```r
parentPreUnique <- parentPre [!(duplicated(parentPre$girlCode) | duplicated(parentPre$girlCode, fromLast=TRUE)), ]

dim(parentPreUnique)
```

```
## [1] 458  21
```


### Find the duplicated student codes


```r
### Set working directory to save data to correct file folder
setwd("C:/Users/kevin/Dropbox/GetReal/Data/2015-2016/December 2015")


### Find duplicates
parent_pre_dupes<-duplicated(parentPre$girlCode) | duplicated(parentPre$girlCode, fromLast=TRUE)

##### I think this is pulling the actuall duplicate values####################

parent_pre_dupes<- parentPre[parent_pre_dupes,]

## How many duplicates
dim(parent_pre_dupes)
```

```
## [1] 20 21
```

```r
### Write to csv file
write.csv(parent_pre_dupes, "parent_dupes_12132015.csv", row.names=FALSE)
```



## Save RDS File

```r
setwd("C:/Users/kevin/Dropbox/GetReal/Data/2015-2016/December 2015")

#############################Save Pre and Post Data Frames####################33

saveRDS(parentPreUnique, file="pre_parent_12132015.rds")
```



# Post Surveys

```r
#### Subset Post Surveys
parentPost <-filter(parfin, Time == "Post")
```

## Find and subset unduplicated Post cases


```r
parentPostUnique <- parentPost [!(duplicated(parentPost$girlCode) | duplicated(parentPost$girlCode, fromLast=TRUE)), ]
```



## Save RDS Files

```r
setwd("C:/Users/kevin/Dropbox/GetReal/Data/2015-2016/December 2015")

saveRDS(parentPostUnique, file="post_parent_12132015.rds")
```
