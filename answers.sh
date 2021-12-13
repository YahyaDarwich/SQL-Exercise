select Name from students;

select * from students
where Age > 30;

select Name from students
where Gender = 'F'
And age = 30; 

select Points from students
where Name = 'Alex';

insert into students values ('7','Yahya','23','M','1000');

update students
set Points = Points+100
where Name = 'Basma';

update students
set Points = Points-150
where Name = 'Alex';



CREATE TABLE graduates (ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                        Name TEXT NOT NULL UNIQUE,
						Age INTEGER, Gender TEXT, Points INTEGER, Graduation TEXT);

INSERT INTO graduates (ID, Name, Age, Gender, Points)
SELECT ID, Name, Age, Gender, Points FROM students
WHERE Name = 'Layal';

UPDATE graduates
SET Graduation = '08/09/2018'
WHERE Name = 'Layal';

DELETE FROM students 
WHERE Name = 'Layal';


# 1
SELECT employees.Name, companies.Name, companies.Date
FROM employees, companies
WHERE employees.Company = companies.Name;
# OR create a table with this 2nd solution
CREATE TABLE EmployeesHistory AS
SELECT employees.Name, companies.Name, companies.Date
FROM employees, companies
WHERE employees.Company = companies.Name;

# 2
SELECT employees.Name
FROM employees, companies
WHERE employees.Company = companies.Name
And companies.Date < 2000;

# 3
SELECT companies.Name
FROM employees, companies
WHERE employees.Company = companies.Name
And employees.Role = "Graphic Designer";




# 1
SELECT Name
FROM students
WHERE Points = ( SELECT max(Points)
                 FROM students );

# 2
SELECT avg(Points) AS Average
FROM students;

# 3
SELECT count(Points) AS Number
FROM students
WHERE Points = 500;

# 4
SELECT Name
FROM students
WHERE Name like '%s%';

# 5
SELECT Name 
FROM students
ORDER BY Points DESC;