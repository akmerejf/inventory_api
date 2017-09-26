class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  # field :name, type: String
  field :email, type: String
  field :password_digest, type: String

  has_secure_password

  embeds_one :profile
  accepts_nested_attributes_for :profile, :reject_if => :all_blank
  
  has_many :likes
  
end
