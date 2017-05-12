class AddPriceintToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :priceint, :integer, precision: 7, scale: 0
  end
end
