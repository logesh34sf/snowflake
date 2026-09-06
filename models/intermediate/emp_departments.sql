{{config(materialized='table')}}
with emp as(
select * from {{ ref('employee') }}) ,
dep as (select * from {{ ref('department') }})
select *,d.department_id||'-'||d.department_name from emp e join dep d on d.department_name=e.department

