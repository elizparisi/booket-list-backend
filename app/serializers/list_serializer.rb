class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id
end
