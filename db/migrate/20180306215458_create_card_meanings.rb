class CreateCardMeanings < ActiveRecord::Migration[5.1]
  def change
    create_table :card_meanings do |t|
      t.integer :card_id
      t.integer :meaning_id

      t.timestamps
    end
  end
end
