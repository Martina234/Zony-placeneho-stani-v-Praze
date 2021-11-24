create or replace temporary table z as
select 
    "id" AS id
    , "district" as district
    , "lng" as lng
    , "lat" as lat
    , "type" as type
    , cast ("capacity" as INT) as capacity
from "zony"
;

create or replace table zp as
select
    z.id
    , z.district
    , z.lng
    , z.lat
    , z.type
    , z.capacity
    , cleanp.id as transaction_id
    , cleanp.channel
    , cast (cleanp.price as INT) as price
    , cast (cleanp.transaction_date as DATE) as transaction_date
from z
left join cleanp
on z.id = cleanp.parking_zone
where price is not null;