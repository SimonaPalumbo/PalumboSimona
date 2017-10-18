#1 Select all smartphones in the database;
select * from smartphone;

#2 Select all smartphones in the database with projection: name, ram, size and cpu;
select name, ram, size, cpu from smartphone;

#3 Select name of smartphones with display resolution equal to 1080x1920
select name from smartphone
where displayResolution = "1080x1920";

#4 Select name of smartphones with display resolution equal to 1080x1920 and 3Gb ram
select name from smartphone
where displayResolution = "1080x1920" AND ram like '3Gb%';

#5 Select all Galaxy smartphones
select * from smartphone
where name LIKE 'Galaxy%';

#6 Select all Galaxy smartphones with dual-core cpu
select name from smartphone
where cpu like '%dual-core%' and name LIKE 'Galaxy%';

#7 Select all smartphones with weight greater than or equal 150 grams
select * from smartphone
where weight >= 150;

#8 Select all smartphones with weight less than 150 grams
select * from smartphone
where weight <150;

#9 Select all smartphones sorted by display pp
select * from smartphone 
order by displayPpi;

#10 Select all smartphones descendant sorted by display ppi;
select * from smartphone
order by displayPpi desc;

