with orders as (
    select
        order_id,
        customer_id,
        raw.stripe.payments.payment

    from raw.core.orders
)

select * from orders