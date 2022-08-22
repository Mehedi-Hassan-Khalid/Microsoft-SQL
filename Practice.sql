--Create Database Command: create database Database_Name; [create database College;]
--Remove Database Command: drop database Database_Name [drop database College]
--Create Table Command: create table Table_Name(Rom_Name1,Rom_Name2,..); [create table Students(LastName,FirstName,DateOfBirth);]
--Use Database Command: use Database_Name; [use University;]
--Insert Data into the Table Command: insert into DataTableName(Rom_name1,Rom_Name2,....) [insert into Students(LastName,FirstName,DateOfBirth)]
--Value Date into the table Command: values('value1','value2',....) [values('Kumar','Tamal','1999-09-23','2018-01-01')]



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


use College
insert into Students(LastName,[FirstName],[DateOfBirth],[EnrollMentDate])
values('Kumar','Tamal','1999-09-23','2018-01-01'),
('Hassan','Nabil','1999-06-11','2018-01-01'),
('Hassan','Mehedi','1999-09-12','2018-01-01'),
('Mun','Sanjida','1999-09-23',null)