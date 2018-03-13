class AddSpreadToPositions < ActiveRecord::Migration[5.1]
  def change
    add_column :positions, :spread_id, :integer
  end
end
