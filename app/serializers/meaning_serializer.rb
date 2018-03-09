class MeaningSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :cards
end
