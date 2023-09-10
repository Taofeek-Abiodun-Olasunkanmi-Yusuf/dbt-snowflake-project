with orders as (
    select
        order_id,
        customer_id,
        amount

    from raw.jaffle_shop.orders
    where amount like (
            select amount from raw.stripe.payment
        )
)

select * from orders