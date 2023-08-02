{{
    config(
        materialized='table'
    )
}}

select * from 
RAW.GLOBALMART.CUSTOMER