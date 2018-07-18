require_relative "spec_helper"

def app
  ApplicationController
end


describe ApplicationController do
  it "responds with a welcome message" do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Welcome to the Diner App!")
  end
	
	it "capitalizes the name of the diner" do
		diner = Diner.create(name: "Jim Bobs", specialty: "BBQ kingdom")
		visit '/diners'
    expect(page.body).to include("JIM BOBS")
  end
end
