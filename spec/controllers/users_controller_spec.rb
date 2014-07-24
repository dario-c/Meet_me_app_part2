require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

	context "Renders..." do

	it "Has a status 200" do
		get :index
		expect(response.status).to eq(200)
	end

	it "renders the Index" do
	 	get :index
	 	expect(response).to render_template("index")
	end

	it "Index Shows all Users" do
		get :index
		expect(assigns(:all_users).length).to eq(User.all.length)
	end


	end
end
