use Mentors

select Teacher_ID, Course_ID from Enroll_ment
select distinct Teacher_Id, Course_ID from Enroll_ment

--Grouping Data Command:  SELECT column_name(s)
						--FROM table_name
						--WHERE condition
						--GROUP BY column_name(s)
						--ORDER BY column_name(s);

SELECT ID,[Student_ID],[Teacher_ID],[Course_ID],[Grade]
FROM [Mentors].[dbo].[Enroll_Ment]
where Teacher_ID = 2;

