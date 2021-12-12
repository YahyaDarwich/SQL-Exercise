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
