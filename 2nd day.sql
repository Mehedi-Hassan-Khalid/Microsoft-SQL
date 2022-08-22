/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (1000) [ID]
--      ,[First_Name]
--      ,[Last_Name]
--      ,[Date_Of_Birth]
--      ,[Enroll_Ment_Date]
--  FROM [University].[dbo].[Students]


--select First_Name, Last_Name, Date_Of_Birth as [Date of Birth]
--from University.dbo.Students
--where Last_Name = 'Hassan'


select First_Name, Last_Name, Date_Of_Birth as [Date of Birth]
from University.dbo.Students
where Last_Name like '%s%' -- start and end are between 's' latter
--where Last_Name like 'h%' -- start 'h' and after 'h' can be latter 

select First_Name, Last_Name, First_Name+' '+Last_Name as [Full Name], Date_Of_Birth [Date of Birth], Enroll_Ment_Date
from University.dbo.Students


select Course_ID, Course_code, Course_Title, Course_credits
from University.dbo.Courses
where Course_credits < 3;


--Update Database
update Students set Enroll_Ment_Date = '2021-01-01' where Enroll_Ment_Date = '2020-01-01';

update Students set Enroll_Ment_Date = '2021-01-01'

update Students set First_Name = 'Sadiya', Last_Name = 'Jahan Tamim' where ID = 7725;

update Students set Enroll_Ment_Date = '2018-01-01' where ID = 7721 or ID = 7722 or ID = 7723 or ID = 7724;

select *
from University.dbo.Students;

--Delete Database Command: delete from Table_Name where Condition;  [delete from Courses where Course_ID = 9;]
delete from Courses where Course_ID = 9;

delete from Courses where Course_Title = 'Physics' or Course_credits = 3;

delete from Courses where Course_Title like '%h%';

select *
from University.dbo.Courses;