class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.integer :number
      t.string :signifies

      t.timestamps
    end
  end
end
