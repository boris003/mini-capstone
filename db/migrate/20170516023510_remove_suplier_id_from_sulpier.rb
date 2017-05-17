class RemoveSuplierIdFromSulpier < ActiveRecord::Migration[5.1]
  def change
  	remove_column :supliers, :sulpier_id, :integer
  end
end
