{{ config(materialized='view') }}
with SALES_AGENTS as (

    SELECT
       SALES_AGENT_ID,
       NAME,
       CITY,
       SALEC_COMMISION_PCT 
    FROM SALES_AGENT
    
)
SELECT * FROM SALES_AGENTS