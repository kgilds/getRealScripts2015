# codeBook
Kevin Gilds  
`r Sys.Date()`  

# Introduction 

The GET REAL! Program is a statewide mentoring program facilitated by six Girl Scout Councils in Florida. 

The goal of the GET REAL! Program is to help at-risk middle school girls achieve academic success by connecting them to caring mentors in the community that will help students with their reading and writing, help develop their character and relationships skills, and provide opportunities to participate in community service projects and educational trips out of the confines of school.


# Motiviation

How is the Get REAL! program deemed successful? This Codebook seeks to clarify the data that is collected and why. The Readme file provides the details of how the R scripts work together to analyze the data that has been collected. 

## Data Sources and Methdology

Outcome data sources for the Get REAL! program include the *Girl Survey*, *Parent Survey*, *Teacher Survey* and *Academic Data for Q1, Q2, Q3, Q4* The girl survey was designed to measure skills in healthy relationships, academic mastery, and academic engagement. The parent and teacher surveys were designed to cross validate the results of the girl survey. 



### Life Skills:

1. Healthy Relationship: Questions are designed to measure the students relationship skills.

2. Academic Mastery: Questions are designed to measure the student's attitude toward school.

3. Academic Engagement: Questions are designed to gauge tangible behaviors that help students succeed in school. 


The questions and the scoring methodology of the girl survey were developed and tested by the Girl Scout Research Institute. Girls answer multiple questions to obtain an outcome score for each life skill domain. Responses to survey questions are assigned numbers/points and outcome scores are calculated by averaging responses to survey questions for each category.  The points for each outcome set are averaged to obtain an outcome score. Outcome cutpoints are determined by the number of questions in the outcome set and response options. Outcomes scores range from 0-6. Below is a breakdown of the cutpoints by the outcomes measured.




Life Skills Achievement      |Average Score to indicate high achievement.
-------------------------|-----------------------------------------------
Healthy Relationships      |4.45=>
Academic Mastery           |4.8=>
Academic Engagement        |4.5=>




### Survey Outcomes

Students in the Get REAL! program take surveys at the time of enrollment and at the end of the program year. 

Criteria for determining success is based on the following criteria


The primary criteria is that student either increased their outcome score or maintained a high achievement level. The number and percent for this criteria is based on the following two outcomes. 

* student increased their healthy relationship outcome score.

* student  maintained a high achievement level but did not increase their outcome score.


Secondary but reported outcome is the following. 

* student improved score from a low achievement level to a high achievement level.





### Grade Outcomes

Please note that semester grades are given greater weight than quarter grades. If a student has a grade in more than one course the grades are averaged to grade point. The grade point is used to compare over the time. 

**Reading and Language Arts Courses Outcome Tables**

1. Grade increase

2. Dropped grade but maintained a "C" grade

3. Fail to pass


**Attedance Outomce**

1. Number and percent of students without an absence

2. Number and percent of students who decreased their absences


**Suspension Outcome**

1. Number and percent of students without a suspension.

2. Number and percent of students who decreased their suspensions.


# Girl Survey Variables

1.--**Response ID:** Alpha Numeric Code that uniquely identifies a response

2.--**ResponseSet:** Unused variable established by Qualtrics. 

3.--**StartDate:** Date the data entry started for a particular response.

4.--**EndDate:** Date the data entry was completed for a particular response.

5.--**Finished:** Identifies whether the data entry was completed.

6.--**hr.sum:** The sum of the score obtained from the  healthy relationship questions 

7.--**hr.avg:** The average of the score obtained from healthy relationships questions.

8.--**hr.stddev:** The standard deviation of the score obtained from healthy relationships questions.

9.--**hr.disualify.sum:** The sum of the disqualification score for healthy relationship questions.

10.--**Disqualify.Outcome.6.weightedAvg:** The average of the disqualification score for healthy relationship questions

11.--**Disqualify.Outcome.6.weightedStdDev:** The standard deviation of the disqualification score for healthy relationship questions.

12.--**ae.sum:** The sum of the score obtained from the academic engagement questions.

13.--**ae.avg:** The average score obtained from the academic engagement questions.

14.--**ae.stddev:** The standard deviation obtained from the academic engagement questions.

15.--**am.sum:** The sum of the scores obtained from the academic mastery questions.

16.--**am.avg:** The average of the score obtained from the academic mastery questions.

17.--**am.stddev:** The standard deviation obtained from the academic mastery questions

18.--**am.disqualify.sum:** The sum of the scores of disqualification responses to academic mastery questions.

19.--**Academic.Engagement.Disqualify.weightedAvg:** The average of the disqualification points from the academic engagement questions.

20.--**Academic.Engagement.Disqualify.weihtedStdDev:** The standard deviation of the disqualification score from the academic engagement questions.

21.--**ae.disquaalify.sum:** The sum of the disqualification scores obtained from academic engagement questions.

22.--**Disqualify.Academic.Mastery.weightedAvg:**  The average of the disqualification scores obtained from academic mastery questions.

23.--**Disqualify.Academic.Mastery.weightedStdDev:** The standard deviation of the disqualification scores obtained from the academic mastery questions.

24.--**Council:** The Girl Scout Council that is delivering the service and entering the data.

25.--**girlCode:** The unique identification number assigned to students in the Get REAL! program

26.--**school:** The site or school where the program is delivered.

27.--**Grade:** The grade of the student.

28.--**Time:** Time denotes the point of the program when the student complete the survey. Pre and Post

29.--**In program Last Year:** variable that denotes if the student was in the program last year. 

30.--**iamMotivatedToGraduateHighSchool:** variable measures motivation to complete high school. Not scored for outcome. 

-------
    
    Survey Question: I am motivated to graduate high school. Not scored for outcome achievement. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree                 
    Disagree a little               
    Disagree                        
    Disagree a lot                  
    Don't know/Don't want to say 




31.--**iReadBooksforFun:** variable measures student's attitude towards reading. Not scored for outcome.

-------
    
    Survey Question: I read books for fun.
    Answer Choices:                  
    Strongly Agree                  
    Agree                           
    Slightly Agree                   
    Disagree a little              
    Disagree                        
    Disagree a lot                  
    Don't know/Don't want to say   
    
---


32.--**ireallyLikeWhoIam:** variable measures self worth. Not scored for outcome. 

-------
    
    Survey Question: I really like who I am no matter what other people think.
    Answer Choices:                 
    Strongly Agree                  
    Agree                           
    Slightly Agree                   
    Disagree a little               
    Disagree                        
    Disagree a lot                      
    Don't know/Don't want to say    


33.--**.....ImproveMySkillsThisYear:** variable measures motivation to improve skills

-------
    
    Survey Question: It's important to me that I improve my skills this year in school
    Answer Choices:                   Points
    Strongly Agree                  = 6
    Agree                           = 4.8
    Slightly Agree                  = 3.6
    Disagree a little               = 2.4
    Disagree                        = 1.2
    Disagree a lot                  = 0
    Don't know/Don't want to say    = 0

----------

34.--**....UnderstandMyClassWork:** variable measures academic mastery skill.

--------
    
    Survey Question: It's important to me that I really understand my class work
    Answer Choices:                   Points
    Strongly Agree                  = 6
    Agree                           = 4.8
    Slightly Agree                  = 3.6
    Disagree a little               = 2.4
    Disagree                        = 1.2
    Disagree a lot                  = 0
    Don't know/Don't want to say    = 0


35.---**learningatSchoolIsImportantToMe:**  Variable measures academic mastery life skill.

------
    
    Survey Question: Learning at school is important to me
    Answer Choices:                   Points
    Strongly Agree                  = 6
    Agree                           = 4.8
    Slightly Agree                  = 3.6
    Disagree a little               = 2.4
    Disagree                        = 1.2
    Disagree a lot                  = 0
    Don't know/Don't want to say    = 0


36.--**oneofMyGoalistolearn:**  Variable measures academic mastery life skill.

----
    
    Survey Question: One of my goals in school is to learn as much as I can
    Answer Choices:                   Points
    Strongly Agree                  = 6
    Agree                           = 4.8
    Slightly Agree                  = 3.6
    Disagree a little               = 2.4
    Disagree                        = 1.2
    Disagree a lot                  = 0
    Don't know/Don't want to say    = 0 

37.--**...willHelpMeLaterInLife:** Variable measures academic mastery life skill.

---
    
    Survey Question: The things I am learning in school will help me later in life
    Answer Choices:                   Points
    Strongly Agree                  = 6
    Agree                           = 4.8
    Slightly Agree                   = 3.6
    Disagree a little               = 2.4
    Disagree                        = 1.2
    Disagree a lot                  = 0
    Don't know/Don't want to say    = 0



38.--**IfIHaveASeriousProblem:** Variable measures healthy relationships life skill.

----

    Survey Question: If I have a serious problem, I have people to talk with
    Answer Choices:                   Points
    Strongly Agree                  = 6
    Agree                           = 4.8
    Slightly Agree                   = 3.6
    Disagree a little               = 2.4
    Disagree                        = 1.2
    Disagree a lot                  = 0
    Don't know/Don't want to say    = 0


39.--**inAnyRelationshiporNotIMakeitClear:** Variable measures healthy relationship life skills. 

----

    Survey Question: In any relationship - romantic or not - I make it clear when I
    Answer Choices:                   Points
    A lot like me                   = 6
    A little like me                = 4
    Not much like me                = 2
    Not at all like me              = 0
    Don't know/Don't want to say    = 0
    

40.--**iTalkwithMyTeacherBeforeorAfter:** Variable measures academic engagement

----

    Survey Question: I talk with my teachers before or after school, or during lunch about my assignments.
    Answer Choices:                   Points
    Always                          = 6
    A lot of the time               = 4.5
    Sometime                        = 3
    Hardly Ever                     = 1.5
    Never                           = 0
    Don't know/Don't want to say    = 0
    

41.--**iHandinMyAssignmentsOnTime:** Variable measures academic engagement

----

    Survey Question: I hand in my assignments on time
    Answer Choices:                   Points
    Always                          = 6
    A lot of the time               = 4.5
    Sometime                        = 3
    Hardly Ever                     = 1.5
    Never                           = 0
    Don't know/Don't want to say    = 0
    

42.--**iFinishMyHomeworkEvenIfItisBoring:** Variable measures academic engagement

----

    Survey Question: I finish my homework even if it is boring
    Answer Choices:                   Points
    Always                          = 6
    A lot of the time               = 4.5
    Sometime                        = 3
    Hardly Ever                     = 1.5
    Never                           = 0
    Don't know/Don't want to say    = 0
    




43.--**ifICantUnderstandMySchoolatFirstI...:** Variable measures academic engagement

----

    Survey Question: If I can't understand my schoolwork at first, I keep trying until I do understand it.
    Answer Choices:                   Points
    Always                          = 6
    A lot of the time               = 4.5
    Sometime                        = 3
    Hardly Ever                     = 1.5
    Never                           = 0
    Don't know/Don't want to say    = 0
    




44.--**iLetPeopleKnowIfTheyHurtMyFeelings:**  Variable measures healthy relationship skill

----

    Survey Question: I let people know if they have hurt my feelings
    Answer Choices:                   Points
    Always                          = 6
    A lot of the time               = 4.5
    Sometime                        = 3
    Hardly Ever                     = 1.5
    Never                           = 0
    Don't know/Don't want to say    = 0
    



45.--**iLetMyFriendsKnowWhenIThinkTheyAreGoodAtSomething:** Variable measures healthy relationship skill

----

    Survey Question: I let my friends know when I think they are good at something
    Answer Choices:                   Points
    Always                          = 6
    A lot of the time               = 4.5
    Sometime                        = 3
    Hardly Ever                     = 1.5
    Never                           = 0
    Don't know/Don't want to say    = 0
    

46.--**ILearnedFromTheBooksWeReadThisYear:** Did the student feel they learned from the books they read this year. 

-------
    
    Survey Question: I learned from the books we read this year.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree                   
    Disagree a little               
    Disagree                        
    Disagree a lot                  
    Don't know/Don't want to say    


47.--**myReadingSkillsImprovedThisYear:** This Variable is an attribution question about the value of the program

----

    Survey question: My reading skills improved because of my participation in the Get Real Program.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree                   
    Disagree a little               
    Disagree                        
    Disagree a lot                  
    Don't know/Don't want to say    



48.--**EstablishedPositiveRelationship...:** This Variable is an attributaional question about the value of the program. Can help cross validate healthy relationship skills or support it.

----

    Survey question: I established a positive relationship with my mentor in the  Get Real program.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree                   
    Disagree a little               
    Disagree                        
    Disagree a lot                  
    Don't know/Don't want to say    


49.--**HelpmeRecognizeThingsIDoWell** Attirubtional question about the value of the program in supporting self-worth

----

    Survey Variable: The Get Real Program helped me recognize the things I am capable of doing well.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree                   
    Disagree a little               
    Disagree                        
    Disagree a lot                  
    Don't know/Don't want to say    


50.--**WhatDidYouLearnThisYear:** Comment narrative questions. 

---

    Survey Question: What did you learn this year. 





# Parent Survey Variables


1.--**ResponseID** Alpha Numeric Code that uniquely identifies a response

2.--**ResponseSet** Unused variable established by Qualtrics. 

3.--**StartDate**  Date the data entry started for a particular response.

4.--**EndDate**  Date the data entry was completed for a particular response

5.--**Finished**  Identifies whether the data entry was completed.


6.--**council**  The Girl Scout Council that is providing service to the student.

7.--**girlCode** The unique identification number for students participating the program.

8.--**schoolName** The name of the school where the student participates in the program.

9.--**Time**  Identifies the time of the survey: Pre/Post

10.--**graduate** This question inquires from the parent if they believe the student is motivated to graduate high school.

----

    Survey Question: She is motivated to graduate high school.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree              
    

11.--**sheHasSelfConfidnce** This question inquires from the parent if they believe the student has self confidence

----

    Survey Question: She has self-confidence.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree         

12.--**goodAttitudeAboutSchool** This question inquires from the parent if they believe the student has a good attitude toward school. (Academic Mastery)

---

    Survey Question: She has a good attitude about school
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree      

13.--**readBooksForFun**  This question inquires from the parent if the student reads books for fun. The hope is that this changes from pre to post. 

---

    Survey Question: She reads books for fun. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree    

14.--**positiveRelationships** This question inquires from the parent if the student establishes positive relationships with peers. (Healthy Relationships)

---

    Survey question: She develops positive relationships with her classmates
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree    

15.--**homeworkWithoutSuprvision** This question inquires from the parent if the student completes homework without being told to do so.

---

    Survey question: She works on her homework without supervision. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree    

16.--**helpedMyDaughterGainConfidenceInHerAbilities** This is an attributional Question that assess from the parent if the student gained confidence in her abilities from the Get REAL! program.

---

    Survey Question: The Get REAL! Program helped my daughter gain confidence in her abilities
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree 

17.--**helpedMyDaughterAchieveSuccessInSchool** This is an attributional question that assess from the parent if they believe the Get REAL! program helped their daughter achieve success in school. 

---

    Survey Question: The Get REAL! program helped my daughter achieve success in school. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree 

18.--**helpedEstablishPositiveRelationshipsWithHerClassmates** This is an attributional question that assess from the parent if they believe the Get REAL! program help their daughter establish positive relationships. 

---

    Survey Question: The Get REAL! program helped her establish positive relationships with her classmates. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree 

19.--**helpdYourDaughterAchieveSuccessInSchool** Narrative question that asks the parents to state how the Get REAL! program help their daughter achieve success in school.

----

    Survey Question: How has the Get REAL! program helped your daughter achieve success in school.

    Narrative





20.--**ImproveTheGetRealProgam**  Narrative question that ass parent to provide feedback on the Get REAL program could be improved.

----

    Survey Question: What could be done to improve the Get REAL! program. 

    Narrative. 


# Teacher Survey Variables


1.--**ResponseID** Alpha Numeric Code that uniquely identifies a response

2.--**ResponseSet** Unused variable established by Qualtrics. 

3.--**StartDate**  Date the data entry started for a particular response.

4.--**EndDate**  Date the data entry was completed for a particular response

5.--**Finished**  Identifies whether the data entry was completed.

6.--**council**  The Girl Scout Council that is providing service to the student.

7.--**girlCode** The unique identification number for students participating the program.

8.--**schoolName** The name of the school where the student participates in the program.

9.--**Time**  Identifies the time of the survey: Pre/Post

10.--**MotivatedToGraduateHighSchool** This Question inquires from the teacher if they believe the student is motivated to graduate high school.

----

    Survey Question: She is motivated to graduate high school.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree              
    

11.--**hasSelfConfidence** This question inquires from the student's teacher if they believe the student has self confidence

----

    Survey Question: She has self-confidence.
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree         


12.--**goodAttitudeAboutSchool**  This question inquires from the student's teacher if they think the student has a good attitude about school. 

-------

    Survey Question: She has a good attitude about school
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree     

13.--**isInterestedInReading** This Question inquires from the student's teacher, if the they think the student is interested in reading. 

----

    Survey Question: She is interested in reading
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree     

14.--**postivelyParticipatedInClass**  Variable measures how the student participates in class. 

----

    Survey Question: She positively participates in class
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree


------------------


15.--**completesHomeworkGivenToHer** variable measures if the student completes the homework given to her from the perspective of the student's teacher.

------------------

    Survey Question: She completes the homework given to her. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree

16.--**hasDevelopedPostiveRelationshipsWithHerClassmates** variable measures if the student has developed positive relationships from the perspective of the teacher. 

---------------------

    Survey Question: She has developed positive relationships with her classmates 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree

17.--**helpedHerIncreasedHerSelfConfidence** variable is a post-survey that measures if the Get REAL! program has helped their daughter increase confidence from the teacher's perspective. 

--------------

    Survey Question: The Get REAL! program helped her increase her self-confidence
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree


18.--**helpedHerAchieveSucessInSchool** is a post survey variable that measures if  the Get REAL! Program helped the student achieve success in school from the teacher's perspective. 

-------------

    Survey Question: The Get REAL! program helped her achieve success in school. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree


19.--**helpedHerDevelopPostiveRelationship** is a post survey variable that measures if the Get REAL! Program helped the student develop positive relationships at school from the perspective of the school.

---------------

    Survey Question: The Get REAL! program helped her develop positive relationships at school. 
    Answer Choices:                   
    Strongly Agree                  
    Agree                           
    Slightly Agree
    Neither Agree/Disagree
    Slightly Disagree
    Disagree
    Strongly Disagree


20.--**benefitsFromParticipating** is a post survey variable that is an open ended question that teachers can write how the program has benefited their students.

-----------------

21.--**whatCouldBeDoneToImproveTheProgram** is a post survey variable that is an open ended question that teachers can express how the program could be improved. 

--------------

# Academic Data

Please note the courses below do not match the exact order the courses are listed in the data entry form. 

## Demographics

1.--**Response ID:** Alpha Numeric Code that uniquely identifies a response

2.--**ResponseSet:** Unused variable established by Qualtrics. 

3.--**StartDate:** Date the data entry started for a particular response.

4.--**EndDate:** Date the data entry was completed for a particular response.

5.--**Finished:** Identifies whether the data entry was completed.

6.--**council:**  The Girl Scout Council that is providing service to the student.

7.--**girlCode:** The unique identification number for students participating the program.

8.--**schoolName:** The name of the school where the student participates in the program.

9.--**dateEnrolled:** The date the student was enrolled in the Get REAL! program.

## Behavior Data

10.--**unexusedABs:** The number of unexcused absences for the student during the reporting period.

11.--**excusedAbs:** The number of excused absences for the student during the reporting period

12.--**behaviorRef:** The number of behavioral referrals for the student during the reporting period.

13.--**inSchoolSusp:** The number of In-School Suspensions for the student during the reporting period. 

14.--**outofSchoolSus:** The number of Out-of-School Suspensions for the student during the reporting period.

15.--**expelled:** Yes/No question regarding if the student was expelled during the school year. 

16.--**promoted:** Yes/No question regarding if the student will be promoted to the next grade.

## Reading Courses

17.--**MjIntensRead:** M/J Intensive Reading (MC),   Student's quarter and semester grade for this course

18.--**mjIntenseReadCareerPlanning:** M/J Intensive Reading and Career  Planning, Student's quarter and semester grade for this course

19.--**mjRead1:** M/J Reading 1, Student's quarter and semester grade for this course

20.--**mjRead1Adv:** M/J Reading 1, Advanced, Student's quarter and semester grade for this course

21.--**mjRead2:** M/J Reading 2, Student's quarter and semester grade for this course

22.--**mjRead2Adv:** M/J Reading 2, Advanced Student's quarter and semester grade for this course

23.--**mjRead3:** M/J Reading 3, Student's quarter and semester grade for this course

24.--**mjRad3Adv:** M/J Reading 3, Advanced, Student's quarter and semester grade for this course

25.--**mjDelaESOLRead:** M/J Developmental Language Arts Through ESOL (Reading) Student's quarter and semester grade for this course

26.--**readFree1:** Any reading course not listed above.

27.--**readFree2:** Student's quarter and semester grade for this course

## Language Arts Course

28.--**mjLangArts1ESOL:**  M/J Language Arts 1 Through ESOL Student's quarter and semester grade for this course

29.--**mjLangArts2ESOL:** M/J Language Arts 2 Through ESOL, Student's quarter and semester grade for this course

30.--**mjLangArts3ESOL:** M/J Language Arts 3 Through ESOL, Student's quarter and semester grade for this course

31.--**mjDevelpmentESOL:** M/J Developmental Language Arts: Through ESOL (MC), Student's quarter and semester grade for this course

32.--**mjLangArts1:**  M/J Language Arts 1,  Student's quarter and semester grade for this course

33.--**mjlangArts1Adv:** M/J Language Arts 1, Advanced, Student's quarter and semester grade for this course

34.--**mjLangArts2:** M/J Language Arts 2, Student's quarter and semester grade for this course

35.--**mjLangArts2Adv:** M/J Language Arts 2, Advanced, Student's quarter and semester grade for this course

36.--**mjLangArts3:** M/J Language Arts 3, Student's quarter and semester grade for this course

37.--**mjLangArts3Adv:** M/J Language Arts 3, Advanced Student's quarter and semester grade for this course

38.--**mjEng2Cambsec2:** M/J English 2 Cambridge Secondary 1, Student's quarter and semester grade for this course

39.--**mjIBLangArts1:** M/J International Baccalaureate/Language Arts 2/Language & Literature 2, Student's quarter and semester grade for this course

40.--**mjEng2CamSec1:** Student's quarter and semester grade for this course

41.--**mjIBLangArts3:**  M/J International Baccalaureate/Language Arts 3/Language & Literature 3 Student's quarter and semester grade for this course

42.--**mjEg3Camsec3:**  M/J English 3 Cambridge Secondary 1, Advanced, Student's quarter and semester grade for this course

43.--**mjIntenseLangArts:** M/J Intensive Language Arts (MC), Student's quarter and semester grade for this course

44.--**freeLang1:** Any Language Arts Course not listed above.

45.--**freeLang2:** free Lang1, Student's quarter and semester grade for this course








