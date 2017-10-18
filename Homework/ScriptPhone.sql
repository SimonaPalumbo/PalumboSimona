#if it exists
drop database if exists Phone;
#if not exists Phone, I create the database
create database if not exists Phone
	default character set latin1
	default collate latin1_general_ci;

use Phone;
#Modify type of the table
alter database Phone 
	default character set utf8
	default collate utf8_unicode_ci;

drop table if exists country;
create table if not exists country(
	code varchar (2) primary key,
    name varchar (32) not null
    );

#creation another table and if it exists, it destroy its.
drop table if exists brand;
create table if not exists Brand (
	id int (11) not null auto_increment primary key,
    name varchar (32) not null,
    country varchar (2) not null,
    foreign key (country) references country(code) 
    );
    


    
drop table if exists opsys;
create table if not exists opsys (
	id int (11) primary key,
    description varchar (64) not null,
    company varchar (64) not null,
    openSource tinyint (1) not null
    );
    

    
drop table if exists smartphone;
create table if not exists smartphone (
	id int (11) primary key,
    name varchar (64) not null,
    ram varchar (5) not null,
    cpu varchar (64) not null,
    displayPpi int (11) not null,
    displaySize varchar (12) not null,
    displayResolution varchar (64) not null,
    size varchar (64) not null,
    weight int (4) not null,
    notes varchar (1024) not null,
    brand int (11) not null,
    opSys int (11) not null,
	foreign key (brand) references brand(id),
    foreign key (opSys) references opsys(id)
    );
    
