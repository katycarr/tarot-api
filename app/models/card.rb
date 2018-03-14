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

  def names_include(q)
    found = false
    self.card_names.each do |name|
      if name.downcase.include?(q.downcase)
        found = true
      end
    end
    found
  end

  def card_names
    [self.name].concat(self.alternate_names)
  end

  def meanings_include(q)
    found = false
    self.meanings.each do |meaning|
      if meaning.name.downcase.include?(q.downcase)
        found = true
      end
    end
    found
  end

  def remove_the
    if self.name.include?('The')
      self.name[(4..-1)]
    else
      self.name
    end
  end

  def upright_meanings
    upright = self.card_meanings.select do |c_m|
      c_m.reversed == false
    end
    upright.map do |c_m|
      c_m.meaning
    end
  end

  def reversed_meanings
    reversed = self.card_meanings.select do |c_m|
      c_m.reversed == true
    end
    reversed.map do |c_m|
      c_m.meaning
    end
  end



end
