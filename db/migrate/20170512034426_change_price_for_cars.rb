class ChangePriceForCars < ActiveRecord::Migration[5.1]
  def change
      change_column :cars, :price, 'integer USING CAST(price AS integer)'
  end
end


