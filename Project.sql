--Relationship
use Coaching_Center
select * from Student_Details;
select * from Teacher_Details;
select * from Course_Details;

--Inner Joins Command:  SELECT * 
				--FROM Table1 INNER JOIN Table2 
				--ON Table1.column_name= Table2.column_name;

select * 
From Enroll_Ment e
inner join Teacher_Details t on e.Teacher_ID = t.TeacherID;

--Multiply Inner joins
select * from Enroll_Ment
inner join Student_Details on Enroll_Ment.Student_ID = Student_Details.StudentID  
inner join Teacher_Details on Enroll_Ment.Teacher_ID = Teacher_Details.TeacherID  
inner join Course_Details on Enroll_Ment.Course_ID = Course_Details.CourseID

--Coustomise but same rule
select 
s.First_Name+' '+s.Last_Name as [Student Full Name], 
t.First_Name+' '+t.Last_Name [Teacher Full Name],
c.Course_Code [Course Code], c.Course_Title [Course Title], c.Course_credits [Course Credits]
from Enroll_Ment e 
inner join Student_Details s on e.Student_ID = s.StudentID 
inner join Teacher_Details t on e.Teacher_ID = t.TeacherID
inner join Course_Details c on e.Course_ID = c.CourseID

--Inner joins same rule apply but add conditions
select 
s.First_Name+' '+s.Last_Name as [Student Full Name], 
t.First_Name+' '+t.Last_Name [Teacher Full Name],
c.Course_Code [Course Code], c.Course_Title [Course Title], c.Course_credits [Course Credits]
from Enroll_Ment e 
inner join Student_Details s on e.Student_ID = s.StudentID 
inner join Teacher_Details t on e.Teacher_ID = t.TeacherID
inner join Course_Details c on e.Course_ID = c.CourseID
where e.ID=4
order by c.CourseID;


--Left joins command: SELECT column_name(s)
					--FROM table1
					--LEFT JOIN table2
					--ON table1.column_name = table2.column_name;

select e.Teacher_ID, t.First_Name+' '+t.Last_Name as [Student Full Name], t.Date_Of_Birth [Date Of Birth]
From Enroll_Ment e
left join Teacher_Details t on e.Teacher_ID = t.TeacherID;


--Right joins command: SELECT column_name(s)
					 --FROM table1
					 --RIGHT JOIN table2
					 --ON table1.column_name = table2.column_name;
select * 
From Enroll_Ment e
right join Teacher_Details t on e.Teacher_ID = t.TeacherID;


--Full joins Command: SELECT table1.column1, table2.column2...
					--FROM table1
					--FULL JOIN table2
					--ON table1.common_field = table2.common_field;
select * 
From Enroll_Ment e
full join Teacher_Details t on e.Teacher_ID = t.TeacherID;



--Grouping data command: SELECT column_name(s)
						--FROM table_name
						--WHERE condition
						--GROUP BY column_name(s)
						--ORDER BY column_name(s);
Select ID, Teacher_ID, Student_ID, Course_ID, Grade
from Enroll_Ment
where Teacher_ID = 601
group by ID,Teacher_ID, Student_ID, Course_ID, Grade
order by Grade;



--Aggregate Function command:

select count(*) [Total Row], avg(Grade) [Average CGPA], sum(Grade) [Total CGPA], max(Grade) [Maximun CGPA], min(Grade) [Minimum CGPA]
from Enroll_Ment;

select count(*) [Total Row], avg(Grade) [Average CGPA], sum(Grade) [Total CGPA], max(Grade) [Maximun CGPA], min(Grade) [Minimum CGPA]
from Enroll_Ment
where Student_ID = 7713
order by [Average CGPA];




