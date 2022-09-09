CCREATE OR REPLACE FUNCTION foo(colname text, tblname text)
RETURNS TABLE(datecol date)
AS $$
BEGIN
  RETURN QUERY EXECUTE
    format($_$SELECT to_date(%I, 'YYYY-MM-DD') FROM %I$_$,
           colname, tblname);
END;
$$ LANGUAGE plpgsql;

SELECT * FROM foo('date','tblsalesdata');


SELECT *
from tblsalesdata limit 10;




create or replace function fn_date_conversion1 (
 
) 
	returns table (
		
		datecolumn date
	) 
	language plpgsql
as $$
begin
	return query 
		SELECT TO_DATE(date,'YYYY-MM-DD')
	    from tblsalesdata;
end;
$$
-- drop FUNCTION fn_date_conversion()

SELECT * from fn_date_conversion1()

CREATE VIEW salesdata1 AS
SELECT to_date("date", 'YYYY-MM-DD') AS sales_date
       -- maybe others columns from tblssalesdata
  FROM tblsalesdata;

select * from salesdata1

select * from tblsalesdata limit 10




















----------------------------------------------------
create or replace function fn_date_conversion1 (
 
) 
	returns table (
		
		datecolumn date
	) 
	language plpgsql
as $$
begin
	return query 
		SELECT TO_DATE(date,'YYYY-MM-DD')
	    from tblsalesdata;
end;
$$
-- drop FUNCTION fn_date_conversion()

SELECT * from fn_date_conversion1()

CREATE VIEW salesdata1 AS
SELECT to_date("date", 'YYYY-MM-DD') AS sales_date
       -- maybe others columns from tblssalesdata
  FROM tblsalesdata;

select * from salesdata1

select * from tblsalesdata limit 10