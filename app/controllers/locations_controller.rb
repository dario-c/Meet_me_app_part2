class LocationsController < ApplicationController

	def index
		# @locations = Location.last_created(7)
		@search = Search.new
		@locations = Location.in_spain?
	end

	def show
		@location = Location.find(params[:id])
	rescue ActiveRecord::RecordNotFound
		render plain: 'Sorry, not found', status: 404 unless @location
	end

	def new
		@location = Location.new
		@location.comments.build
	end

	def create
		@location = Location.new location_params
		@location.save

		if @location.save
			redirect_to action: 'index', controller: 'locations'
		else
			render 'new'
		end
	end

	private
	def location_params
		params.require(:location).permit(:name, :city, :country, comments_attributes: [:id, :text])
	end

end