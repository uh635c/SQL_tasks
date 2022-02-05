use module21;

create table if not exists PersonRev1(
Id int,
Email varchar(255)
);

truncate table PersonRev1;

insert into personrev1(Id, Email)
values (1, 'a@b.com');

insert into personrev1(Id, Email)
values (2, 'c@b.com');

insert into personrev1(Id, Email)
values (3, 'a@b.com');

select Email
from personrev1
group by Email
having count(Email)>1;