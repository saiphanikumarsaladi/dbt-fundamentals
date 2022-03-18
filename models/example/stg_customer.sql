{{ config(materialized='view') }}
WITH CUSTOMERS as (

   SELECT
     CUSTOMER_ID,
     CUST_NAME,
     CITY,
     SALES_AGENT_ID
   FROM CUSTOMER
   
)
SELECT * FROM CUSTOMERS