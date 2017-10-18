#select all of table = user and name of smartphone and to press
select a.* , b.name
from user as a inner join smartphone as b
on a.id=b.id
where a.personalSmartphone
order by a.name, a.surname asc;

#set name surname of table = user
update user
	set name='Annibale', surname = 'Mastrociccio'
    where id = 6;
    
#set name and ram of table=smartphone
update smartphone
	set name='Huawei p9 lite', ram='3Gb'
    where id = 8;
    
#select name and surname of table = user, also select all of table=smartphone and to group name =Francesco
select a.name, a.surname, b.*
from user as a inner join smartphone as b
on a.id=b.id
where a.name like 'Francesco%';

