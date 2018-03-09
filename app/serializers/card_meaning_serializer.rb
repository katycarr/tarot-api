class CardMeaningSerializer < ActiveModel::Serializer
  attributes
  belongs_to :meaning
end
