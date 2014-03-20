json.orderitem do
  json.id @orderitem.id
  json.name @orderitem.name
  json.image @orderitem.image
  json.current_price @orderitem.current_price
  json.order @orderitem.order_id
  json.item @orderitem.item_id
  json.quantity @orderitem.quantity
end
