class Card < ApplicationRecord
  belongs_to :suit
  belongs_to :arcana
  has_many :card_meanings
  has_many :meanings, through: :card_meanings

  def element
    self.suit.element
  end

  def faculty
    self.suit.faculty
  end

end
