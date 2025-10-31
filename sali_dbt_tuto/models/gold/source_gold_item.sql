with dedup_query as (

select 
*,
ROW_NUMBER ()
OVER ( PARTITION BY id ORDER BY updatedate DESC) AS deduplication_id
from 
{{ source('source', 'Items') }}

) 

select id, name, category, updatedate from dedup_query
where
deduplication_id = 1