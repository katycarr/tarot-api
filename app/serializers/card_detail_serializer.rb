class CardDetailSerializer < ActiveModel::Serializer
  attributes :name, :number, :img_url, :integer
  has_many :upright_meanings, serializer: MeaningSerializer
  has_many :reversed_meanings, serializer: MeaningSerializer
  attribute :alternate_names, if: -> {object.alternate_names != []}
  # has_many :meanings
  belongs_to :arcana
  belongs_to :suit, unless: -> {object.suit_id == 1}

end
