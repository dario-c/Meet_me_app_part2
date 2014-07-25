require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

	context "Renders..." do

		before(:each) do
			@user = User.create(user_firstname: "Xavier", user_lastname: "Simo")
		end			

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
		
		it "Has a status 200" do
			get(:show, {id: @user.id}) 
			expect(response.status).to eq(200)
		end

		it "renders the Show" do
		 	get(:show, {id: @user.id})
		 	expect(response).to render_template("show")
		end	

		it "Shows a User" do
			get(:show, {id: @user.id})
			expect(assigns(:user)).to eq(User.find(@user.id))
		end

		it "Shows all the visits the selected user did" do
			get(:show, {id: @user.id})
			expect(assigns(:user)).to eq(User.find(@user.id))
		end

	end

end
