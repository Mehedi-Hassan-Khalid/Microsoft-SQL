SELECT 
dbo.Student_Details.First_Name AS [Student First Name], dbo.Student_Details.Last_Name AS [Student Last Name], 
dbo.Teacher_Details.First_Name AS [Teacher First Name], dbo.Teacher_Details.Last_Name AS [Teacher Last Name], 
dbo.Course_Details.Course_Code AS [Course Code], dbo.Course_Details.Course_Title AS [Course Title]
FROM dbo.Course_Details 
INNER JOIN dbo.Enroll_Ment ON dbo.Course_Details.CourseID = dbo.Enroll_Ment.Course_ID 
INNER JOIN dbo.Student_Details ON dbo.Enroll_Ment.Student_ID = dbo.Student_Details.StudentID 
INNER JOIN dbo.Teacher_Details ON dbo.Enroll_Ment.Teacher_ID = dbo.Teacher_Details.TeacherID



select 
s.First_Name+' '+s.Last_Name as [Student Full Name], 
t.First_Name+' '+t.Last_Name [Teacher Full Name],
c.Course_Code [Course Code], c.Course_Title [Course Title], c.Course_credits [Course Credits]
from Enroll_Ment e 
inner join Student_Details s on e.Student_ID = s.StudentID 
inner join Teacher_Details t on e.Teacher_ID = t.TeacherID
inner join Course_Details c on e.Course_ID = c.CourseID