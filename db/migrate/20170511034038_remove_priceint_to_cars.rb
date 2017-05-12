class RemovePriceintToCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :priceint, :integer
  end
end
