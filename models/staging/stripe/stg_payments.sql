with payments as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        cretaed

    from raw.stripe.payments
)

select * from payments