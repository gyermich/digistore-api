class CompleteOrdersController < ApplicationController
  def create
     @completed_order = CompleteOrder.create(
       name: completed_order_params[:name],
       email: completed_order_params[:email],
       ccnumber: completed_order_params[:ccnumber],
       cvv: completed_order_params[:cvv],
       exp: completed_order_params[:exp],
       zip: completed_order_params[:zip],
       order_id: completed_order_params[:order],
       status: "paid"
       )
     OrderMailer.completed_order(completed_order_params[:email]).deliver
     render :show
  end

  def show
    @completed_order = CompleteOrder.find(params[:id])
  end

   private
   def completed_order_params
     params.require(:completedOrder).permit(:id, :name, :email, :ccnumber,
       :cvv, :exp, :zip, :order, :status)
   end
end
