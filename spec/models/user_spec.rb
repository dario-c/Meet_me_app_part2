require 'rails_helper'

RSpec.describe User, :type => :model do
  
	context "When I create a user" do
		
	var = User.create(user_firstname: "Dario", user_lastname: "Cavanillas", favourite_location: 1)	
		it "It is created" do 
			expect(User.find(var.id)).to eq(var)
			
		end

	end
end

