/* customer table creation statement */
create table customer(
    customer_id int primary key,   
    customer_name varchar(255) not null, 
    customer_email varchar(255) unique, 
    age int check(age >= 18),  
    country varchar(30) default "India",
    salary int not null
);
/* Indexes : Indexes are used to optimize the searching process of the data.
   -> Ex: let we have large amount of data in the customer table 
          and want to retrive the data whose salary is greater than 1000
          if we try it without making the index for the salary column  it will 
          take more time O(n). 
*/
/* Creating an index for salary */
create index idx_salary on customer (salary);

/* 
   Now if i want to retrive the data whose salary is greater than 1000
   the execution time will be less because :
      - salaries will be ordered in the indexes
      - salaries are along with pointer to its row
      - so O(log n) time is used
*/

/* Deletion of the indexes */
Drop index idx_salary on customer;
/* or */
alter table customer drop index idx_salary;

/*renaming of the indexes */
alter table customer rename index idx_salary to idxOfSalary;
