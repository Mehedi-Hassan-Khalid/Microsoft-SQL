create database School;



use School;



create table Student(

	ID nvarchar(50) primary key not null,
	First_Name nvarchar(100) not null,
	Last_Name nvarchar(100) not null,
	Date_Of_Birth datetime not null,
	Enroll_Ment_Date datetime not null

);
create table Teacher(

	ID nvarchar primary key not null,
	First_Name nvarchar(100) not null,
	Last_Name nvarchar(100) not null,
	Date_Of_Birth datetime not null,
	Joined_Date datetime not null

);
create table Course(

	Course_ID int primary key not null,
	Course_code nvarchar(50) not null,
	Course_Title nvarchar(100) not null,
	Course_credits float

);


use School
insert into Student(ID,[First_Name],[Last_Name],[Date_Of_Birth],[Enroll_Ment_Date])
values('CSE-066-7713','Tamal','Kumar','1999-12-15','2018-01-01'),
	  ('CSE-066-7714','Nabil','Hassan','1999-05-23','2018-09-01'),
	  ('CSE-066-7715','Mehedi','Hassan','1999-09-12','2018-01-01'),
	  ('CSE-066-7716','Sanjida','Mun','1998-08-22','2018-05-01'),
	  ('CSE-066-7717','Sadiya','Jahan','2002-06-12','2021-01-01'),
	  ('CSE-066-7718','Rakib','Hasan','1997-04-11','2020-09-01'),
	  ('CSE-066-7719','Sumon','Ghosh','1999-07-17','2019-01-01'),
	  ('CSE-066-7720','Saif Uddin','Foysal','1996-03-02','2017-05-01')