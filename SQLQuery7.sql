use Coaching_Center

go
create view Students_Subject_Lectures as
select 
s.First_Name+' '+s.Last_Name as [Student Full Name], 
t.First_Name+' '+t.Last_Name [Teacher Full Name],
c.Course_Code [Course Code], c.Course_Title [Course Title], c.Course_credits [Course Credits]
from Enroll_Ment e 
inner join Student_Details s on e.Student_ID = s.StudentID 
inner join Teacher_Details t on e.Teacher_ID = t.TeacherID
inner join Course_Details c on e.Course_ID = c.CourseID
--where e.ID=4
--order by [Course Code];