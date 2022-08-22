--Create Database Command: create database Database_Name; [create database College;]
--Remove Database Command: drop database Database_Name [drop database College]
--Create Table Command: create table Table_Name(Rom_Name1,Rom_Name2,..); [create table Students(LastName,FirstName,DateOfBirth);]
--Use Database Command: use Database_Name; [use University;]
--Insert Data into the Table Command: insert into DataTableName(Rom_name1,Rom_Name2,....) [insert into Students(LastName,FirstName,DateOfBirth)]
--Value Date into the table Command: values('value1','value2',....) [values('Kumar','Tamal','1999-09-23','2018-01-01')]
--Select Data from Table command: select Rom1,Rom2,.... From Data_table [select * / select First_Name, Last_Name From Students]


create database University;


use University;


create table Students(

	ID int primary key identity(7713,1) not null,
	First_Name nvarchar(100) not null,
	Last_Name nvarchar(100) not null,
	Date_Of_Birth datetime not null,
	Enroll_Ment_Date datetime not null

);
create table Courses(

	Course_ID int primary key identity(1,1) not null,
	Course_Name nvarchar(50) not null,
	Course_code nvarchar(50) not null,
	Course_Title nvarchar(100) not null,
	Course_credits int

);


use University
insert into Students(First_Name,[Last_Name],[Date_Of_Birth],[Enroll_Ment_Date])
values('Tamal','Kumar','1999-12-15','2018-01-01'),
('Nabil','Hassan','1999-05-23','2018-01-01'),
('Mehedi','Hassan','1999-09-12','2018-01-01'),
('Sanjida','Mun','1998-08-22','2018-01-01')


use University
--select * from Students
--select First_Name, Last_Name from Students
select First_Name as'First Name', Last_Name [Last Name], Date_Of_Birth [Date of Birth] from Students
