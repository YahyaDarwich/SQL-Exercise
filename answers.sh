# Exercise 1
# 1
select Name from students;

# 2
select * from students
where Age > 30;

# 3
select Name from students
where Gender = 'F'
And age = 30; 

# 4
select Points from students
where Name = 'Alex';

# 5
insert into students values ('7','Yahya','23','M','1000');

# 6
update students
set Points = Points+100
where Name = 'Basma';

#7
update students
set Points = Points-150
where Name = 'Alex';



# Exercise 2
# 1
CREATE TABLE graduates (ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                        Name TEXT NOT NULL UNIQUE,
						Age INTEGER, Gender TEXT, Points INTEGER, Graduation TEXT);

INSERT INTO graduates (ID, Name, Age, Gender, Points)
SELECT ID, Name, Age, Gender, Points FROM students
WHERE Name = 'Layal';

# 2
UPDATE graduates
SET Graduation = '08/09/2018'
WHERE Name = 'Layal';

# 3
DELETE FROM students 
WHERE Name = 'Layal';




# Exercise 3
# 1 (1st solution)
SELECT employees.Name, companies.Name, companies.Date
FROM employees, companies
WHERE employees.Company = companies.Name;
# 1 OR create a table (2nd solution)
CREATE TABLE EmployeesHistory AS
SELECT employees.Name, companies.Name, companies.Date
FROM employees, companies
WHERE employees.Company = companies.Name;
# 1 OR Using INNER Join (3rd solution)
SELECT employees.Name, companies.Name, companies.Date
FROM employees
INNER JOIN companies
ON employees.Company = companies.Name;

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



# Exercise 4
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