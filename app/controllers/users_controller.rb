class UsersController < ApplicationController
	def index
		@users = User.all
		@geojson = Array.new
		@users.each do |user|
			@geojson << {
				type: 'Feature',
				geometry: {
					type: 'Point',
					coordinates: [user.longitude, user.latitude]
				},
				properties: {
					name: user.restaurant,
					address: user.address,
					:'marker-color' => '#00607d',
					:'marker-symbol' => 'circle',
					:'marker-size' => 'medium'
				}
			}
	end
	respond_to do |format|
		format.html
		format.json { render json: @geojson }
	end
end
end
