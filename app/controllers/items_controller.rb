class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(params.require(:item).permit(:name, :price, :description, :image))
    @item.save
    render :show
  end

  def update
    @item = Item.find(params[:id])
    @item.update(params.require(:item).permit(:name, :price, :description, :image))
    render :show
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render :show
  end
end
