class CreateCartedProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :carted_products do |t|
      t.integer :order_id
      t.integer :user_id
      t.integer :car_id
      t.integer :quantity

      t.timestamps
    end
  end
end
