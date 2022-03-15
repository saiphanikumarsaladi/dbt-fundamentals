{{
    config (
        materialized = "view"
    )
}}
with SOIL_TYPE_ID as {
    Select SOIL_TYPE_ID from {{ref('newsqlfile')}} where SOIL_TYPE ='sand';
}
