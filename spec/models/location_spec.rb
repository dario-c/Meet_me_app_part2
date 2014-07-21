require 'rails_helper'

RSpec.describe Location, :type => :model do

	it "Iron Find method returns entry of id number entered" do
		item = Location.new
		item.name = "Favorite"
		item.city = "Barcelona"
		item.save

		id = 1
		expect(Location.find(id)).to eq(Location.iron_find(id))
	end
end
