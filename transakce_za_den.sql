create or replace table transakce_za_den as
select
    transaction_date,
    channel,
    count(transaction_id) as pocet_transakci_za_den
from zp
group by transaction_date, channel
order by transaction_date
;