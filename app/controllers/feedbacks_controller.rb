class FeedbacksController < ApplicationController
  def create
  	@feedback = feedback.create(feedback_params)
  	redirect_to feedback_path
  end

  private
  	def feedback_params
  		params.require(:feedback).permit(:name, :email, :feedback)
  	end
end

