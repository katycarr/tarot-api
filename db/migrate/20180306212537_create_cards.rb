class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :number
      t.integer :arcana_id
      t.integer :suit_id

      t.timestamps
    end
  end
end
