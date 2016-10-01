Get-REAL-
=========

# Purpose 

The purpose of this repository is to house R Scripts and documentation for the  Get REAL! program. 

Data sources include girl surveys, parent surveys, teacher surveys and quarterly academic data. 

Girl surveys measure the Girl Scout Outcomes of Healthy Relationships, Academic Mastery, Academic Engagement. 

# Objectives of the Get REAL! Program include the following

## Reading Improvement:

* 50% of participating students will improve their reading skills as demonstrated by their Language Arts grade increasing or maintaining a "C" grade from the baseline grading period to the final grading period as evidenced by report cards/school reports.


## Improved Attendance:

    * 60% of participating students will either maintain or improve their attendance rates as demonstrated by their decreased absences from the baseline grading period to the final grading period as evidenced by report cards/school reports.

## Improvement In School Behavior

    * 70% of participating students will show improvement in behavior by decreasing their number of suspensions from the baseline grading period to final grading period or not having a suspension during the school year as evidenced from the student's report card/school reports.

## Life Skills

    * 70% of participating girls will demonstrate an increased understanding of pertinent life skills as demonstrated by a pre and post assessment




## Surveys--

### **Student surveys**

1. *girl-survey-data-management*--The purpose of this Script is prepare the girl survey data set for analysis.Reads the data into R, changes the column names, changes the girlCode to a character class and move to character case to upper case, removes duplicate Girl Codes and send updated data to sqlite database. You will need to download data from qualtrics at different time intervals, perhaps monthly to keep status on it. 

2.  *student_survey_analysis* reads data from sqlite database. Runs an analysis of the student surveys including counts of those achieving at a high level, summary statistics, comparison of pre and post surveys. This script is dependent on  updated girl survey data management script. 


#### **Parent Survey**


1.  *parent_survey_dm*--The purpose of this script is prepare the parent survey for analysis and sends data to sqlite database. 


### **Teacher Survey**

1. *teacher_survey_dm*--The purpose of this script is to prepare the teacher survey for analysis and sends data to sqlite database. 

2. *teacher_survey_analysis*. Reads data from sqlite database and has scripts to run analysis. This script is dependent on  updated teacher_survey_ survey data management script. 



## Academic Data

1. *q1_dm.RMD*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames. The script adds a grade point based on the grade received and sends data to sqlite database. 

2. *q2_dm.RMD*-- The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames. The script finds students who have both quarter and semester grades; the script removes quarter grades when there is a semester grade giving greater weight to the the semester grade. For students with two or more reading or language arts courses the script will average their course grades and assign a grade point. The script also sends data objects to sqlite database.  

3. *Q3datamanagement.rmd*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.

4. *Q4datamanagement.rmd*--The purpose of this script is to change the column names, remove duplicate data entry, and to split the subjects into separate data frames.


### Analysis Files

1. *council_data* reads data from sqlite database and is used as a status update on the number of valid data entries for each data source. It has functions to place each council's data in a particular Drop box folder. This script also provides data on the duplicate data entries for each data source. 

2. *council_report_analysis* reads data from the sqlite database and has scripts to prepare tabular summaries of council performance and graphical representation of data. 

3. *council_data* reads data from sqlite database and runs functions to write csv files of council data to a shared Drop box folder. Data includes key data points from data sources along with information on duplicate date entry issues.


4. *healthy_relationships.rmd* Reads data from sqlite database and merges students records that can be matched. Answers the following questions.

    * Percent of students with a successful outcome

    * Percent of students achieving skill at high level

    * Percent of students who increased skill level from pre to post

    * Percent of students who went from low achievement to high achievement


5. *academic_mastery.rmd* Reads data from sqlite database and merges students records that can be matched. Answers the following questions.

    * Percent of students with a successful outcome

    * Percent of students achieving skill at high level

    * Percent of students who increased skill level from pre to post

    * Percent of students who went from low achievement to high achievemnt

6. *academic_engagement.rmd* Reads data from sqlite database and merges students records that can be matched. Answers the following questions.

    * Percent of students with a successful outcome

    * Percent of students achieving skill at high level

    * Percent of students who increased skill level from pre to post

    * Percent of students who went from low achievement to high achievement


7. *langArts.Rmd* Reads data from sqlite database and merges students records that can be matched. Answers the following questions.

    * The percent of students with a successful outcome 

    * The number of students who increased their Language Arts Grade with a final grade of at least a C.

    * The number of students who maintained their baseline grade with at least a C

    * The percent of students who had a failing grade at baseline and finished with a passing final grade.

    * Graphics and Statistical Tests

8. *reading.rmd* Reads data from sqlite database and merges students records that can be matched. Answers the following questions.

    * The percent of students with a successful outcome 

    * The number of students who increased their Reading Grade with a final grade of at least a C.

    * The number of students who maintained their baseline grade with at least a C

    * The percent of students who had a failing grade at baseline and finished with a passing final grade.



9. *Suspensions.rmd* Reads data from sqlite database and merges students records that can be matched. Answers the following questions.

    * The percent of students with a successful outcome 

    * The number of students who decreased there number of suspensions

    * The number of who did not have a suspensions during the school year


10. *Attendance.rmd* Reads data from sqlite database and merges students records that can be matched. Answers the following questions.

    * The percent of students with a successful outcome 

    * The number of students who decreased there number of absences both excused and unexcused

    * The number of who did have an absence during the school year


### Putting it all together

1. *Intro.rmd* Narrative outline of the beginning of the summative evaluation report

2. *life_skill.rmd* combine files of healthy_relationship.rmd, academic_engagement.rmd, and academic mastery.rmd

3. Academic data was downloaded separately into word file and combined. 