-- retrive /select quries




-- select all coloume
select * from client_master;

-- select spacific colums
-- A.find out client name
select name from client_master;
-- output:-
-- Ivan Bayross
-- Mamta Muzumdar
-- Chhaya Bankar
-- Ashwini Joshi
-- Hansel Colaco
-- Deepak Sharma

-- B.entire content of client_master table
select * from client_master;

-- c.filter name,city,state 
select  salesmanName,city,state  from salesman_master;
-- output:-
-- Aman	Mumbai	Maharashtra
-- Omkar	Mumbai	Maharashtra
-- Raj	    Mumbai	Maharashtra
-- Ashish	Mumbai	Maharashtra

-- d.filter productsname in product_master table
select descrption from product_master;
-- output:-
--  descrption
-- T-Shirts
-- Shirts
-- Cotton jeans
-- Jeans
-- Trousers
-- Pull Overs
-- Denim Shirts
-- Lycra Tops
-- Skirts

--e.all the clients who are located in Maharashtra
select  * from  salesman_master where state ="Maharashtra"; 

-- output:-
-- S00001	Aman	A/14	Worli	Mumbai	400002	Maharashtra	3000.00	100.00	50.00	Good
-- S00002	Omkar	65	   Nariman 	Mumbai	400001	Maharashtra	3000.00	200.00	100.00	Good
-- S00003	Raj	    P-7	   Bandra  Mumbai   400032	Maharashtra	3000.00	200.00	100.00	Good
-- S00004	Ashish	A/5	    Juhu	Mumbai   400044	Maharashtra	3500.00	200.00	150.00	Good

-- f.find names of salesman who have to salary equal to 3000
select * from salesman_master where salamt = "3000";

-- output:-
-- S00001	Aman	A/14	Worli	Mumbai	400002	Maharashtra	3000.00	100.00	50.00	Good
-- S00002	Omkar	65	Nariman 	Mumbai	400001	Maharashtra	3000.00	200.00	100.00	Good
-- S00003	Raj	P-7	Bandra	Mumbai	400032	Maharashtra	3000.00	200.00	100.00	Good

