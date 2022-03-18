{{ config(materialized='view') }}
SELECT A.SALES_AGENT_ID,
       A.NAME,c.city from {{ref('stg_SALES_AGENT')}} A
inner join {{ref('stg_customer')}} c using(SALES_AGENT_ID)
INNER JOIN {{ref('stg_orders')}} o using(SALES_AGENT_ID)
where c.city= 'London'