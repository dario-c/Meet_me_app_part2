class VisitsController < ApplicationController

	def index
		@location = Location.find(params[:location_id])
		@visits = Visit.month_visits(7, 2014, params[:location_id])

		@user_name = {}
		@visits.each do |visit|
			@user_name[visit.id] = User.find(visit.user_id).user_firstname + ' ' + User.find(visit.user_id).user_lastname
		end 
	end

	def show
		@location = Location.find(params[:location_id])
		@visit = Visit.find(params[:id])
		@this_user = User.find(@visit.user_id)
		render plain: "You try to cheat", status: 404 if @visit.location_id != params[:location_id].to_i
	rescue ActiveRecord::RecordNotFound
		render plain: 'Sorry, not found', status: 404
	end

##
	def edit
		@visit = Visit.find(params[:id])
		@location = @visit.location 
	end

	def update
		@location = Location.find(params[:location_id])
		@visit = Visit.find(params[:id]).update_attributes	visit_params
		flash[:notice] = "Updated!"
		redirect_to action: 'index', controller: 'visits', location_id:@location
	end
#	
#
	def new
		@location = Location.find(params[:location_id])
		@visit = Visit.new
	end

	def create
		@location = Location.find(params[:location_id])
		@visit = @location.visits.new visit_params
		@visit.save
		if @visit.save
			redirect_to action: 'index', controller: 'visits', location_id: @location.id
		else
			@errors = @visit.errors.full_messages
			render 'new'
		end
	end
#
#
	def destroy
		@location = Location.find(params[:location_id])
		@visit = Visit.find(params[:id])
		@visit.destroy
		redirect_to action: 'index', controller: 'visits', location_id: @location.id
	end
		
	private

	def visit_params
		params.require(:visit).permit(:user_id, :from_date, :to_date)
	end

end


