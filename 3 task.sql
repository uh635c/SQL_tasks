use module21;

create table if not exists EmployeeRev1(
Id int,
Name varchar(255),
Salary int,
ManagerId int);

truncate table employeerev1;

insert into employeerev1 (Id, Name, Salary, ManagerId)
values (1, 'Joe', 70000, 3);

insert into employeerev1 (Id, Name, Salary, ManagerId)
values (2, 'Henry', 80000, 4);

insert into employeerev1 (Id, Name, Salary, ManagerId)
values (3, 'Sam', 60000, null);

insert into employeerev1 (Id, Name, Salary, ManagerId)
values (4, 'Max', 90000, null);

select te.Name 
from employeerev1 as te, employeerev1 as tm
where te.Salary > tm.Salary and te.ManagerId = tm.Id;
