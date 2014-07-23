class LocationsController < ApplicationController

	def index
		# @locations = Location.last_created(7)
		@locations = Location.in_spain?
	end

	def show
		@location = Location.find(params[:id])
	rescue ActiveRecord::RecordNotFound
		render plain: 'Sorry, not found', status: 404 unless @location
	end

end