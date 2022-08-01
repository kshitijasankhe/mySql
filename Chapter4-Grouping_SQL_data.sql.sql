
/* group by statement is used to group the records that share the same value 

SELECT column1, column2,
from table
GROUP BY what_column_you_want_to_group_your_data_by

*/
use intro_sql;

#eg. you want to group customers from same country
Select country
from customers
group by country;

#Group by becomes more effective when you start summerizing another key data points within those groups. You do this by creating calculations associated with those groups

#eg. count how many customers we have in each country
select count(id), country
from customers
group by country;

#eg.find out distinct country and sort in asc order
select country 
from customers
group by country
order by country;

#DISTINCT VS GROUP BY
select distinct(country)
from customers;


select * from products;

select category,count(units_in_stock)
from products
group by category;

select category,units_in_stock from products;

select distinct category,units_in_stock from products; #this gets rid of duplicate records

select category,count(units_in_stock )
from products
group by category;




