class Feedback < ActiveRecord::Base
	 validates :name, :email, :feedback, presence: true
end
