class ProfilesController < ApplicationController

	def index
	end

	def show
	end

  private
  	def profile_params
  		params.require(:profile).permit(:restaurant_name, :street_address, :city, :state, :postal_code, :email, :website)
    end

end
