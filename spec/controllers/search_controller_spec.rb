require 'rails_helper'

RSpec.describe SearchController, :type => :controller do

  describe "GET #details" do
    it "returns http success" do
      get :details
      expect(response).to have_http_status(:success)
    end
  end

end
