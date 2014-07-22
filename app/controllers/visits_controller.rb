class VisitsController < ApplicationController

	def index
		@location = Location.find(params[:id])
		@visits = @location.visits
	end

	def show
		@visit = Location.find(params[:location_id]).visits(params[:id])
	rescue ActiveRecord::RecordNotFound
		render plain: 'Sorry, not found', status: 404 unless @visits
	end

end
