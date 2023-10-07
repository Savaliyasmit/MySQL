-- count all table row in database
select count(*) from customers;

-- max  value  credit on credit limit colume 
select max(creditlimit) from customers;

-- min value low of credit on credit limit colume
select min(creditlimit) from customers ;

--  sum  of value in creditlimit colume
select sum(creditlimit) from customers;

-- avg of value in creditlimit colume
select avg(creditlimit) from customers ;

-- how many country of records 
select  country,count(*) as "total records" from customers group by country;