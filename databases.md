# Database is 
-   collection of data 
-   in a format that can be easily accessed. 
-   ( Digital Format )


# Software application used to manage our database is called DBMS (Database Management System).
- Manage means search, update, delete, addind of data.
- A layer between user and database.


# Types of databases.
- Retaional ( SQL - Data stored in tables )         -->     RDBMS
- Non-relational ( NoSQL )


# Database Structure
- A database with multiple table.
- Each table contains its own data.
- All the data is interrelated.


# Table 
- Storing data in multiple columns.
- combination of rows and columns.
- column - general stucture / schema (design)
- row tells about individuals (perticular).
- Parent table - Original Primary Key.
- Child table where foreign key is using.


# Getting the EER diagram   [ Visualisation ]
- Click on database 
- Reverse Engineer
- Select required tables 


# Cascading for FK      {   If changes are made at one place then at other places changes should be seen.   }
Changes in Parent table will reflect in child table.

1) On Delete Cascade
    -   syntax while defining   ->      on delete cascade 

2) On update Cascade 
    -   syntax while defining   ->      on update cascade 



# MySQL Views
    - A view is a virtual table based on the result set of an SQL statement.
    - Shows up-to-date data.
    - The database engine recreates the view, every time a user queries it.
    - CREATE veiw my_view as SELECT rollno, name FROM student;
    - SELECT * from my_view;
    - DROP view my_view;
    