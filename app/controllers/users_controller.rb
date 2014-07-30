class UsersController < ApplicationController


	def index
		@all_users = User.all
	end

	def show
		@user = User.find(params[:id])
		@locations = @user.visits.pluck(:location_id)
	end

	def new
		@user = User.new
	end

	def update

	end

	def create
		@visit = User.new user_params
		@visit.save

		if @visit.save
			redirect_to action: 'index', controller: 'users'
		else
			render 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:user_firstname,:user_lastname)
	end
end