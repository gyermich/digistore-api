class RemoveColumnFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :orderitem_id, :string
  end
end
