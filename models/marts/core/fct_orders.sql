with orders as (
    select
        orders.id as order_id,
        orders.user_id as customer_id,
        payments.amount as amount
    from raw.jaffle_shop.orders, raw.stripe.payment
    inner join payment on orders.order_id == payments.order_id
)

select * from orders