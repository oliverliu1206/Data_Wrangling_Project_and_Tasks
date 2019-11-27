select * from lliu.IC_BP_v2;
select count(*) from lliu.IC_BP_v2
where ControlStatus is null

/* add a new column called BPStatus */
alter table lliu.IC_BP_v2
add BPStatus nvarchar(50);
/* Copy the value in BPAlerts to BPStatus and drop BPAlerts*/
Update lliu.IC_BP_v2
set BPStatus=BPAlerts;
alter table lliu.IC_BP_v2
drop column BPAlerts;
/* print random 10 columns */
select top 10* from lliu.IC_BP_v2
order by NEWID();

/* add a new column called ControlStatus */
alter table lliu.IC_BP_v2
add ControlStatus nvarchar(50);
/* Allocate the ControlStatus */
Update lliu.IC_BP_v2
set ControlStatus=1
where BPStatus like 'Normal';

Update lliu.IC_BP_v2
set ControlStatus=1
where BPStatus like 'Hypo1';

Update lliu.IC_BP_v2
set ControlStatus=0
where BPStatus like 'Hypo2';

Update lliu.IC_BP_v2
set ControlStatus=0
where BPStatus like 'HTN1';

Update lliu.IC_BP_v2
set ControlStatus=0
where BPStatus like 'HTN2';

Update lliu.IC_BP_v2
set ControlStatus=0
where BPStatus like 'HTN3';
/* print random 10 columns */
select top 10* from lliu.IC_BP_v2
order by NEWID();

select * from dbo.Demographics
select * from lliu.IC_BP_v2;

select A.*, B.tri_imaginecareenrollmentemailsentdate, B.tri_enrollmentcompletedate into lliu.ICBP_Demo from lliu.IC_BP_v2 A
left join
dbo.Demographics B
on 
A.ID=B.contactid;
select * from lliu.ICBP_Demo




select * from dbo.Demographics
select * from dbo.Conditions
select * from dbo.TextMessages

/*merge these three tables together*/
select A.*, B.*, C.* into lliu.finalQ2 from TextMessages A 
left join dbo.Conditions B
on A.tri_contactId = B.tri_patientid
left join dbo.Demographics C
on A.tri_contactId = C.contactid

select * from lliu.finalQ2
/*see the number of unique IDs*/
select count(distinct tri_contactId) from lliu.finalQ2 


/*1 row per ID by choosing latest data*/
select * into lliu.finaldata from (
    select*,
        row_number() over(partition by tri_contactId order by TextSentDate desc) as rn
    from
        lliu.finalQ2
) t
where t.rn = 1
/*check if the number of unique IDs matched*/
select count(distinct tri_contactId) from lliu.finalQ2 
select count(tri_contactId) from lliu.finaldata

/*print random 10 rows of final dataset*/
select top 10* from lliu.finaldata
order by NEWID();
