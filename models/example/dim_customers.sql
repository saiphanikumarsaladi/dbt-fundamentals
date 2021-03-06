{{ config(materialized='view') }}
with SALES_AGENTS as (

    SELECT * FROM {{ ref('stg_SALES_AGENT') }}
    
),

CUSTOMERS as (

   SELECT * FROM {{ ref('stg_customer') }}
   
),

orderSS as (
        select * from {{ ref('stg_orders') }}
),

final as (
      select 
         SALES_AGENTS.SALES_AGENT_ID,
         SALES_AGENTS.NAME,
         CUSTOMERS.CUSTOMER_ID,
         CUSTOMERS.CUST_NAME,
         ordersS.ORDER_NUM,
         ordersS.PURCHASE_AMT from SALES_AGENTS
         LEFT JOIN CUSTOMERS USING (SALES_AGENT_ID)
         LEFT JOIN ORDERSS USING (SALES_AGENT_ID)
)
SELECT * FROM final