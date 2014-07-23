require 'rails_helper'

RSpec.describe Visit, :type => :model do

	it "from_date, to_date and user_name is present" do
		item = Visit.new
		expect(item.valid?).to eq(false)
	end

	it "user_name should only be alphanumeric characters" do
		item = Visit.create user_name: "DarioJane-*&^%$", from_date: Date.today, to_date: Date.today+3
		expect(item.valid?).to eq(false)
	end

	it "visit should be associated with a location" do
		item = Visit.create location_id: nil, user_name: "Jane", from_date: Date.today, to_date: Date.today+3
		expect(item.valid?).to eq(false)
	end

end
