--Relationship
use Mentors
select * from Students;
select * from Teachers;
select * from Courses;

--Inner Joins Command:  SELECT * 
				--FROM Table1 INNER JOIN Table2 
				--ON Table1.column_name= Table2.column_name;

select * 
From Enroll_Ment e
inner join Teachers t on e.Teacher_ID = t.TeacherID;

--Multiply Inner joins
select * from Enroll_Ment
inner join Students on Enroll_Ment.Student_ID = Students.StudentID  
inner join Teachers on Enroll_Ment.Teacher_ID = Teachers.TeacherID  
inner join Courses on Enroll_Ment.Course_ID = Courses.CourseID

--Coustomise but same rule
select 
s.First_Name+' '+s.Last_Name as [Student Full Name], 
t.First_Name+' '+t.Last_Name [Teacher Full Name],
c.Course_Code [Course Code], c.Course_Title [Course Title], c.Course_credits [Course Credits]
from Enroll_Ment e 
inner join Students s on e.Student_ID = s.StudentID 
inner join Teachers t on e.Teacher_ID = t.TeacherID
inner join Courses c on e.Course_ID = c.CourseID

--Inner joins same rule apply but add conditions
select 
s.First_Name+' '+s.Last_Name as [Student Full Name], 
t.First_Name+' '+t.Last_Name [Teacher Full Name],
c.Course_Code [Course Code], c.Course_Title [Course Title], c.Course_credits [Course Credits]
from Enroll_Ment e 
inner join Students s on e.Student_ID = s.StudentID 
inner join Teachers t on e.Teacher_ID = t.TeacherID
inner join Courses c on e.Course_ID = c.CourseID
where ID=2
order by c.Course_Title;


--Left joins command: SELECT column_name(s)
					--FROM table1
					--LEFT JOIN table2
					--ON table1.column_name = table2.column_name;

select e.Teacher_ID, t.First_Name+' '+t.Last_Name as [Student Full Name], t.Date_Of_Birth [Date Of Birth]
From Enroll_Ment e
left join Teachers t on e.Teacher_ID = t.TeacherID;


--Right joins command: SELECT column_name(s)
					 --FROM table1
					 --RIGHT JOIN table2
					 --ON table1.column_name = table2.column_name;
select * 
From Enroll_Ment e
right join Teachers t on e.Teacher_ID = t.TeacherID;


--Full joins Command: SELECT table1.column1, table2.column2...
					--FROM table1
					--FULL JOIN table2
					--ON table1.common_field = table2.common_field;
select * 
From Enroll_Ment e
full join Teachers t on e.Teacher_ID = t.TeacherID;


use Mentors
Select ID, Teacher_ID, Student_ID, Course_ID, Grade
from Enroll_Ment
where Teacher_ID = 2
group by ID,Teacher_ID, Student_ID, Course_ID, Grade;

