class AddOrderIdColumnToCompletedOrders < ActiveRecord::Migration
  def change
    add_column :complete_orders, :order, :integer
  end
end
