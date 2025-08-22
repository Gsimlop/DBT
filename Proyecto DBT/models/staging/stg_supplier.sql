{{ config(materialized='view') }}

select
    s_suppkey   as supplier_key,
    s_name      as supplier_name,
    s_address   as address,
    s_nationkey as nation_key,
    s_phone     as phone,
    s_acctbal   as account_balance,
    s_comment   as comment
from {{ source('TPCH_SF1', 'supplier') }}