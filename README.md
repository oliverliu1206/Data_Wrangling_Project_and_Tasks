# Data Wrangling Projects
# Statement
I received permission from the instructor to make my code public.
# Overview
This repository is for the projects completed in the course of QBS181
# Description of subdirectories
For project1, there are four tasks.
1.    Rename all the columns for eg.,a)  TriAge to Age b)  GenderCode to Gender c)  ContactID to ID etc.
2.   Create a new column “Enrollment Status”
a)  Insert Status=Complete :code is 167410011
b)  Insert Status=Email sent :code is 167410001
c)  Insert Status=Non responder: Code is 167410004 etc.
3.   Create a new Column “Sex”
a)  Insert sex=female if code=2
b)  Insert sex=male if code=1
c)  Insert sex=other if code =167410000 etc.
4.   Create a new column “Age group” and create age groups with an interval of 25 yrs. for example 0-25 years as ‘0-25’, 26-50 as “26-50” and so on...

For project2, there are six tasks.
1.   Create a new column “Enrollment group” in the table Phonecalla)  Insert EnrollmentGroup=Clinical Alert :code is 125060000b)  Insert EnrollmentGroup =Health Coaching :code is 125060001c)  Insert EnrollmentGroup =Technixal Question: Code is 125060002d)  Insert EnrollmentGroup =Administrative: Code  is 125060003e)  Insert EnrollmentGroup =Other: Code  is 125060004f)   Insert EnrollmentGroup =Lack of engagement : Code  is 125060005
2.   Obtain the # of records for each enrollment group
3.   Merge the Phone call encounter table with Call duration table.
4.   Find  out  the  #  of  records  for  different  call  outcomes  and  call  type.  Use  1-Inbound and 2-Outbound, for call types; use 1-No response,2-Left voice mail and 3 successful. Please also find the call duration for each of the enrollment groups 
5.   Merge the tables Demographics, Conditions and TextMessages. Find the # of texts/per week, by the type of sender. Draw a visual using ggplot to obtain # of texts and color it by the type of sender
6.   Obtain  the  count  of  texts  based  on  the  chronic  condition  over  a  period  of time (say per week). Draw a visual using ggplot to obtain the counts

For midterm, there are two tasks.
1.  The DIQ_I.xpt(will be uploaded on canvas) file has some problems with its data (e.g., missing values, numeric columns stored as chars, etc.) and need to be cleaned before further use. a)  List the data-related issues you see in this data setb)  How will you address each data-related issue?c)  Give justification for why you chose a particular way to address each issue. For example, if you decide to address missing values by removing rows or filling empty data cells, justify your decision or if you want to create a PHI field like year of Birth
2.  Clean the data by addressing each point listed in 1.

For final project,
1)  Consider  the  following  blood  pressure  dataset  (IC_BP_v2.csv).  Perform  the following operations
a.  Convert BP alerts to BP status
b.  Define   Hypotension-1   &   Normal   as   Controlled   blood   pressure Hypotension-2, Hypertension-1, Hypertension-2 & Hypertension-3 as Uncontrolled   blood   pressure:   Controlled   &   Uncontrolled   blood pressure as 1 or 0 (Dichotomous Outcomes) 
c.   Merge  this  table  with  demographics  (SQL  table)  to  obtain  their enrollment dates
d.  Create a 12-week interval of averaged scores of each customer 
e.  Compare the scores from baseline (first week) to follow-up scores (12 weeks)
f.   How  many  customers  were  brought  from  uncontrolled  regime  to controlled regime after 12 weeks of intervention?
2)  Merge the tables Demographics, Conditions and TextMessages. Obtain the final dataset such that we have 1 Row per ID by choosing on the latest date when the text was sent (if sent on multiple days)
3)  Repeat Question 2 in R. Hint: You might want to use tidyr/dplyr packages
