class SuitSerializer < ActiveModel::Serializer
  attributes :id, :name, :element, :associated_class, :faculty
  has_many :cards
end
