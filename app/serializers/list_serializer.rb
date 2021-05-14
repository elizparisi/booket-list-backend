class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id

  has_many :books 
end
