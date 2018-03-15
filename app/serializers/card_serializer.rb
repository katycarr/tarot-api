class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :img_url
  attribute :alternate_names, if: -> {object.alternate_names != []}
  belongs_to :arcana
  belongs_to :suit, unless: -> {object.suit_id == 1}
end
