###########################Set working Directory##############################################
setwd("C:/Users/kevin/Dropbox/GetReal/Data/Raw Data/July 2015/parent")

library(dplyr)

#############################Read File#######################################################
parent <- read.csv("parentSurvey07052015.csv", skip=1)

colnames (parent) [6] <- "hr.sum"
colnames (parent) [7] <- "hr.avg"
colnames (parent) [8] <- "hr.stddev"
colnames (parent) [9] <- "am.sum"
colnames (parent) [10] <- "am.avg"
colnames (parent) [11] <- "am.stddev"
colnames (parent) [12] <- "ae.sum"
colnames (parent)[13] <- "ae.avg"
colnames (parent)[14] <- "ae.stddev"
colnames (parent) [18] <- "council"  ###Change this to council
colnames (parent)[19] <- "girlCode"
colnames (parent)[20] <- "schoolName"
colnames (parent) [21] <- "Time"
colnames (parent) [22] <- "graduate"
colnames (parent)[23] <- "sheHasSelfConfidence"
colnames (parent)[24] <- "goodAttitudeAboutSchool"
colnames (parent) [25] <- "readsBooksForFun"
colnames (parent) [26] <- "positiveRelationships"
colnames (parent) [27] <- "homeworkWithoutSupervision"
colnames (parent) [28] <- "helpedMyDaughterGainConfidenceInHerAbilities"
colnames (parent) [29] <- "helpedMyDaughterAchieveSuccessInSchool"
colnames (parent)[30] <-  "helpedHerEstablishPostiveRelationshipsWithHerClassmates"
colnames (parent) [31] <- "helpedYourDaughterAchieveSuccessInSchool"
colnames (parent) [32] <- "ImproveTheGetRealProgram"


##################Data management########################33

parent$girlCode <- as.character(parent$girlCode)

parent$girlCode <- toupper(parent$girlCode)




#########################Dupes############################3





########################Subset Data####################################3

#Finished

parfin <- subset (parent, Finished == 1)
dim(parfin)

############Subset Pre Surveys####################

parentPre <-filter(parfin, Time =="Pre")



########################Find Unduplicated Entries#########################


parentPreUnique <- parentPre [!(duplicated(parentPre$girlCode) | duplicated(parentPre$girlCode, fromLast=TRUE)), ]


####################Subset Post Surveys##################################3

parentPost <-filter(parfin, Time == "Post")



#######################Find Unique Post Surveys##############################
parentPostUnique <- parentPost [!(duplicated(parentPost$girlCode) | duplicated(parentPost$girlCode, fromLast=TRUE)), ]





#############################Save Pre and Post Data Frames####################33

saveRDS(parentPreUnique, file="preParent.rds")

saveRDS(parentPostUnique, file="postParent.rds")


#####################################3
######################Gateway#######################################
gatewayParent <-filter(parentPostUnique, council == "Gateway Council")


girlCodeGatewayParent<- sub("313", "", gatewayParent$girlCode)

fixgirlCodeGatewayParent<- sub("", "313", girlCodeGatewayParent)

gatewayParent$girlCode <- fixgirlCodeGatewayParent


citrusParent <- filter(parentPostUnique, council == "Citrus Council")

girlCodeCitrusParent<- sub("312", "", citrusParent$girlCode)

fixgirlCodeCitrusParent<- sub("", "312", girlCodeCitrusParent)

citrusParent$girlCode <- fixgirlCodeCitrusParent


dim(parentPostUnique) #283

excludeGatewayCitrusParent <-filter(parentPostUnique, council != "Citrus Council" & council != "Gateway Council") 
#N=157

addGatewayParentPost <- rbind(gatewayParent, excludeGatewayCitrusParent) 
#N283

postParent1 <-rbind(citrusParent, addGatewayParentPost) 



saveRDS(postParent1, file="postParent1.rds")






####################Data Requests


datRequest <- select(parfin, StartDate, EndDate, girlCode, council, schoolName )


write.csv(datRequest, "parentSurvey.csv", row.names=FALSE)




dupPreParent <-duplicated(parfin$girlCode, parfin$girlScoutCounci)
table(dupPreParent)  #12/18/2014 14 duplicates


##########################Subset By Council###########################3

#1
parentCitrus <- filter(parfin, girlScoutCouncil == "Citrus Council")
dim(parentCitrus)

dupparentCitrus <-duplicated(parentCitrus$girlCode)
table(dupparentCitrus)

#2
parentGateway <-filter (parfin, girlScoutCouncil == "Gateway Council")
dim(parentGateway)

dupParentGateway <-duplicated(parentGateway$girlCode)
table(dupParentGateway)

write.csv(parentGateway, "parentGateway1109.csv", row.names=FALSE)

#3
parentPanhandle <- filter (parfin, girlScoutCouncil == "Panhandle Council")
dim(parentPanhandle)

dupParentPanhandle <- duplicated(parentPanhandle$girlCode)
table(dupParentPanhandle)

# 4
parentSoutheast <- filter (parfin, girlScoutCouncil == "Southeast Council")
dim(parentSoutheast)

dupParentSouthEast <-duplicated(parentSoutheast$girlCode)
table(dupParentSouthEast)

write.csv(parentSoutheast, "parentSoutheast.csv", row.names=FALSE)

#5
parentTropical <- filter (parfin, girlScoutCouncil == "Tropical Council")
dim(parentTropical)

dupParentTropical <- duplicated(parentTropical$girlCode)
table(dupParentTropical)

#6
parentGswcf <- filter (parfin, girlScoutCouncil == "West Central Council")
dim(parentGswcf)

dupParentGswcf <-duplicated(parentGswcf$girlCode)
table(dupParentGswcf)

write.csv(parentGswcf, "parentGswcf.csv", row.names=FALSE)

##Pre
parPre <- subset (parfin, Time == "Pre")
dim(parPre)

####Unuiqe Values############

parPreUni <- parPre[!duplicated(parPre$girlCode), ]

dim(parPreUni)

names(parPreUni)

write.csv(parPreUni, "preParevent.csv", row.names=FALSE)

saveRDS(parPreUni,"preParent0102.rds")

load("preParent.Rdata")

load("preParent")

names(preParent)

head(parPreUni)

################################DemoData#################3

parentsum<-summary(parPreUni$girlScoutCouncil)


summary(parPreUni)





######################## Pre Analysis###################

mainPre <- tbl_df(parPreUni)

mainPre_1 <- select(mainPre, graduate:homeworkWithoutSupervision)

preoutput<-summary(mainPre_1)

write.csv(preoutput,"preParent.csv", row.names=FALSE)


################### Post Analysis#########################

parPost <- subset (parfin, Time == "Post")
dim(parPost)


##################Remove Duplicates#####################

parPostUni <- parPost[!duplicated(parPost$girlCode),]
dim(parPostUni)

mainPost <- tbl_df(parPostUni)

summary(mainPost)

mainPost_1 <- select(mainPost, graduate:helpedYourDaughterAchieveSuccessInSchool)

summary(maintPost_1)

postParent<-summary(mainPost_1)

write.csv(postParent, "postParent.csv", row.names=FALSE)

##########################Bind###################################

prePostParent <- rbind(parPostUni, parPreUni  )
dim(prePostParent)
#################Merge#################################

mergedPrePost<- merge(parPostUni, parPreUni, by="girlCode")

write.csv(mergedPrePost, "PrePost.csv", row.names=FALSE)

summary(mergedPrePost)

PrePost<-summary(mergedPrePost)

write.csv(PrePost, "PrePostParent.csv", row.names=FALSE)

