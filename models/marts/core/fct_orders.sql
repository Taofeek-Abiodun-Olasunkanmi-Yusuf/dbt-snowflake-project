with orders as (
    select
        raw.jaffle_shop.orders.id as order_id,
        raw.jaffle_shop.orders.user_id as customer_id,
        raw.stripe.payment.amount as amount
    from raw.jaffle_shop.orders
    inner join raw.stripe.payment 
    on raw.jaffle_shop.orders.order_id = raw.stripe.payment.order_id
)

select * from orders