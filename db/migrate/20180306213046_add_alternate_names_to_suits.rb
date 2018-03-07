class AddAlternateNamesToSuits < ActiveRecord::Migration[5.1]
  def change
    add_column :suits, :alternate_names, :string, {array:true, default:[]}
  end
end
