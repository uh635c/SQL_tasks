use module21;

create table if not exists Customers (
id int,
Name varchar(255)
);

create table if not exists Orders (
id int,
CustomerId int
);

truncate table Customers;

insert into Customers (id, Name)
values (1, 'Joe');

insert into Customers (id, Name)
values (2, 'Henry');

insert into Customers (id, Name)
values (3, 'Sam');

insert into Customers (id, Name)
values (4, 'Max');

truncate table Orders;

insert into Orders (id, CustomerId)
values (1, 3);

insert into Orders (id, CustomerId)
values (2, 1);

select Customers.Name
from Customers
Left join Orders
on customers.id = orders.CustomerId
where Orders.id is null;

