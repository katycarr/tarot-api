class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :alternate_names, :number, :img_url
  has_many :meanings
  belongs_to :arcana
  belongs_to :suit
end
