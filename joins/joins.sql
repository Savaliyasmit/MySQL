-- inner join but not inner join

SELECT * FROM client_master,sales_order 
where client_master.CLIENTN0 = sales_order.CLIENTN0;

-- this inner join also write upper query 
-- 1.
select * from client_master
inner join sales_order
on client_master.CLIENTN0 = sales_order.CLIENTN0;

-- 2.
select  client_master.NAME,product_master.description,sales_order.ORDERN0 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo 

--  3.innerjoin
 select client_master.name from sales_order
 inner join client_master on sales_order.CLIENTN0 = client_master.CLIENTN0;

-- 4.left join
select  * 
from  client_master
left join  sales_order  on sales_order.CLIENTN0 = client_master.CLIENTN0;

-- 5.right join
select   client_master.name,sales_order.delydate 
from  client_master
right join sales_order  on  client_master.CLIENTN0 = sales_order.CLIENTN0 where delydate = "2002-07-26" ;

-- 6.full join
select   client_master.*,sales_order.* 
from  client_master
inner join sales_order  on  client_master.CLIENTN0 = sales_order.CLIENTN0 ;

