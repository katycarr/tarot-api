class CreateMeanings < ActiveRecord::Migration[5.1]
  def change
    create_table :meanings do |t|
      t.string :name

      t.timestamps
    end
  end
end
