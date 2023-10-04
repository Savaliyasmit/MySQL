-- \sql

-- \connect root@localhost:3306

-- show databases;

-- create database CLIENT_MASTER;

-- use CLIENT_MASTER;

-- show tables;
 
--   Create a columns name , datatype , size

-- that is incase sensative

-- 1.Cilent_Master
create table CLIENT_MASTER(
     CLIENTN0 varchar (10),
     NAME     varchar (20),
     ADDRESS1 varchar (30),
     ADDRESS2 varchar (30),
     CITY     varchar (15),
     Pincode  int      (15),
     STATE    varchar (15),
     BALDUE   int (15)
    );

-- select *from client_master;

insert into CLIENT_MASTER(
    CLIENTN0,
    NAME,
    ADDRESS1,
    ADDRESS2,
    CITY,
    Pincode,
    STATE,
    BALDUE
) values ("C00001","Ivan Bayross","A-6 royal plaza","kamnavala chamber" ,"Mumbai", 400054 ,"Maharashtra" ,15000),
         ("C00002" ,"Mamta Muzumdar","A-9 nonstreet","goldan temple","Madras", 780001," Tamil Nadu" ,0),
         ("C00003" ,"Chhaya Bankar", "A-10 royal plaza","kamnavala chamber","Mumbai" ,400057 ,"Maharashtra" ,5000),
         ("C00004" ,"Ashwini Joshi" ,"A-12 new circle","near tower","Bangalore" ,560001 ,"Kamataka", 0),
         ("C00005", 'Hansel Colaco',"A-60 silver" ,"near zoo beach",' Mumbai', 400060, 'Maharashtra' ,2000),
         ('C00006' ,'Deepak Sharma',"A-80 balaji","near gandhi tower",'Mangalore' ,560050 ,'Karnataka' ,0);
        

-- 2.product master
-- make a colums with datatype and size
create table product_master(
    productN0  varchar(6),
    descrption  varchar (15),
    ProfitPercent float(4,6),
    UnitMeasure  varchar (10),
    QtyOnHand   int (8),
    ReorderLv1    int (8),
    sellPrice    int(8),
    costPrice    int(8)
 );

--  insert into table first select columns when you store in table
insert into product_master(
       productN0,
       descrption,
       ProfitPercent,
       UnitMeasure,
       QtyOnHand,
       ReorderLv1,
       sellPrice,
       costPrice
) values 
("P00001","T-Shirts"    ,5,"Piece",200,50,300,250),
("P0345" ,"Shirts"      ,6,"Piece",150,50,500,350),
("P06734","Cotton jeans",5,"Piece",100,20,600,450),
("P07865","Jeans"       ,5,"Piece",100,20,750,500),
("P07868","Trousers"    ,2,"Piece",150,50,850,550),
("P07885","Pull Overs",2.5,"Piece",80 ,30,700,450),
("P07965","Denim Shirts",4,"Piece",100,40,350,250),
("P07975","Lycra Tops"  ,5,"Piece",70 ,30,300,175),
("P08865","Skirts"      ,5,"Piece",75 ,30,450,300);


-- 3.Salesman_Master
create table Salesman_Master(
SalesmanNo  varchar(6),
SalesmanName varchar(20),
Addressl varchar(30),
Address2 varchar(30),
City     varchar(20),
PinCode  int(8),
State    varchar(20),
salamt   float(8,2),
tgttoget float(6,2),
ytdsales float(6,2),  
remarks  varchar(60)
)  
insert into Salesman_Master(
SalesmanNo,  
SalesmanName,
Addressl ,
Address2 ,
City    , 
PinCode  ,
State    ,
salamt   ,
tgttoget ,
ytdsales ,
remarks ) values
("S00001" ,"Aman"  ,"A/14" ,"Worli"  ,   "Mumbai",400002,"Maharashtra",3000,100,50,"Good"),
("S00002" ,"Omkar" ,"65" ,  "Nariman " , "Mumbai",400001,"Maharashtra",3000,200,100,"Good"),
("S00003" ,"Raj"   ,"P-7" , "Bandra"  ,  "Mumbai",400032,"Maharashtra",3000,200,100,"Good"),
("S00004" ,"Ashish","A/5" , "Juhu" ,     "Mumbai",400044,"Maharashtra",3500,200,150,"Good");

-- show all tables data
select * from client_master;
select * from product_master;
select * from salesman_master;




