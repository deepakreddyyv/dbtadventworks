{{
    config(
        materialized='table'
    )
}}

select * from {{ ref('AdventureWorks_Returns') }}