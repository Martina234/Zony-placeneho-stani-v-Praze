create or replace table vydelek as
select
    district as mestska_cast, 
    extract (year from (cast (transaction_date as date))) as rok,
    sum (cast (price as int)) as cena,
   sum (distinct(cast (capacity as int))) as kapacita
from zp
group by district,rok
order by district, rok
;