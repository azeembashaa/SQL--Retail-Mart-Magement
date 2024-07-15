create database sqlbasics;
show databases;
use sqlbasics;
create table product_table(p_code int,p_name varchar(25),price int,stock int,category varchar(25));
create table customer_table(c_id int,c_name varchar(25),c_location varchar(25),c_phoneno int);
create table sales_table(order_date date,order_no varchar(25),c_id int,c_name varchar(25),s_code int,p_name varchar(25),quantity int,price int);
select * from product_table;
select * from customer_table;
select * from sales_table;
drop table sales_table;
insert into sales_table  values('2016-07-24','HM06','9212','Jessica','11','pencil','3','30'),
('2016-10-19','HM09','3921','Mukesh','17','biscuits','10','600'),('2016-10-30','HM10','9875','Stephen','2','cornoto','10','500'),
('2018-04-12','HM03','1212','Oliver','20','kiwi','3','420'),('2018-05-02','HM05','1910','Mohan','20','kiwi','2','280'),
('2018-09-20','HM08','5334','Chirsty','16','chocolate','2','50'),('2019-01-11','HM07','1246','Vignesh','19','apple','5','600'),
('2019-03-15','HM01','1910','Mohan','5','mayanoise','4','360'),('2021-02-10','HM04','1111','Nisha','25','conditioner','5','1000'),
('2021-02-12','HM02','2123','Biyush','3','Pen','2','20');  
alter table sales_table add S_no int,add categories varchar(25);
alter table product_table modify stock varchar(25);
alter table customer_table rename customer;
alter table sales_table drop S_no,drop categories;
select order_no,c_id,order_date,price,quantity from sales_table;
select * from product_table where category='stationary';
select distinct category from product_table;
select * from sales_table where quantity>2 and price >500;
select c_name from customer where c_name like '%a';
select * from product_table order by price desc;
select p_code,category from product_table group by category having count(*)>=2;

