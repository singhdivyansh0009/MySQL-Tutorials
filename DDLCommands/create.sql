create database Bank;  /* To create the database */
use Bank; /* to use the database or change the database in which you want to work */
show tables; /* use to show the tables in CLI */

/* use to create a table in the database */
 create table Account ( 
    ac_no int primary key not null,
    name varchar(50) not null,
    balance int default 0
 );

 desc Account; /* use to show the description of table */