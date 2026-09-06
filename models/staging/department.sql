{{config(materialized='view')}}

select department_id,department_name, department_id||'-'||department_name as department_id_name from {{ source('raw', 'department') }}