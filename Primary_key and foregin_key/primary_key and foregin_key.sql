-- primary key is unique key in table 
-- you can define a coloume 
-- syntax primary key  :- create table client_master(
--   coloumename datatype primary key      
--  primary key (productN0) 
-- );



create table CLIENT_MASTER(
     CLIENTN0 varchar (6) primary key,
     NAME     varchar (20) not null,
     ADDRESS1 varchar (30),
     ADDRESS2 varchar (30),
     CITY     varchar (15),
     Pincode  int      (8),
     STATE    varchar (15),
     BALDUE    decimal(10,2)
            
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
    productNo  varchar(6),
    description  varchar (15),
    ProfitPercent float(4,2),
    UnitMeasure  varchar (10),
    QtyOnHand   float(8),
    ReorderLv1    float(8),
    sellPrice    float(8,2),
    costPrice    float(8,2),
     primary key (productNo)
 );


--  insert into table first select columns when you store in table
insert into product_master(
       productNo,
       description,
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
SalesmanNo  varchar(6) primary key,
SalesmanName varchar(20) not null,
Addressl varchar(30) not null,
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


--  foreign key as name mutual key 
-- date data type when insert always have single quote(' ')

create table SALES_ORDER(
    ORDERN0    varchar(6) primary key,
    CLIENTN0   varchar(6) ,
    ORDERDATE  date not null,
    SalesmanNo  varchar (6),
    DELYTYPE    char (1),
    BILLYN      char (1),
    DELYDATE     date,
    ORDERSTATUS  varchar (10),
      
        foreign key (CLIENTN0) references client_master(CLIENTN0),
      
        foreign key (SalesmanNo) references Salesman_Master(SalesmanNo)

);

INSERT INTO SALES_ORDER (ORDERN0, CLIENTN0, ORDERDATE, SalesmanNo, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
VALUES
("019001", "c00001", '2004-06-12', "s00001", "f", "n", '2002-07-20', "Inprocess"),
("019002", "c00002", '2004-06-25', "s00002", "p", "n", '2002-06-27', "cancelled"),
("046865", "c00003", '2004-02-18', "s00003", "f", "y", '2002-02-20', "fulfilled"),
("019003", "c00001", '2004-04-03', "s00001", "f", "y", '2002-04-07', "fulfilled"),
("046866", "c00004", '2004-05-20', "s00002", "p", "n", '2002-05-22', "cancelled"),
("019008", "c00005", '2004-05-24', "s00004", "f", "n", '2002-07-26', "Inprocess");


create table SALES_ORDER_DETAILS(
    ORDERN0    varchar(6),
    productNo  varchar(6),
    qtyordered int(8),
    QTYDISP    int(8),
    productrate float(10,2),
       foreign key (ORDERN0) references SALES_ORDER(ORDERN0),
       
       foreign key (productNo) references product_master(productNo)

  );


 insert into SALES_ORDER_DETAILS(
ORDERN0 ,   
productNo,  
qtyordered, 
QTYDISP,    
productrate
  ) values
("019001","p00001",4 ,4  ,525),
("019001","p07965",2 ,1  ,8400),
("019001","p07885",2 ,1  ,5250),
("019002","p00001",10,0  ,525),
("046865","p07868",3, 3  ,3150),
("046865","p07885",3, 1  ,5250),
("046865","p00001",10,10 ,525),
("046865","p0345" ,4, 4  ,1050),
("019003","p0345", 2, 2  ,1050),
("019003","p06734",1, 1  ,12000),
("046866","p07965",1, 0  ,8400),
("046866","p07975",1, 0  ,1050),
("019008","p00001",10,5  ,525),
("019008","p07975",5, 3  ,1050);

