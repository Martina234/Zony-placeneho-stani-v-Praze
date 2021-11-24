CREATE or REPLACE TABLE Q12018 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   , REPLACE ("parking_zone", '#', '') AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2018_01"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q22018 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   , REPLACE ("parking_zone", '#', '') AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2018_02"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q32018 AS
SELECT
    "transaction_id" AS ID
    ,TO_DATE ("ticket_bought") AS TRANSACTION_DATE
   ,"parking_zone" AS PARKING_ZONE
    , (cast ("price" AS INT)) AS PRICE
    ,"channel"  AS CHANNEL
FROM "2018_03"
WHERE PRICE <> 0
;

CREATE or REPLACE TABLE Q42018 AS
SELECT
   LOWER("transaction_id") AS ID
   ,MIN (TO_DATE ("ticket_bought")) AS TRANSACTION_DATE
   ,MIN (REPLACE ("parking_zone", 'x', '')) AS PARKING_ZONE
   , (cast (MIN("price") AS INT)) AS PRICE
   ,MIN ("channel") AS CHANNEL
FROM "2018_04"
GROUP BY ID
HAVING PRICE <>0
;

CREATE OR REPLACE TABLE CLEAN2018 AS
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q12018
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q22018
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q32018
UNION
SELECT
    ID
    ,TRANSACTION_DATE
    ,PARKING_ZONE
    ,PRICE
    ,CHANNEL
FROM Q42018
;