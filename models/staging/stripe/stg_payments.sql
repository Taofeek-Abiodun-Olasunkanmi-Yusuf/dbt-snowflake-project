with payment as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        cretaed,
        _batched_at as batched_at

    from raw.stripe.payments
)

select * from payment