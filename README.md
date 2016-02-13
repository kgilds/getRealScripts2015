Get-REAL-
=========

The purpose of this repository is to house R Scripts and documentation for the  Get REAL! program. 

Data sources include girl surveys, parent surveys, teacher surveys and quarterly academic data. 

Girl surveys measure the Girl Scout Outcomes of Healthy Relationships, Academic Mastery, Academic Engagement. 

Analysis of survey and academic data is compared across the school year using the following criteria. 





## Surveys--

### **Student surveys**

1. *girl-survey-data-management*--The purpose of this Script is prepare the girl survey data set for analysis.Reads the data into R, changes the column names, changes the girlCode to a character class and move to character case to upper case, removes duplicate Girl Codes and send updated data to sqlite database. You will need to download dat from qualtrics at different time intervals, perhaps monthly to keep status on it. 

2.  *student_survey_analysis* reads data from sqlite database. Runs an analysis of the student surveys including counts of those achieving at a high level, summary statistics, comparison of pre and post surveys. This script is dependent on  updated girl survey data management script. 


#### **Parent Survey**



1.  *parent_survey_dm*--The purpose of this script is prepare the parent survey for analysis and sends data to sqlite database. 


### **Teacher Survey**

1. *teacher_survey_dm*--The purpose of this script is to prepare the teacher survey for analysis and sends data to sqlite database. 

2. *teacher_survey_analysis*. Reads data from sqlite database and has scripts to run analysis. 



## Academic Data

1. *Q1datamanagement*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames and sends data to sqlite database. 

2. *Q2datamanagement*-- The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.

3. *Q3datamanagement*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.

4. *Q4datamanagement*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.


### Putting it all together 

1. *council_report_analysis* reads data from the sqlite database and has scripts to prepare tabular summaries of council performance and graphical representation of data. 
