CREATE OR REPLACE TABLE Q12017 AS
SELECT
    "transaction_id" AS ID
    , TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   , REPLACE ("parking_zone", '#', '') AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2017_01"
WHERE PRICE <> 0
;

CREATE OR REPLACE TABLE Q22017 AS
SELECT
    "transaction_id" AS ID
    , TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   , REPLACE ("parking_zone", '#', '') AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2017_02"
WHERE PRICE <> 0
;

CREATE OR REPLACE TABLE Q32017 AS
SELECT
    "transaction_id" AS ID
    , TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   , REPLACE ("parking_zone", '#', '') AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2017_03"
WHERE PRICE <> 0
;

CREATE OR REPLACE TABLE Q42017 AS
SELECT
    "transaction_id" AS ID
    , TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   , REPLACE ("parking_zone", '#', '') AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2017_04"
WHERE PRICE <> 0
;

CREATE OR REPLACE TABLE CLEAN2017 AS
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q12017
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q22017
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q32017
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q42017
;