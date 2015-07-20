class Profile < ActiveRecord::Base
  belongs_to :user
  validates :restaurant_name, :street_address, :city, :email, :website, presence: true
end
