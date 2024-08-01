/* Single record insertion */
insert into Account (ac_no,name,balance)   /*use it if you don't know the sequence of coloumn*/
                    value (101,"Raju",1000);
insert into Account value (101,"Raju",1000);   /*use it if you know the sequence of coloumn*/

/* Multiple record insertion */
insert into Account (ac_no,name,balance)
                  value   (102,"Ram",2000),
                          (103,"Rock",2000),
                          (104,"Jhon",2000);