{{
    config(
        materialized='table'
    )
}}

select * from {{ ref('AdventureWorks_Sales_2015') }}
union
select * from {{ ref('AdventureWorks_Sales_2016') }}
union
select * from {{ ref('AdventureWorks_Sales_2017') }}
