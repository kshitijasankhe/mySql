#Chapter 3: Sorting SQL data

use intro_sql;

/* 
we can sort data in sql either by ascending order or desc order. 
By default data is sorted in ascending order

Syntax:

SELECT column1,..
from table
ORDER BY column1 ASC/DESC; 

*/

# sorting customers using country in asc order
select id, company_name, country
from customers
order by country;

# sorting customers using country in DESC order
select id, company_name, country
from customers
order by country desc;

# you can sort using numberic values as well

#Sort SQL data using "multiple columns"

/* I want to sort customer data by country desc and also the company name in desc orders
select id, company_name, country
from customers
order by country desc, company_name desc;

desc products;
# selecr product_name, category, unit price from product table. Only have products where units_in_stock > 20. Then sort the results by category as asc and unit_price as desc

select product_name as product, category, unit_price
from products
where units_in_stock > 20
order by category asc, unit_price desc;














