class CardSerializer < ActiveModel::Serializer
  attributes :name, :number, :img_url
  attribute :alternate_names, if: -> {object.alternate_names != []}
  has_many :meanings
  belongs_to :arcana
  belongs_to :suit, unless: -> {object.suit_id == 1}
end
