select * from sales

select * from customer

select * from product

--Inner join

select s.product_id as s_product_id,s.order_date,s.ship_mode,
	  p.product_id,p.category,product_name from sales as s  
inner join product as p
on s.product_id=p.product_id

select distinct *
from product as p
inner join sales as s
on p.product_id = s.product_id


--Right join

select s.product_id as s_product_id,s.order_date,s.ship_mode,
	p.product_id,product_name,p.sub_category
from sales as s
right join product as p
on s.product_id=p.product_id

select distinct c.customer_id,c.first_name,c.last_name,c.region,s.ship_mode 
from customer as c
right join sales as s
on c.customer_id = s.customer_id

--Left join

select p.product_name as "product_name", p.category as "product_category" , p.sub_category as "product_sub_category",
	s.quantity as sales_quantity, s.discount as "sales_discount",s.profit as "sales_profit"
from sales as s 
left join product as p
on p.product_id = s. product_id

select distinct c.customer_id,c.age,c.city,c.state,c.postal_code
from customer as c
left join sales as s
on c.customer_id = s.customer_id

--Full join

select c.customer_id,c.customer_name,
s.order_id,s.customer_id,s.ship_mode
from sales as s
full join customer as c 
on c.customer_id = s.customer_id limit 30

select distinct *
from sales as s
full join customer as c
on s.customer_id=c.customer_id


--Join 3 tables

select s.order_id,s.order_line,s.ship_mode,s.customer_id as sales_customer_id,s.product_id as sales_product_id,
       customer_name,c.age,c.region,
       product_name,p.category from sales as s
inner join customer as c
on s.customer_id=c.customer_id
inner join product as p
on s.product_id=p.product_id
