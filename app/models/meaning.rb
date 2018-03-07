class Meaning < ApplicationRecord
  has_many :card_meanings
  has_many :cards, through: :card_meanings
end
