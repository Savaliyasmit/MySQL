-- a.find out products,which have been sold to "ivan bayross"
select  client_master.NAME,product_master.description,sales_order.ORDERN0 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where = "ivan bayross";

-- b.find out the products and their quantites that will have to be deliverd in the current month.
select  sales_order.DELYDATE,product_master.description,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where delydate = "2002-06-27" ;
 
--c.list the productno and description of constantly sold (i.e. rapidly moving);
select  distinct product_master.productno,description  
from sales_order_details 
inner join  product_master on sales_order_details.productNo = product_master.productNo ;

--d.find the names of clients who have purchased trousers
select client_master.name , product_master.description 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
inner join  product_master on sales_order_details.productNo = product_master.productNo where description = "trousers";

-- e.list of the products and orders from customers who have ordered less than 5 units of "pull overs"
select client_master.name , product_master.description ,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
inner join  product_master on sales_order_details.productNo = product_master.productNo where qtyordered < 5 and description ="pull overs";

-- f.find the products and their quantities for ther orders placed by "ivan byross" and "mamta muzumdar"
select client_master.name , product_master.description ,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
inner join  product_master on sales_order_details.productNo = product_master.productNo where name  in ("Ivan bayross" ,"mamta muzumdar");

-- find the products and their quantites for the orders placed by clientno "c00001" and "c00002"
select client_master.CLIENTN0 , product_master.description ,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
inner join  product_master on sales_order_details.productNo = product_master.productNo where client_master.clientn0 in ("c00001" ,"c00002");
