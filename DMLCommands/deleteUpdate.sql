-- delete command is used to delete record (rows) from the table
delete from Account where ac_no = 102; -- use to delete particular data 

-- delete all data from the table
delete from Account; 
-- or
delete * from Account;
-- Note :  above command and trucate command do same thing like delete all records
        -- but trucated data cannot be rollback but deleted can be

-- update command is used to modify the records of the table
update Account set balance += 10 where name = "Rita";  
-- if we donot use the where clause all the data will be updated of that 
-- particular coloumn for which we are setting the value
update Account set balance += 10;