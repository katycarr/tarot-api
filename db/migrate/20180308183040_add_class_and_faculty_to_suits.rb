class AddClassAndFacultyToSuits < ActiveRecord::Migration[5.1]
  def change
    add_column :suits, :associated_class, :string
    add_column :suits, :faculty, :string
  end
end
