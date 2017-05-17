class AddSuplierIdToSuplier < ActiveRecord::Migration[5.1]
  def change
    add_column :supliers, :sulpier_id, :integer
  end
end
