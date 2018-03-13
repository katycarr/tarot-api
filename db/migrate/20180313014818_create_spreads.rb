class CreateSpreads < ActiveRecord::Migration[5.1]
  def change
    create_table :spreads do |t|
      t.string :name
      t.integer :number_of_cards

      t.timestamps
    end
  end
end
