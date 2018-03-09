class SuitSerializer < ActiveModel::Serializer
  attributes :id, :name
  attribute :element, if: -> {object.element}
  attribute :associated_class, if: -> {object.associated_class}
  attribute :faculty, if: -> {object.faculty}
  has_many :cards

  def name
    if object.name == ''
      'No suit'
    else
      object.name
    end

  end
end
