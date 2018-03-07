class Card < ApplicationRecord
  belongs_to :suit
  belongs_to :arcana
  has_many :card_meanings
  has_many :meanings, through: :card_meanings

end
