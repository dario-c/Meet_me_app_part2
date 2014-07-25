class UsersController < ApplicationController

	def index
		@all_users = User.all
	end

	def show
		@user = User.find(params[:id])
		@locations = @user.visits.pluck(:location_id)






=begin

			location_ids = Visit.where(user_id: @user.id).pluck(:location_id))
@his_locations = Location.where("id IN ?", location_ids)

=end

	end

end


