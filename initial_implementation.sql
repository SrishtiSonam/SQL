create database if not exists college;

use college;

create table student (
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade char(1),
    city varchar(20)
);

insert into student 
( rollno, name, marks, grade, city)
values 
(101, 'anil', 78, 'C', "Pune");

insert into student 
( rollno, name, marks, grade, city)
values 
(102, 'bhumika', 96, 'A', "Mumbai"),
(103, 'chetan', 85, 'B', "Mumbai"),
(104, 'dhruv', 93, 'A', "Delhi"),
(105, 'emanuel', 12, 'F', "Delhi"),
(106, 'farah', 82, 'B', "Delhi");

select * from student;

select name, marks from student;
select distinct city from student;

select * from student where marks>=80;
select * from student where city = "mumbai";		
select * from student where city = "mumbai" or marks>=90;	
select * from student where marks+10>100;
select * from student where marks between 70 and 90;
select * from student where city in ("delhi", "mumbai");
select * from student where city not in ("delhi", "mumbai");

select * from student limit 3;
select * from student where marks>75 limit 3;

select * from student order by marks;
select * from student order by city asc;
select * from student order by marks desc;
select name from student order by marks desc limit 3;

select count(marks) from student;
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;
select avg(marks) from student;
select * from student where marks>avg(marks);

-- select *, column_not_used_in_groupBy_without_aggregate_function from student group by city; 			-			Error
select city, avg(marks) from student group by city order by avg(marks) desc;		
select city, max(marks) from student group by city;		
select city, name, count(city) from student group by city, name;	
select grade, count(name) as no_of_students from student group by grade order by grade; 

-- select count(marks) , city from student group by city having marks > 75;
select count(marks) , city from student where marks > 75 group by city;
select count(marks) , city from student group by city having max(marks) > 90;

select city from student where grade = 'A' group by city having max(marks)>= 93 order by city desc;