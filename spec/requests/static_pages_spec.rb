require "rails_helper"

RSpec.describe "Static pages", :type => :request do
  it "allows access to the homepage" do
    get root_url
    
    expect(response).to have_http_status(:success)
  end
  
  it "allows access to the about page" do
    get '/about'
    
    expect(response).to have_http_status(:success)
  end
end