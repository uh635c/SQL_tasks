show databases;
create database module16;
use module21;

create table Person (
PersonID int,
FirstName varchar(255),
LastName varchar(255)
);

create table Address(
AddressID int,
PersonID int,
City varchar(255),
State varchar(255)
);
truncate table Person;

insert into Person (PersonID, FirstName, LastName)
values (1, 'Wang', 'Allen');

truncate table Address;

insert into Address (AddressID, PersonID, City, State)
values (1, 2, 'New York City', 'New York');

select FirstName, LastName, City, State
from Person 
inner join Address
on Person.PersonID = Address.PersonID;

