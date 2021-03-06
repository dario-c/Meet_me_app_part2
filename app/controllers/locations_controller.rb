class LocationsController < ApplicationController

	def index
		# @locations = Location.last_created(7)
		@search = Search.new
		@locations = Location.in_spain?
	end

	def show
		@location = Location.find(params[:id])
	
	#	respond_to do|format|
	#		format.html
	#		format.json{ render :json => @location.to_json }
	#	end	



	rescue ActiveRecord::RecordNotFound
		redirect_to 'http://localhost:3000/404', status: 404 unless @location
		#render plain: 'Sorry, we did not find anything!'

	end

	def new
		if user_signed_in?
			@location = Location.new
			@location.comments.build
		else
			redirect_to new_user_session_path
		end
	end

	def create

		@location = Location.new location_params
		@location.user_id = 3#current_user.id 
		@location.save

	

		if @location.save

			respond_to do |format|
				format.html{redirect_to action: 'index', controller: 'locations'}
				format.json {render'show'}
			end

		else
			render 'new'
		end
	end

	def edit
		@location = Location.find(params['id'])
		@location.comments.build
	end


	def update
		@location = Location.find(params['id'])
		@location.update_attributes location_params
		redirect_to action: 'show', controller: 'locations', id: @location.id
	end


	private
	def location_params
		params.require(:location).permit(:name, :city, :country, comments_attributes: [:id, :text, :_destroy], users_attributes: [:id])
	end

end