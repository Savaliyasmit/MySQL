create table practice(
empid   varchar(10),
empname  varchar(10),
empsalary  int(20),
emptime    varchar(15)
);
insert into practice(
empid ,
empname , 
empsalary , 
emptime 
) 
values
("10001","smit",25000,"8 hours"),
("10002","milan",30000,"24 hours"),
("10003","sandip",900,"1 days"),
("10004","jinesh",60000,"2days");

-- database fire delete and drop querys
-- delete specefic colums
delete  from  practice  where empid  ="10001"; 

-- delete all records but table not delete
delete from practice ;


--drop database
drop database sys;

--drop table 
drop table practice;