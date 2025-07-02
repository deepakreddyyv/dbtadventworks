{{
    config(
        materialized='table'
    )
}}

select 
    c.*, a.productcategorykey,a.categoryname,b.SubcategoryName 
from {{ ref('AdventureWorks_Product_Categories') }} a join {{ref('AdventureWorks_Product_Subcategories')}} b 
on (a.productcategorykey = b.productcategorykey)
join {{ref('AdventureWorks_Products')}} c 
on (c.ProductSubcategoryKey = b.ProductSubcategoryKey)

