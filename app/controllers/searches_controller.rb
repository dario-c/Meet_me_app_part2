class SearchesController < ApplicationController

	def create
		
		@search = Search.new
		@search.keyword = params[:search][:keyword]
		@locations = @search.search_locations


		render "locations/index"

	end

end
