{{
    config(
        materialized='incremental',
        unique_key= 'ordernumber'
    )
}}

select s.* from {{ ref('stg_sales') }} s 
{% if is_incremental() %}
    left join {{ this }} f 
    on s.ordernumber = f.ordernumber
    where f.ordernumber is null
{% endif %}

