class RenameColumnCompletedOrders < ActiveRecord::Migration
  def change
    rename_column :complete_orders, :order, :order_id
  end
end
