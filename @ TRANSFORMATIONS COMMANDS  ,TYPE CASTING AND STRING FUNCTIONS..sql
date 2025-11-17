-- TRANSFORMATIONS

-- Numeric Transformations 
SELECT
   unit_price * 0.90 AS disconted_price,
   unit_price + 10 AS taxied_price,
   unit_price / 5 AS fractional_price,
   ROUND(unit_price, 1) AS rounded_price
FROM 
  dim_product   
 
 
-- DATE TRANSFORMATION
-- 1)
SELECT
   date,
   now() AS 'current_timestamp',
   utc_date(),
   utc_time(),
   utc_timestamp()
FROM
   dim_date 
   
-- 2)
SELECT
  date,
  YEAR(date),
  MONTH(date),
  DAY(date),
  WEEKDAY(date),
  DAYNAME(date),
  DATE(utc_timestamp()),
  DATEDIFF(DATE(utc_timestamp()),date) AS total_days,
  ADDDATE(date,2),
  SUBDATE(date,2),
  CAST('2025-01-01' AS datetime)
  
FROM
   dim_date  
   
-- 3)
SELECT 
  date,
date_format(date,"%W %M %e %Y") AS 'NAME OF DAY AND DATE'
FROM
   dim_date;
   
 
 
 -- TYPE CASTING
 SELECT
   customer_key,
   CAST(customer_key AS CHAR(100))
   FROM
     dim_customer;

-- STRING FUCTIONS BASIC
SELECT
   *,
CONCAT(first_name,'  ',last_name) AS full_name,
LENGTH(country) AS country_size,
UPPER(city),
substring(email ,1,6)
FROM
  dim_customer;


  

