class AddColumnsToOrderitems < ActiveRecord::Migration
  def change
    add_column :orderitems, :name, :string
    add_column :orderitems, :image, :string
  end
end
