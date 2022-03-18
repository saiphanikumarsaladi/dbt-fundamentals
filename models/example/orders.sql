with orderSS as (
        select 
          ORDER_NUM,
          PURCHASE_AMT,
          ORDER_DATE,
          CUSTOMER_ID,
          SALES_AGENT_ID 
        from orders
)
select * from orderSS