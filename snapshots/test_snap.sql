{% snapshot test_snap %}
{{config(
    target_schema='DEV',
    unique_key='DATE_KEY',
    strategy='check',
    invalidate_hard_deletes=True,
    check_cols= ['QUARTER']
)}}
select * from {{ref("test")}}
{% endsnapshot %}