with orders as (
    select
        id as order_id,
        user_id as customer_id,
        amount

    from raw.jaffle_shop.orders,
    where amount like (
            select amount from raw.stripe.payment
        )
)

select * from orders