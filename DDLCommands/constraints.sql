/* constraint are used to specify the rules for the data to be inserted in table */
/* it can be used when we create or alter the table */
create table customer(
    customer_id int primary key,   /* primary key constraint : value should be unique and not null */
    customer_name varchar(255) not null, /* not null constraint : value cannot be null */
    customer_email varchar(255) unique, /* unique constraint : value should be unique */
    age int check(age >= 18),  /* check : check for the condition */
    country varchar(30) default "India" /* default : set default value if not inserted */
);

/* we can apply multiple contraint by creating constraint variable */
create table customer(
    customer_id int primary key,   
    customer_name varchar(255) not null,
    customer_email varchar(255), 
    age int, 
    country varchar(30) default "India",
    constraint check_customer check(age >= 18),unique(customer_email)  
);

/* foreign key constraint made relations between two tables */
/* values of this can be duplicate but should be from parent table primary key */
create table order(
    order_id int primary key,
    customer_id int ,
    order_date date ,
    foreign key(customer_id) references customer(customer_id)  
);