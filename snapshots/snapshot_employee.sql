{% snapshot snapshot_employees %}

{{
    config(
        target_schema='TRANSFORMED_SCHEMA',
        strategy='check',
        unique_key='id',
        check_cols=['salary', 'department']
    )
}}

SELECT
    id,
    department,
    salary
FROM {{ ref('employee') }}

{% endsnapshot %}