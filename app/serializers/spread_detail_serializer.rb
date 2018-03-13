class SpreadDetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :number_of_cards
  has_many :positions
end
