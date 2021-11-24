CREATE or REPLACE TABLE Q12019 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2019_01"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q22019 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2019_02"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q32019 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2019_03"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q42019 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2019_04"
WHERE PRICE <> 0
;

CREATE OR REPLACE TABLE CLEAN2019 AS
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q12019
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q22019
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q32019
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q42019
;