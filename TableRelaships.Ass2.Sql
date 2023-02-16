
create table loan_details(customer_number varchar(40) foreign key references customer_master(customer_number),
branch_id int,loan_amount bigint)

create table branch_master(branch_id int primary key,branch_name varchar(30),branch_city varchar(30))

create table account_master(account_number varchar(40) primary key,
customer_number varchar(40) foreign key references customer_master(customer_number),
branch_id int foreign key references branch_master(branch_id),opening_balance bigint,
account_opening_date date,account_type varchar(10),account_status varchar(10))

create table transaction_details(transaction_number int primary key,
account_number varchar(40) foreign key references account_master(account_number),
date_of_transaction date,medium_of_transaction varchar(20),transaction_type varchar(20),
transaction_amount bigint)