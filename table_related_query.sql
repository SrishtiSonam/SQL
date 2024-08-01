-- Updating

update student set marks = 93 where marks = 96;
-- 0	32	09:31:03	update student set marks = 93 where marks = 96	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column. 
 -- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.016 sec 
set sql_safe_updates = 0;				-- Safe mode off 

select * from student;
select count(marks) from student;			-- 6 only 93 - 93 count twice 

-- update table_name set column1 = value1, column2 = value2 where condition;

update student set marks = 52 where rollno = 105;
update student set grade = 'C' where marks between 60 and 50;		-- no change
update student set grade = 'D' where marks between 50 and 60;		-- now write change

update student set marks = marks +1;
 
 
 -- Deleting 
 
 delete from student where marks <60;
 -- delete from student;	-- this will delete all the data of student table 
 
 -- delete from table_name where condition;
 
 
 -- Alter ( to chnage the schema - design { columns, datatypes, constraints } )

-- ADD Column    ->   Alter Table table_name Add Column column_name datatype constraint;
-- DROP Column   ->   Alter Table table_name DROP Column column_name;			--	Deletes table
-- Rename Table  ->   Alter Table table_name Rename To new_table_name;
-- Change Column ->   Alter Table table_name Change Column old_name new_name new_datatype new_constraint;
-- Modify Column ->   Alter Table table_name Modify column_name new_datatype new_constraint;


-- Truncate - Delete table's data - table exist
-- truncate table table_name; 