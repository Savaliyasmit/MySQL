-- =,<,>,<=,>=,<>(not equal),between,like,in

-- 1.=
select * from client_master where  baldue = "0";

--2.< - lessthan and > - graterthan
select * from product_master where  costprice > 400;     --that mens costprice bigger than 400 
select * from product_master where  costprice < 400;     --that mens costprice less than 400 

--3.<= and >=
select * from product_master where  costprice >= 500; --that =500 add in result
select * from product_master where  costprice <= 300; --that =300 add in result

-- 4.<>not equal  otherwise use !=
-- that mens  "maharashtra"  above all state display in database
select * from client_master where  state <> "maharashtra"; 

-- 5.between and AND  mens range 
-- use AND for range
select * from product_master where sellprice between 100 and 500; 

-- 6.like  search pattern sname of city
-- start search first word m 
select * from client_master where state like  "m%";
-- start search last word a
select * from client_master where state like  "%a";
--also use in number
select * from client_master where baldue like  "1%";

-- 7.in To specify multiple possible values for a column
select * from client_master where state in ("maharashtra" ,"karnataka");
--also use in number
select * from client_master where baldue in ("15000","0");




