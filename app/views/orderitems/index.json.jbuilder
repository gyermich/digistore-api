json.orderitems @orderitems do |oi|
  oi = Orderitem.find(oi)
  json.id oi.id
  json.current_price oi.current_price
  json.item_id  oi.item_id
  json.order_id oi.order_id
  json.quantity oi.quantity
  json.image oi.image
  json.name oi.name
end