create function branchid(@branchid int)
returns table
as
return(select * from branch where branchid=@branchid)

select * from dbo.branchid(302)

select * from branch
drop function branchid


alter function bygender(@gen varchar(20))
returns table
as
return (select * from emp2 where gender= @gen)


select * from bygender('male')
drop function bygender

--Assignment on triggers
select * from tblemployee
create table audit_tbl(id int identity primary key,details varchar(100))

alter trigger tr_fordelete
on tblemployee
instead of delete
as
begin
declare @id int
declare @name varchar(20)
declare @departid int
select @id=id from deleted
select @name =name from deleted
select @departid=departmentid from deleted
insert into audit_tbl values ('deletd record id is '+ cast(@id as varchar(20))+' and name is '
+ @name+ ' and departmet id is '+cast(@departid as varchar(20)))end

delete from tblemployee where id =6

select * from audit_tbl
drop table audit_tbl

--Joins
select * from tblproducts
select * from tblproductsales
select a.name,a.id,b.id,b.unitprice,b.quantitysold from tblproducts a left join tblproductsales b
on a.id=b.productid where quantitysold is null
--subquery assignment
select a.id,b.id,a.name from tblproducts a,tblproductsales b where a.id not in(select distinct(productid) from
tblproductsales where quantitysold is null)