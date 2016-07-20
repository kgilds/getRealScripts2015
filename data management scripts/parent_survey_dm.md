# parent data management
Kevin Gilds  
`r Sys.Date()`  

# Data Management Script for the Data Survey. 


**Data must be download from Qulatrics into a CSV file. Save the csv file into the directory below.**


## Set up R to receive the data and load the data into R. (update directory and file name)

```r
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
setwd("C:/Users/kevin/Dropbox/GetReal/Data/2015-2016/July 2016")

parent <- read.csv("parent_survey_07152016.csv", skip=1)
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



```r
parent <- filter(parent, schoolName !="Emerson")

### Change council names to be consistent wiht how they displayed with the surveys
parent$council <-sub("Girl Scouts of the Gateway Council", "Gateway Council", fixed=TRUE, parent$council)

parent$council <-sub("Girl Scouts of Citrus Council", "Citrus Council", fixed=TRUE, parent$council)

parent$council <-sub("Girl Scouts of Southeast Florida", "Southeast Council", fixed=TRUE, parent$council)

parent$council <-sub("Girl Scout Council of Tropical Florida", "Tropical Council", fixed = TRUE, parent$council)

parent$council <-sub("Girl Scouts of West Central Florida", "West Central Council", fixed = TRUE, parent$council)

parent$council <-sub("Girl Scout Council of the Panhandle", "Panhandle Council", fixed = TRUE, parent$council)
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
## [1] 846  21
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
## [1] 466  21
```


### Find the duplicated student codes


```r
### Find duplicates
parent_pre_dupes<-duplicated(parentPre$girlCode) | duplicated(parentPre$girlCode, fromLast=TRUE)

##### I think this is pulling the actuall duplicate values####################

parent_pre_dupes<- parentPre[parent_pre_dupes,]

## How many duplicates
dim(parent_pre_dupes)
```

```
## [1] 16 21
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



### Send data to Sqlite database

```r
library(sqldf)
```

```
## Loading required package: gsubfn
```

```
## Loading required package: proto
```

```
## Loading required package: RSQLite
```

```
## Loading required package: DBI
```

```r
setwd("C:/Users/kevin/Dropbox/GetReal/Data/sqlite")

getReal_2016db<- dbConnect(SQLite(), dbname="outcome_history.sqlite")

### Write Q1 Expelled data to sqlite database
dbWriteTable(conn = getReal_2016db, name = "pre_parent", value = parentPreUnique, row.names=FALSE, overwrite=TRUE)
```

```
## [1] TRUE
```

```r
dbWriteTable(conn = getReal_2016db, name = "pre_parent_duplicate", value = parent_pre_dupes, row.names=FALSE, overwrite=TRUE)
```

```
## [1] TRUE
```

```r
dbWriteTable(conn = getReal_2016db, name = "post_parent", value = parentPostUnique, row.names=FALSE, overwrite=TRUE)
```

```
## [1] TRUE
```
