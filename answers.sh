select Name from students;

select * from students
where Age > 30;

select Name from students
where Gender = "female"
And age = 30; 

select Points from students
where Name = "Alex";

insert into students values ('7','Yahya','23','M','1000');

update students
set Points = Points+100
where Name = "Basma";

update students
set Points = Points-150
where Name = "Alex";



CREATE TABLE graduates (ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                        Name TEXT NOT NULL UNIQUE,
						Age INTEGER, Gender TEXT, Points INTEGER, Graduation TEXT);

INSERT INTO graduates (ID, Name, Age, Gender, Points)
SELECT ID, Name, Age, Gender, Points FROM students
WHERE Name = "Layal";

UPDATE graduates
SET Graduation = '08/09/2018'
WHERE Name = "Layal";

DELETE FROM students 
WHERE Name = 'Layal';