{{
    config(
        materialized='ephemeral'
    )
}}

select * from {{ ref('stg_customers') }}

