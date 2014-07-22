require 'rails_helper'

RSpec.describe Visit, :type => :model do

	it "should have valid data" do
		visit = Visit.create(location_id: 1, user_name: "Jane", from_date: Date.today, to_date: Date.today+5)
		expect(visit).to be_valid
	end

end
