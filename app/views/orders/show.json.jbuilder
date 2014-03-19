json.order do
  json.id @order.id
  array = []
  @orderitems.each do |oi|
    array << oi.id
  end
  json.orderitems array
end