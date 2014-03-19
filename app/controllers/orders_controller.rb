class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @orderitems = @order.orderitems
    render :show
  end

  def create
    @order = Order.new
    @order.save
    render :show
  end
end
