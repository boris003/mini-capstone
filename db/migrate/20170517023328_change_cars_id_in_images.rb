class ChangeCarsIdInImages < ActiveRecord::Migration[5.1]
  def change
  	rename_column :images, :cars_id, :car_id
  end
end
