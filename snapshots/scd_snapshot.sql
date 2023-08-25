{% snapshot scd_snapshot %}
    
 {{
    config(
    target_database = 'dbt_demo',
    target_schema=new_schema,
    unique_key = c_id',

    strategy = 'timestamp',
    updated_at='updated_at'
    )
 }}

 select * from {{ source('integrated-ray-396809.dbt_demo.Cust_data') }}

{% endsnapshot %}