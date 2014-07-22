class VisitsController < ApplicationController

	def index
		@location = Location.find(params[:id])
		@visits = Visit.month_visits(8, 2014, params[:id])
	end

	def show
		location = Location.find(params[:location_id])
		@visit = Visit.find(params[:id])
		render plain: "You try to cheat", status: 404 if @visit.location_id != params[:location_id].to_i
	rescue ActiveRecord::RecordNotFound
		render plain: 'Sorry, not found', status: 404
	end

end
