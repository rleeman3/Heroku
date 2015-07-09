class FeedbacksController < ApplicationController
   before_action :authenticate_user!, except: [:index]
  def create
  	@feedback = feedback.create(feedback_params)
  	if @feedback.save
	  	# redirect_to @feedback, :flash => { :success => "Thanks, bru!" }
	end
  end

  private
  	def feedback_params
  		params.require(:feedback).permit(:name, :email, :feedback)
  	end

end



