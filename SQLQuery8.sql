SELECT        dbo.Student_Details.First_Name AS [First Name], dbo.Student_Details.Last_Name AS [Last Name], dbo.Course_Details.Course_Code AS [Course Code], dbo.Course_Details.Course_Title AS [Code Title]
FROM            dbo.Course_Details INNER JOIN
                         dbo.Enroll_Ment ON dbo.Course_Details.CourseID = dbo.Enroll_Ment.Course_ID INNER JOIN
                         dbo.Student_Details ON dbo.Enroll_Ment.Student_ID = dbo.Student_Details.StudentID


Select *
from Student_Course;


select *
from Students_Subjects_Lectures
where [Course Code] = 'CSI-102'
order by [Course Title];

--Rename Database Command: exec sp_rename 'Old_Database_Name', 'Update_Database_Name'
exec sp_rename 'Student_Course', 'Students_Courses'


--Scalar Valued Functions:

use Coaching_Center
select GETDATE();
select year(getdate());

use Coaching_Center
select dbo.getHighestgrade()


