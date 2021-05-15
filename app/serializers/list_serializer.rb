class ListSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :books
end
