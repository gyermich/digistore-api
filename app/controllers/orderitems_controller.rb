class OrderitemsController < ApplicationController
  def index
    @items = Orderitem.all
  end

  def create
    @orderitem = Orderitem.new(
    current_price: orderitem_params[:current_price],
    quantity: orderitem_params[:quantity],
    order_id: orderitem_params[:order],
    item_id: orderitem_params[:item])
    @orderitem.save
    render :index
  end

  def update
    @orderitem = Orderitem.find(params[:id])
    @orderitem.update(current_price: orderitem_params[:current_price],
    quantity: orderitem_params[:quantity],
    order_id: orderitem_params[:order],
    item_id: orderitem_params[:item])
    @orderitem.save
    render :index
  end

  def destroy
    @orderitem = Orderitem.find(params[:id])
    @orderitem.destroy
    render :index
  end

  private

  def orderitem_params
    params.require(:orderitem).permit(:current_price, :quantity, :order, :item)
  end
end
