select * from tblsalesdata

SELECT TO_DATE(date,'YYYY-MM-DD'),TO_NUMBER(stock,'L9G999g999.99') 
from tblsalesdata;

select TO_NUMBER(stock,'L9G999g999.99') 
from tblsalesdata WHERE TO_NUMBER(stock,'L9G999g999.99') >5


--copy date and stock column into new folder
create table tblStock as
SELECT index,product_id,store_id,TO_DATE(date,'YYYY-MM-DD') as date,TO_NUMBER(stock,'L9G999g999.99') as stock
from tblsalesdata;

select * from tblstock;

SELECT 
       DATE_PART('day',date)
         AS  birth_week_number
FROM tblstock;

select DISTINCT product_id
from tblstock;

select DISTINCT store_id
from tblstock;
SELECT 
       DATE_PART('day',date)
         AS  birth_week_number
FROM tblstock;

--Average of stock
select avg(stock) 
from tblstock; 

--Average of s0002 stock
select avg(stock) 
from tblstock
where store_id='S0002'; 

--Average of stock of P001
select avg(stock) 
from tblstock
where product_id='P0001'; 


--Average of stock of P0001 on between 2017-02-22 and 2022-03-22
select  avg(stock) 
from tblstock
where product_id='P0001'
and 
date between '2017-02-22' and '2017-03-22'; 

--rough
select  * 
from tblstock
where product_id='P0001'
and 
date between '2017-02-22' and '2017-03-22'
order by date limit 10; 

select  distinct product_id 
from tblstock
where store_id='S0001';

select  product_id 
from tblstock
where store_id='S0001';

select distinct store_id 
from tblstock
where product_id='P0001';

--------------------------------
---Checking store which sell product P0002
create or replace View check_store_P0002 as
select distinct store_id
from tblstock
where product_id='P0002'
order by store_id;

select * from check_store_P0002;

select count (store_id)
from tblstock
where product_id='P0002';

--Check if all those 3 store who have product P0002 sell other product or not
--Let's start individually checking if those store which sell product_id P0002 sell other or not
--Lets count total number of product store_id S0038 sell

select count(product_id)
from tblstock 
where store_id='S0038';

-- NOw lets check from store_id from which sell P0002



select *
from tblstock
order by store_id,product_id;



