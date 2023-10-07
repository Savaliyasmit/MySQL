--use classicmodels;

-- 1.logical OR 
select  * from customers where country = "usa" or country =  "france" or  country =  "poland";


-- 2.in oprator and not in  operator
--  use in
select  * from customers where country in ("usa","france","poland");
-- using not in operator emns this country not display other country display 
select * from customers where country not in ("usa","france","poland");

-- 3. logical AND operator
select * from customers where country = "france" and creditlimit = 21000;

-- 4. >= <= use for range
select * from customers where customernumber >= 100 and customernumber <=200;

-- 5. between operator
-- between only use for numeric value
select * from customers where customernumber between 100 and 200 ;
-- not between operator
select * from customers where customernumber not between 100 and 200 ;


-- like operator using for serche a pattern
-- like operator using expreesion like % mens zero,multiple,one charcter _(underscore) mens singlecharcter

-- "a%" this expression means first charcter a after otherwords
select * from customers where customername like "a%" ;
-- "%co."  this expression means first other charcter after   last charcter co. 
select * from customers where customername like "%co." ;
-- "_u% " this mens first charcter second charcter  u have display after otherwords
select * from customers where customerName like "_u%";
-- "%in_"
select * from customers where customerName like "%in_";
-- "_i__"
select * from customers where contactLastName like "_i__";
-- "%o%"
select * from customers where customerName like "%z%";
-- "A%co." mens a to co name of customername
select * from customers where customerName like "A%co.";


