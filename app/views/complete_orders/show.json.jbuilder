json.completedOrder {
  json.id @completed_order.id
  json.name @completed_order.name
  json.email @completed_order.email
  json.ccnumber @completed_order.ccnumber
  json.cvv @completed_order.cvv
  json.exp @completed_order.exp
  json.zip @completed_order.zip
  json.order @completed_order.order_id
  json.status @completed_order.status
}