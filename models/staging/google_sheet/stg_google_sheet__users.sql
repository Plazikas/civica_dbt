with 

source as (

    select * from {{ source('google_sheet', 'users') }}

),

renamed as (

    select
        nombre,
        dni,
        email,
        fecha_alta_sistema

    from source

)

select * from renamed