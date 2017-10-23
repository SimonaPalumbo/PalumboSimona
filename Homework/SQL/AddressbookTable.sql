#create database of Rubrica and if it is exists, it destroy and it create
drop database if exists Addressbook;
create database if not exists Addressbook
	default character set utf8
	default collate utf8_unicode_ci;
    
use Addressbook;

#create table country
drop table if exists Country;
create table if not exists Country(
	code varchar (2) primary key,
    name varchar (32) not null
    );
    
#create table opsys
drop table if exists opsys;
create table if not exists opsys (
	id int (11) primary key,
    description varchar (64) not null,
    company varchar (64) not null,
    openSource tinyint (1) not null
    );

#creation another table and if it exists, it destroy its.
drop table if exists Brand;
create table if not exists Brand (
	id int (11) not null auto_increment primary key,
    name varchar (32) not null,
    country varchar (2) not null,
    foreign key (country) references country(code) 
    );
    
#create table smartphone and id is primary key
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
    brand int (11) not null references brand (id),
    opSys int (11) not null references opsys (id)
	);
    

#create table User
drop table if exists User;
create table if not exists User(
	id int (11) primary key,
	name varchar (10) not null,
    surname varchar (10) not null,
    dateBirth date not null,
    placeBirth varchar (20) not null,
    nCell varchar (10) not null,
    nPhone varchar (10),
    email varchar (30) not null,
    personalSmartphone int (11) references smartphone (id)
    );
    
