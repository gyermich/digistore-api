class CreateCompleteOrders < ActiveRecord::Migration
  def change
    create_table :complete_orders do |t|
      t.string :name
      t.string :email
      t.integer :ccnumber
      t.integer :cvv
      t.integer :zip
      t.integer :exp
      t.string :status

      t.timestamps
    end
  end
end