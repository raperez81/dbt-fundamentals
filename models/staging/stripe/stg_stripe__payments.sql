select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    created as created_at,

    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount

from {{ source('stripe', 'payment') }}
