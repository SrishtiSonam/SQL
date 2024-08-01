# Join is used to combine rows from two or more tables
# Based on a related column between them.


## Types of Join

1) Inner Join - Common between both the tables.
              - Returns records that have matching values in both tables.
              - select cols 
                from tableA as A
                inner join 
                tableB as B on 
                A.col_na = B.col_me;  
                (   Name can be different but data should be same   )
                [   alias  -  alternate name  -  as used in syntax  -  not neccessary  ]
                (   if we use * then get col_na / col_me twice   )

        { All the below are outer joins     [ 2-4 ]    }

2) Left Join - Whole left table including the common portion.
             - Returns all records from the left table and the matched records from the right table.
             - select cols 
                from tableA 
                left join tableB 
                on tableA.col_name = tableB.col_name;

3) Right Join - Whole right including the common portion.
              - Returns all records from the right table and the matched records from the left table.
              - select cols 
                from tableA 
                right join tableB 
                on tableA.col_name = tableB.col_name;

4) Full Join - All the portion of both the tables.
             - Returns records when there is a match in either left or right table.
             - LEFT JOIN UNION RIGHT JOIN
             - select cols from tableA as A
               left join tableB as B
               on A.col_name = B.col_name
               UNION
               select cols from tableA as A
               right join tableB as B
               on A.col_name = B.col_name
             - In other sql like oracle full join or full other join exist.


5) Left Exclusive Join - Only left not right
            -   Select cols
                from TableA as A 
                LEFT JOIN 
                TableB as B 
                on A.col_A = B.col_B
                WHERE B.col_B IS NULL; 

6) Right Exclusive Join - Only right not left
            -   Select cols
                from TableA as A 
                RIGHT JOIN 
                TableB as B 
                on A.col_A = B.col_B
                WHERE A.col_B IS NULL; 

7) Full Exclusive Join - All portion except common part
            -   Select cols
                from TableA as A 
                LEFT JOIN 
                TableB as B 
                on A.col_A = B.col_B
                WHERE B.col_B IS NULL
                UNION
                Select cols
                from TableA as A 
                RIGHT JOIN 
                TableB as B 
                on A.col_A = B.col_B
                WHERE A.col_B IS NULL;

8) Self Join - Regular Join - Inner Join
            -   Select column 
                from table as A
                JOIN table as B
                ON A.col_name = B.col_name;
    Eg: select a.name as manager_name, b.name from 
            employee as a JOIN employee as b 
            on a.id = b.manager_id;


# Union 
    - no. of columns should be same 
    - cols must have similar data type
    - cols should have same order
    select cols from tableA 
        UNION
    select cols from tableB;


# SQL Sub Queries   -   Inner Queries   -   Nested Queries  -   Query within another SQL query
    - It involves 2 select statements.
    -   select cols 
        from table_name 
        where col_name 
        operator
        ( subquery );
    - Students who scored more than class avg
        select * from student where marks > (select avg(marks) from student);       [ Dynamic Query ]
    - Name of students with even roll number
        select * from student where rollno % 2 = 0; 
        select name, rollno from student where rollno IN ( select rollno from student where rollno % 2 = 0 );
    - Find the max marks from the students of delhi
        select MAX(marks) from (select * from student where city = 'Delhi') as temp_table;
        select Max(marks) from student where city = "Delhi";
    - Select (select max(marks) from students ), names from student;