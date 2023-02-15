create table customer_master
(
CUSTOMER_NUMBER varchar(20) primary key,
FIRSTNAME varchar(50),
middlename varchar(50),
lastname varchar(50),
CUSTOMER_CITY varchar(30),
CUSTOMER_CONTACT_NO bigint,
occupation varchar(40),
CUSTOMER_DATE_OF_BIRTH date
)
drop table customer_master
insert into customer_master values('C00001','TARUN','CHANDRA','SHARMA','DELHI',9543198345,'SERVICE','1976-12-06')
insert into customer_master values('C00002','PRASAD','SUNDER','MINHA','DELHI',9876532109,'SERVICE','1974-10-16')
insert into customer_master values('C00003','HEMANTH',NULL,'RASTOGI','DELHI',9765178901,'STUDENT','1981-09-26')
insert into customer_master values('C00004','SAGAR',NULL,'GANDHI','DELHI',9876532109,'HOUSEWIFE','1976-11-03')
insert into customer_master values('C00005','NAVEEN','CHANDRA','AEDEKAR','MUMBAI',89765233190,'SERVICE','1976-09-19')
insert into customer_master values('C00006','VINOD',NULL,'BARWE','MUMBAI',7651298321,'STUDENT','1992-11-06')
insert into customer_master values('C00007','DINESH','KUMAR','BORKAR','MUMBAI',9875189761,'STUDENT','1981-09-06')
insert into customer_master values('C00008','KIRAN',NULL,'DAMLE','MUMBAI',7954198761,'SERVICE','1975-12-03')
insert into customer_master values('C00009','ABHISHEK',NULL,'DUTTA','KOLKATA',9856198761,'SERVICE','1973-05-22')
insert into customer_master values('C00010','CHAITHU',NULL,'NAIR','CHENNAI',8765489076,'SERVICE','1976-07-12')
select * from customer_master
select distinct CUSTOMER_CITY from customer_master
select CUSTOMER_CITY,COUNT(*) FROM customer_master GROUP BY CUSTOMER_CITY
select occupation,COUNT(*) from customer_master GROUP BY occupation
select * from customer_master ORDER BY FIRSTNAME
select * from customer_master ORDER BY occupation DESC
select * from customer_master WHERE middlename IS NULL