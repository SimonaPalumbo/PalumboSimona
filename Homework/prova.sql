select a.name, a.surname, b.*
from user as a inner join smartphone as b
on a.id=b.id
where a.name like '%Francesco%';