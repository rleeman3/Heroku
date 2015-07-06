class Post < ActiveRecord::Base
  validates :restaurant_name, :start_time, :end_time, :deal, presense: true
  belongs_to :user
end
