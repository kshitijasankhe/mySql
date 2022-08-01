#Chapter 2: Filtering SQL data

/* This chapter covers WHERE clause and its operators */

use intro_sql;

#WHERE clause can be used to filter the data that you want from any table

#Syntax of WHERE 

-- SELECT columns_you_need/ *
-- FROM table_name
-- WHERE condition

#selecting customer records only from country = France
select * from customers where country ="France";

#Filtering text vs numeric data
#On numberic data you can apply some operators like >,<, >=, <=, <>
select id,order_date, shipper, freight from orders where freight <= 100 ;

# SQL AND statement -> multiple criteria is true
select id,company_name, region, country from customers  
where country ="USA"
AND region= "OR";

# Date values filter
select id, order_date, shipper, freight from orders;

#Find records that are part of year 2019
select id, order_date, shipper, freight from orders
where order_date >= "2019-01-01" AND order_date <= "2019-12-31";

#Better way to work with dates is using BETWEEN

select id, order_date, shipper, freight from orders
where order_date BETWEEN "2019-01-01" AND "2019-12-31";

#using OR operators
select * from customers where country ="France" or country = "USA";


#excercise
select product_name as Product, category, units_in_stock as Units, discontinued
from products
where (category= "Beverages" or category= "Dairy Products") and discontinued <>1;


select product_name as Product, category, units_in_stock as Units, discontinued
from products
where category IN ( "Beverages","Dairy Products" ) and discontinued <>1;


select group_concat(distinct(category))
from products
group by category;


#Having Clause: When you want to filter data in groups/ mathematical functions you use having. You will see Having clause with group by

select category, sum(units_in_stock)
from products
group by category
having sum(units_in_stock) > 300;

#Excercise
select year(order_date) as Year, sum(freight) as Freight
from orders
group by year(order_date);



