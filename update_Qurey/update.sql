-- update:-- the update statment is used to modify the existing records in table.
-- syntax:- update table_name set column1 = value , where conditions;

    -- a.change the city of clientno 'c00005' to 'banglore'
    update  client_master set city = "bangalore" where clientno = "c00005";

    --b.change the baldue of clientno "c00001" to Rs.1000
    update client_master set  baldue = 1000 where clientno = "c00001";

    --c.change the cost price of 'Trousers' to Rs.950
    update product_master set costprice = 950 where descrption = "Trousers";
  
    --d.change city of the salesman to pune mens all have change
    update salesman_master set city = "Pune" ;

    update product_master set ProfitPercent = 2.5 where productN0 = "p00001";