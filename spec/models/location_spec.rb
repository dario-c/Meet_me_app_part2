require 'rails_helper'

RSpec.describe Location, :type => :model do

	it "Iron Find method returns entry of id number entered" do
		item = Location.new
		item.name = "Favorite"
		item.city = "Barcelona"
		item.country = "Spain"
		item.save
		expect(Location.find(item.id)).to eq(Location.iron_find(item.id))
	end

	it "In_spain? method returns all places in Spain" do
		expect(Location.in_spain?).to eq(Location.where "country ='Spain'")
	end

	it "Last_created method returns n number of results from latest entry " do
		value = 7
		expect(Location.last_created(value)).to eq(Location.order("created_at DESC").limit(value))
	end

end
