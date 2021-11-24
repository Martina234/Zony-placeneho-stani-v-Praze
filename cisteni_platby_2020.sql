CREATE or REPLACE TABLE Q12020 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2020_01"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q22020 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2020_02"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q32020 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2020_03"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q42020 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2020_04"
WHERE PRICE <> 0
;

CREATE OR REPLACE TABLE CLEAN2020 AS
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q12020
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q22020
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q32020
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q42020
;