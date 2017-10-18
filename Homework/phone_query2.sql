#1 Select name and brand of all smartphones in the database;
select name, brand from smartphone;

#2 Select name and opSys of all smartphones in the database sorted by opSys, name; 
select name, opSys from smartphone
order by opSys, name;

#3 Select name and opSys of all Android smartphones in the database descendant sorted by weight;
select a.name, a.opSys 
from smartphone as a inner join opsys as b 
on a.opSys = b.id
where b.description like 'Android%'
order by a.weight desc;

#4 Select name, brand, country of all smartphones in the database sorted by country, brand, name;
select a.name, a.brand, a.country 
from smartphone as a inner join brand as b
on a.brand = b.id
order by a.country, a.brand, a.name;

#5 Select count of smartphones in the database with 3Gb ram;
select count(*) as count from smartphone
order by ram like '3Gb%';

#6 Select count of smartphones for each opSys in the database;
select count(a.id) as count from smartphone as a
inner join opsys as b on a.opSys = b.id
group by b.description;

#7 Select count of smartphones for each country in the database;
select count(a.id) as count, c.name  from smartphone as a
inner join brand as b on a.brand=b.id
inner join country as c on b.country=c.code
group by c.name;