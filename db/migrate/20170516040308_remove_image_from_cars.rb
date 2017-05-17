class RemoveImageFromCars < ActiveRecord::Migration[5.1]
  def change
  	remove_column :cars, :image, :string
  end
end
