require 'rails_helper'

RSpec.describe LocationsController, :type => :controller do

	it "renders the index template" do
    get :index
    expect(response).to render_template("index")
  end

  it "receives status 200 successful" do #testing response of URL status = 200 successful
  	location = Location.create()
    get :show, id: location.id
    expect(response.status).to eq(200)
  end

  it "renders the show template with a specific id" do #testing if HTML file rendering on the page
  	location = Location.create(:id => 1)
    get(:show, {'id' => "1"})
    expect(response).to render_template(:show)
  end

  it "assigns to @location" do
  	location = Location.create(:id => 1)
    get(:show, {'id' => "1"})
    expect(assigns(:location)).to eq location #assigns to instance variable @location in controller
  end

  it "receives status 404 error - not found" do
  	location = Location.create(:id => 1)
    get(:show, {'id' => "100"})
    expect(response.status).to eq(404)
  end

end
