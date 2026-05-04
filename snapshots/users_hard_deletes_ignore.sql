{% snapshot google_sheet_hard_deletes_ignore %}

{{
    config(
        target_schema='snapshots',
        unique_key="DNI",
        strategy="timestamp",
        updated_at='fecha_alta_sistema',
        hard_deltes='ignore'
    )
}}

select * from {{ source('google_sheet', 'users') }}

{% endsnapshot %}