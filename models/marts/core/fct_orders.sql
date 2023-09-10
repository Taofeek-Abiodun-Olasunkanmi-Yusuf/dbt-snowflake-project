with orders as (
    select
        order_id,
        customer_id,
        amount
        
    from raw.core.orders
    where amount like (
            select amount from raw.stripe.payments
        )
)

select * from orders