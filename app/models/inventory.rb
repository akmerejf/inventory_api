class Inventory
  include Mongoid::Document
  field :image, type: String
  field :plant_name, type: String
  field :description, type: String
  field :date, type: String


  embeds_one :address
  # accepts_nested_attributes_for :address
  validates_presence_of :address


  # accepts_nested_attributes_for :address
end
