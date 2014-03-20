class OrderitemsController < ApplicationController
  def index
    @orderitems = Orderitem.all
  end

  def create
    @orderitem = Orderitem.new(
    current_price: orderitem_params[:current_price],
    quantity: orderitem_params[:quantity],
    order_id: orderitem_params[:order],
    item_id: orderitem_params[:item],
    name: orderitem_params[:name],
    image: orderitem_params[:image])
    @orderitem.save
    render :show
  end

  def update
    @orderitem = Orderitem.find(params[:id])
    @orderitem.update(current_price: params[:orderitem][:current_price],
    quantity: params[:orderitem][:quantity])

    render :show
  end

  def destroy
    @orderitem = Orderitem.find(params[:id])
    @orderitem.destroy
    render :show
  end

  def show
    @orderitem = Orderitem.find(params[:id])
    render :show
  end

  private

  def orderitem_params
    params.require(:orderitem).permit(:id, :current_price, :quantity, :order, :item, :name, :image)
  end
end
