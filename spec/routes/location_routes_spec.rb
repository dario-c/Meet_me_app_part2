require 'rails_helper'

RSpec.describe "Locations Routing", :type => :routing do

	it "Routes to locations index" do
    expect(get: "/locations").to route_to("locations#index")
  end

  it "Routes to location with id" do
    expect(get: "/locations/999").to route_to(controller: "locations", action: "show", id: "999")
  end

end