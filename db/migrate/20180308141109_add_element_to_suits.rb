class AddElementToSuits < ActiveRecord::Migration[5.1]
  def change
    add_column :suits, :element, :string
  end
end
