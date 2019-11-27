select * into lliu.Demographics from Demographics
select top 10* from lliu.Demographics

#1.a
alter table lliu.Demographics
add Age int NULL

update lliu.Demographics 
set Age=tri_age
select tri_age, Age from lliu.demographics
select top 10* from lliu.Demographics where Age = tri_age

#1.b
alter table lliu.Demographics
add gender nvarchar (255) NULL

update lliu.Demographics 
set gender=gendercode
select gender, gendercode from lliu.demographics
select top 10* from lliu.Demographics

#1.c
alter table lliu.Demographics
add ID nvarchar (255) NULL

update lliu.Demographics 
set ID=contactid
select contactid, ID from lliu.demographics
select top 10* from lliu.Demographics

#1.d
alter table lliu.Demographics
add State nvarchar (255) NULL

update lliu.Demographics 
set State=address1_stateorprovince
select address1_stateorprovince, State from lliu.demographics
select top 10* from lliu.Demographics

#1.e
alter table lliu.Demographics
add EmailSentdate nvarchar (255) NULL

update lliu.Demographics 
set EmailSentdate=tri_imaginecareenrollmentemailsentdate
select tri_imaginecareenrollmentemailsentdate, EmailSentdate from lliu.demographics
select top 10* from lliu.Demographics

#1.f
alter table lliu.Demographics
add CompleteDate nvarchar (255) NULL

update lliu.Demographics 
set CompleteDate=tri_enrollmentcompletedate
select tri_enrollmentcompletedate, CompleteDate from lliu.demographics
select top 10* from lliu.Demographics

#1.g
alter table lliu.Demographics
add TimetoCompleteEnrollment nvarchar (255) NULL

update lliu.Demographics
set TimetoCompleteEnrollment=datediff(day,  try_convert(date, EmailSentdate, 101), try_convert(date, CompleteDate, 101))
select top 10* from lliu.Demographics

#2.a
alter table lliu.Demographics
add EnrollmentStatus nvarchar (255) NULL

update lliu.Demographics
set EnrollmentStatus='Complete'
where tri_imaginecareenrollmentstatus=167410011
select top 10* from lliu.Demographics where EnrollmentStatus='Complete'

#2.b
update lliu.Demographics
set EnrollmentStatus='EmailSent'
where tri_imaginecareenrollmentstatus=167410001
select top 10* from lliu.Demographics where EnrollmentStatus='EmailSent'


#2.c
update lliu.Demographics
set EnrollmentStatus='NonResponder'
where tri_imaginecareenrollmentstatus=167410004
select top 10* from lliu.Demographics where EnrollmentStatus='NonResponder'

#2.d
update lliu.Demographics
set EnrollmentStatus='Facilitated_Enrollment'
where tri_imaginecareenrollmentstatus=167410005
select top 10 * from lliu.demographics where EnrollmentStatus='Facilitated_Enrollment'

#2.e
update lliu.Demographics
set EnrollmentStatus='Incomplete_Enrollment'
where tri_imaginecareenrollmentstatus=167410002
select top 10 * from lliu.demographics where EnrollmentStatus='Incomplete_Enrollment'

#2.f
update lliu.Demographics
set EnrollmentStatus='Opted_Out'
where tri_imaginecareenrollmentstatus=167410003
select top 10 * from lliu.demographics where EnrollmentStatus='Opted_Out'

#2.g
update lliu.Demographics
set EnrollmentStatus='Unprocessed'
where tri_imaginecareenrollmentstatus=167410000
select top 10 * from lliu.demographics where EnrollmentStatus='Unprocessed'

#2.h
update lliu.Demographics
set EnrollmentStatus='Second_Email'
where tri_imaginecareenrollmentstatus=167410006
select top 10 * from lliu.demographics where EnrollmentStatus='Second_Email'

#3.a
alter table lliu.Demographics
add Sex varchar (255) NULL

update lliu.Demographics
set Sex='female'
where gendercode='2'
select top 10* from lliu.Demographics where Sex='female'

#3.b
update lliu.Demographics
set Sex='male'
where gendercode='1'
select top 10* from lliu.Demographics where Sex='male'

#3.c
update lliu.Demographics
set Sex='other'
where gendercode='167410000'
select top 10* from lliu.Demographics where Sex='other'

#3.d
update lliu.Demographics
set Sex='Unknown'
where gendercode='NULL'
select top 10* from lliu.Demographics where Sex='Unknown'

#4.
alter table lliu.Demographics
add Age_group varchar (255) NULL

update lliu.Demographics
set Age_group='0-25'
where Age between 0 and 25

update lliu.Demographics
set Age_group='26-50'
where Age between 26 and 50

update lliu.Demographics
set Age_group='51-75'
where Age between 51 and 75

update lliu.Demographics
set Age_group='76-100'
where Age between 76 and 100

select Age, Age_group from lliu.Demographics