class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.integer :item_id
      t.integer :order_id
      t.integer :quantity
      t.integer :current_price

      t.timestamps
    end
  end
end
