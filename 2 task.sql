use module21;

create table if not exists Employee (
id int,
Salary int
);

truncate table Employee;

insert into Employee (Id, Salary)
values (1, 100);

insert into Employee (Id, Salary)
values (2, 200);

insert into Employee (Id, Salary)
values (3, 300);

select max(Salary) as SecondHighestSalary
from Employee
where Salary != (select max(Salary) from Employee);