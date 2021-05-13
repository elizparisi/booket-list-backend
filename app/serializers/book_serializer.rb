class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :author, :image_url, :read, :rating, :list_id
end
