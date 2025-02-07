-- Join clause are used to combine data of two and more tables on the basis of some feild

-- Inner join : It returns the data that are common in both the table on some field that are mentioned.
select* from student join department on student.dept_id = department.dept_id;
