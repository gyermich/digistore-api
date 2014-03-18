class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :orderitem_id

      t.timestamps
    end
  end
end
