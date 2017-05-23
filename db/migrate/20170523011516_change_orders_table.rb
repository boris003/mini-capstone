class ChangeOrdersTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :car_id, :integer
    remove_column :orders, :quantity, :integer
    add_column :orders, :completed, :boolean
  end
end
