select orders.order_id as order_id, 
	orders.date as date,
	orders.time as time,
	order_details.pizza_id as pizza_id,
	quantity,
	pizza_types.pizza_type_id as pizza_type_id,
	name,
	category,
	ingredients,
	size,
	price
from orders
inner join order_details
	on orders.order_id = order_details.order_id
inner join pizzas
	on order_details.pizza_id = pizzas.pizza_id
inner join pizza_types
	on pizzas.pizza_type_id = pizza_types.pizza_type_id;