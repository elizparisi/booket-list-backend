class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :image_url, :read, :rating, :list_id
end
