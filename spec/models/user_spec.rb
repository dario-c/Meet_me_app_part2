require 'rails_helper'

RSpec.describe User, :type => :model do
  
	context "When I create a user" do
		
	var = User.create(user_firstname: "Dario", user_lastname: "Cavanillas", favourite_location: 1)	
		


    it "It is created" do 
  			expect(User.find(var.id)).to eq(var)
  			
  	end

    it "Validates a Valid name" do
      
      expect(FactoryGirl.build(:user)).to be_valid

    end

    it "Validates a INvalid name" do
      
      expect(FactoryGirl.build(:nolastname)).to be_invalid

    end



	end
end

