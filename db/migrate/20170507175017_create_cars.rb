class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :engine
      t.string :color
      t.string :price

      t.timestamps
    end
  end
end
