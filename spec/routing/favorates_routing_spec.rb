require "rails_helper"

RSpec.describe FavoratesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/favorates").to route_to("favorates#index")
    end

    it "routes to #new" do
      expect(:get => "/favorates/new").to route_to("favorates#new")
    end

    it "routes to #show" do
      expect(:get => "/favorates/1").to route_to("favorates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/favorates/1/edit").to route_to("favorates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/favorates").to route_to("favorates#create")
    end

    it "routes to #update" do
      expect(:put => "/favorates/1").to route_to("favorates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/favorates/1").to route_to("favorates#destroy", :id => "1")
    end

  end
end
