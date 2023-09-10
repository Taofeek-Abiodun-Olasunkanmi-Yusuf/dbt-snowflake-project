with orders as (
    select
        orders.id as order_id,
        orders.user_id as customer_id,
        payment.amount as amount
    from raw.jaffle_shop.orders
    inner join raw.stripe.payment 
    on orders.order_id = payment.order_id
)

select * from orders