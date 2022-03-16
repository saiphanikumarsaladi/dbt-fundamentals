{{ config(materialized='view') }}
SELECT A.*,c.city from {{ref('SALES_AGENT')}} A
inner join {{ref('customer')}} c using(SALES_AGENT_ID)
INNER JOIN {{ref('orders')}} o using(SALES_AGENT_ID)
where c.city= 'London'