drop database Bank;  /* use to delete the data base */
drop table Account; /* use to delete the table */

truncate table Account; /*use to delete all data of the table not table itself*/

alter table Account add opening_date Date; /* use to add coloumn in the table */
alter table Account drop opening_date; /*use to delete the coloumn */
alter table Account modify opening_date DateTime; /* use to modify the coloumn */
