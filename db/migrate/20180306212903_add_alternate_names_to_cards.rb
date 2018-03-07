class AddAlternateNamesToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :alternate_names, :string, array:true, default:[]
  end
end
