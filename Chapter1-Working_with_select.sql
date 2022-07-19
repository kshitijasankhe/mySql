# Chapter 1: Working with SQL select statements

#which database you want to use
USE intro_sql;

#select a table. This statement tells the details of table you select
select * from customers;

# you can also select the columns that you need
select company_name, city from customers;

# you can also rename column names for better understanding/ reporting purposes
select company_name as company from customers;

#if you want to select only DISTINCT records from a column
select distinct country from customers;

#create a select statement that retrives id, company_name (as Company), region. country, phone from customers table
select id,company_name as Company, region, country,phone from customers;



