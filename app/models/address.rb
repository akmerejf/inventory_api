class Address
  include Mongoid::Document
  field :street, type: String
  field :district, type: String
  field :lat, type: String
  field :lng, type: String

  embedded_in :inventory
end
