class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :image_url, :read, :rating
end
