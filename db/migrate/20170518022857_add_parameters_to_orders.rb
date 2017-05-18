class AddParametersToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :product_id, :integer
    add_column :orders, :quantity, :integer
    add_column :orders, :subtotal, :float
    add_column :orders, :tax, :float
    add_column :orders, :total, :float
  end
end
