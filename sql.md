### Structured Query Language


## SQL
- programming language 
- used to interact with relational databases.
- It is used to perform CRUD operation.

## SEQUEL 
- Structured English Query Language
- IBM (company) made this 


## Types of SQL Commands

1. DDL - (Data Definition Language) : create, alter, rename, truncate and drop 
2. DQL - (Data Query Language) : select 
3. DML - (Data Manipulation Language) : insert, update and delete
4. DCL - (Data Control Language) : grant and revoke permissions to users
5. TCL - (Transaction Control Language) : start transaction, commit, rollback 


## Keys 

1. Primary Key 
    - Column or set of columns
    - uniquely identifies each row
    - Only one key
    - Not Null 

2. Foreign Key
    - Refers to the primary key of other table
    - Multiple FK in a table
    - Can have duplicate and NULL values


## Constraints  -   Specify rules for data in table

1. NOT NULL
2. UNIQUE
3. Primary Key
4. Foreign Key
5. Default 
6. Constraints - Some specific condition


## Commands

1. Select in detail
    -   distinct
    -   columns,...
    -   where clause (condition)    { multiple clauses one of them is where }
            a. Arithmetic operators: +, -, *, /, %
            b. Comparison operators: =, !=, >, >=, <, <=
            c. Logical operators: and, or, not(negate), in, between, all, like, any
            d. Bitwise operators: &(Bitwise And), |(Bitwise Or)
    -   limit clause - limit the number of rows.
    -   order by clause - { asc-ascending (increasing fashion), desc- descending (decreasing fashion) }
    -   group by clause - Group rows that have same values into summary rows.
                        - Collects data from multiple records and groups the result by one or more column.
                        - Generally used with aggregrate function.
    -   having clause - defining conditions for grouping. 
                //  Getting the city which cross 90 maximum marks.
                select count(marks) , city from student group by city having max(marks) > 90;
                    2	Mumbai
                    3	Delhi
                {   Not showing the data for pune as no marks>90 one student from delhi and mumbai has marks>90 }

2. Aggregate Functions
    -   Perform calculation on a set of values, and return a single value.
    -   Count() - number of results / rows it get
                    select count(marks) from student;       -       6   -   no of students
    -   Max() - 
                    select max(marks) from student;         -       96  -   marks
    -   Min()
                    select min(marks) from student;         -       12  -   marks
    -   Sum()
                    select sum(marks) from student;         -       446 -   marks
    -   Avg()
                    select avg(marks) from student;         -       74.3333 -   marks 
    
    select * from student where marks>avg(marks);       -       Error


General Order -->
    Select column(s)
    From table_name
    Where condition
    Group By column(s)
    Having condition
    Order By column(s) Desc;