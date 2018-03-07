class CreateSuits < ActiveRecord::Migration[5.1]
  def change
    create_table :suits do |t|
      t.string :name

      t.timestamps
    end
  end
end
