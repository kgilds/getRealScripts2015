########################Set Working Directories##################
setwd("C:/Users/kevin/Dropbox/GetReal/Data/2015-2016/October 2015")


#########################Libraries############################################

library(dplyr)


###########################Read Data#############################################
rawdata <- read.csv("girlSurvey101415.csv", skip=1)

########################### Change Column Name #################################

colnames (rawdata)[6] <- "hr.sum"
colnames (rawdata)[7] <- "hr.avg"
colnames (rawdata)[8] <- "hr.stddev"
colnames (rawdata)[9] <- "hr.disqualify.sum"
colnames (rawdata)[10]<- "hr.disqualify.avg"
colnames (rawdata)[11]<- "hr.disqualify.std"
colnames (rawdata)[12] <- "ae.sum"
colnames (rawdata)[13] <- "ae.avg"
colnames (rawdata)[14] <- "ae.stddev"
colnames (rawdata)[15] <- "am.sum"
colnames (rawdata)[16] <- "am.avg"
colnames (rawdata)[17] <- "am.stddev"
colnames (rawdata)[18] <- "ae.disqualify.sum"
colnames (rawdata)[19] <- "ae.disqualify.avg"
colnames (rawdata)[20] <- "ae.disqualify.std"
colnames (rawdata)[21] <- "am.disqualify.sum"
colnames (rawdata)[22] <- "am.disqualify.avg"
colnames (rawdata)[23] <- "am.disqualify.std"
colnames (rawdata)[24] <- "council"
colnames (rawdata)[25] <- "girlCode"
colnames (rawdata)[26] <- "school"
colnames (rawdata)[27] <- "grade"
colnames (rawdata)[28] <- "Time"
colnames (rawdata)[29] <- "inProgramLastYear"
colnames (rawdata)[30] <- "iamMotivatedToGraduateHighSchool"
colnames (rawdata)[31] <- "iReadBooksforFun"
colnames (rawdata)[32] <- "ireallyLikeWhoIam..."
colnames (rawdata)[33] <- "..ImproveMySkilsThisYear"
colnames (rawdata)[34] <- "...UnderstandMyClassWork"
colnames (rawdata)[35] <-  "learningatSchoolIsImportantToMe"
colnames (rawdata)[36] <- "oneOfMyGoalsIstoLearn..."
colnames (rawdata)[37] <- "...WillHelpMeLaterInLife"
colnames (rawdata)[38] <- "ifIHaveASeriousProblem..."
colnames (rawdata)[39] <- "inAnyRelationshipOrNotIMakeItClear"
colnames (rawdata)[40] <- "iTalkWithMyTeachersBeforeOrAfter..."
colnames (rawdata)[41] <- "iHandinMyAssignmentsOnTime"
colnames (rawdata)[42] <- "iFinishMyHomeworkEvenIfItisBoring"
colnames (rawdata)[43] <- "ifICantUnderstandMySchoolatFirstI..."
colnames (rawdata)[44] <- "iLetPeopleKnowIfTheyHurtMyFeelings"
colnames (rawdata)[45] <- "iLetMyFriendsKnowWhenIThinkTheyAreGoodAtSomething"
colnames (rawdata)[46] <- "ILearnedFromTheBooksWeReadThisYear"
colnames (rawdata)[47] <- "myReadingSkillsImprovedThisYear"
colnames (rawdata)[48] <- "EstablishedAPostiveRelationship..."
colnames (rawdata)[49] <- "...HelpedMeRecognizeThingsIDoWell"
colnames (rawdata)[50] <- "whatDidYouLearnThisYear. "



######################## Change Girl Code #################################

rawdata$girlCode <- as.character(rawdata$girlCode)

rawdata$girlCode <- toupper(rawdata$girlCode)

str(rawdata$girlCode)


####################Subset Finished#####################################
# Finished 

fin <- subset (rawdata, Finished  == 1)


############################## Subset Pre ############################3

pre <- subset (fin, Time == "Pre")



######################Find Unique Values################################################
preUnique<- pre [!(duplicated(pre$girlCode) | duplicated(pre$girlCode, fromLast = TRUE)), ]

##############################Subset duplicate girl codes##################

preDupes <-duplicated(pre$girlCode) | duplicated(pre$girlCode, fromLast=TRUE)

preDupes <-pre[preDupes, ]


##############################Subset Post###############################
post <-subset (fin, Time == "Post")


##########################Subset Unique Post Values####################

postUnique<- post [!(duplicated(post$girlCode) | duplicated(post$girlCode, fromLast = TRUE)), ]



##########################Subset Unique Post Values######################
postDupes <-duplicated(post$girlCode) | duplicated(post$girlCode, fromLast=TRUE)

##### I think this is pulling the actuall duplicate values####################
postDupes <-post[postDupes, ]


############################Save the data frames############################

saveRDS(postUnique, file="girlPost07042015.RDS")

saveRDS(preUnique, file="girlPre07042015.RDS")








############################# Removed Duplicates###############################

preUnique<- pre [!(duplicated(pre$girlCode) | duplicated(pre$girlCode, fromLast = TRUE)), ]



#############################Subset Pre Unique Values#####################



saveRDS(preUnique, file="preGirl0329.rds")


write.csv(preUnique, file="preGirl0405.csv")









