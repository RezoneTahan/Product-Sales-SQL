create database product_sales;
use product_sales;
show tables;

select * from discount;
select * from product_data;
select * from product_sales;

drop table  discount;
drop table  product_data;
drop table  product_sales;

describe product_data;
alter table product_data
modify Cost_Price int;
alter table product_data
modify Sale_Price int;


select * ,
a.Date,
 a.Product,
a.Customer_Type,
a.Country,
a. Discount_Band,
b.Product,
b.Category,
b. Cost_Price,
b. Sale_Price,
b.Brand,
b.Description,
(a.Units_Sold * b.Sale_Price) as Revenue,
(a.Units_Sold * b.Cost_Price) as Total_Cost,
format(date,'mmm') as Month,
format(date,'yyy') as Year 
from product_sales a
inner join 
product_data b
on a.Product = b.Product_ID;

select max(Discount) , Discount_Band from discount
group by Discount_Band 
having max(Discount)>5
order by max(Discount)  desc;




