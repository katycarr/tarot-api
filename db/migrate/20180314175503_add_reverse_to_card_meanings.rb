class AddReverseToCardMeanings < ActiveRecord::Migration[5.1]
  def change
    add_column :card_meanings, :reversed, :boolean, default:false
  end
end
