{{config(materialized='view')}}

select *,department_id||department_name from {{ source('raw', 'department') }}