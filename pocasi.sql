create or replace table pocasi as
SELECT
    DATE_FROM_PARTS(YEAR, MONTH, DAY) AS DATUM
    , cast (PRECIPITATTION as float) as srazky
    ,cast (TEMPERATURE as float) as teplota
FROM WEATHER;