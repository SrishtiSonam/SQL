-- Creating the database
Create database db1; 
create database if not exists db2;			-- warning not error	


-- Droping / Deleting a database
Drop database if exists db2;


-- Getting all databases
show databases;


-- Using a database
Use db1;


-- Getting all tables in a database
show tables;


-- Creating a Table and defining it schema
-- create table table_name (column_name_n datatype constraint{not complusory}, ... );
-- datatype -> int, varchar
-- constraint -> primary key{not null+unique}, not null
create table mytable (
	col1 int primary key,
    col2 varchar(50),
    col3 int not null
);


-- Inserting data in table
-- insert into table_name values (value1, value2, value3);		->		Same as column
-- table_name - case sensitive
insert into mytable values (1, 'name1', 25);
insert into mytable values (2, 'name2', 24);
insert into mytable values (3, 'name3', 23), (4, 'name4', 22);
-- insert into table_name (col1, col3, col2, ..) values (val1, val3, val2, ..);			-> 			Defining the data order
insert into mytable (col2, col1, col3) values ('name5', 5, 21), ('name6', 6, 28);

-- ** Check wrong order without column name with different datatypes **  


-- Getting the data from the table
-- select column_names from table_name where condition; 
select * from mytable;
select col2, col3 from mytable;


-- Droping or deleting table
drop table mytable;
drop table table1;
drop table table2;


-- Syntax for FK
create table table2 (
    table2_id int primary key,
    category varchar(30)
    -- foreign key (here_col) references other_table(other_table_col) 
);
insert into table2 values (18, "Adult"), (8, "Child"), (15, "teenager"), (25, "Adult");


alter table table2 add column access char(1) default 'Y';
alter table table2 drop column access;


alter table table2 rename to age_table;
select * from age_table;
alter table age_table rename to table2;
select * from table2;


alter table table2 modify category char(50) not null;
alter table table2 change column category groups_category varchar(50) not null; 
desc table2;


update table2 set table2_id = table2_id +1;
-- data updated in both the tables 


-- Another syntax for PK
create table table1 (
    table1_id int, name varchar(20), age int, city varchar(30),
    primary key (table1_id, name),
    foreign key (age) references table2(table2_id)
    On update cascade
    On delete cascade
);
insert into table1 values (1, 'riya', 18, "delhi"), (2, 'piya', 8, "mumbai"), (3, 'jiya', 15, "pune"), (4, 'iya', 25, "delhi");


-- Syntax for Default
create table table3 (
    table3_id int primary key,
    salary int default 25000
    -- Col_name datatype default default_value;
);


-- Syntax for Constraints
create table table4 (
    table4_id int primary key, city varchar(50), age int,
    constraint check_1 check (age>=18 AND city="Delhi")
);
create table table5 (
    age int check (age>=18)
);