Get-REAL-
=========

The purpose of this repository is to house R Scripts and documentation for the  Get REAL! program. 

Data sources include girl surveys, parent surveys, teacher surveys and quarterly academic data. 

Girl surveys measure the Girl Scout Outcomes of Healthy Relationships, Academic Mastery, Academic Engagement. 

Analysis of survey and academic data is compared across the school year using the following criteria. 


### Survey Outcomes

Students in the Get REAL! program take surveys at the time of enrollment and at the end of the program year. 

Criteria for determining success is based on the following criteria


The primary criteria is that student either increased their outcome score or maintained a high achievement level. The number and percent for this criteria is based on the following two outcomes. 

student increased their healthy relationship outcome score.

student  maintained a high achievement level but did not increase their outcome score.


Secondary but reported outcome is the following. 

student improved score from a low achievement level to a high achievement level.





### Grade Outcomes

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


# Reports

## Status Report

### The objective of the status report is to determine the status of data entry and to identify duplicate data.

### How to run the status report.

1. Download each data source from Qualtrics to a csv.file

2. Save the csv.data in the updated data directory. 

3. Run the relevant data management script for each data source. (See data management scripts below)

4. Save relevant data objects (tables) as an RDS.file in the updated data directory. 

5. Run the Status Report Template Scrip to obtain the layout of the report. 








## Surveys--

1. *girl-survey-data-management*--The purpose of this Script is prepare the girl survey data set for analysis.Reads the data into R, changes the column names, changes the girlCode to a character class and move to character case to upper case, removes duplicate Girl Codes. 


3. *parent_survey_dm*--The purpose of this script is prepare the parent survey for analysis and provides analysis. 


4. *teacher_survey_dm*--The purpose of this script is to prepare the teacher survey for analysis. 

5. *comments*--This script combines the comments from the survey into one data frame. 




## Academic Data

1. *Q1datamanagement*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames. 

2. *Q2datamanagement*-- The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.

3. *Q3datamanagement*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.

4.*Q4datamanagement*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.
