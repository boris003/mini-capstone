class AddAvailabilityToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :in_stock, :boolean
  end
end
