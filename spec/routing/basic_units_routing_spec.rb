require "rails_helper"

RSpec.describe BasicUnitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/basic_units").to route_to("basic_units#index")
    end

    it "routes to #show" do
      expect(:get => "/basic_units/1").to route_to("basic_units#show", :id => "1")
    end

    it "routes to #update" do
      expect(:put => "/basic_units/1").to route_to("basic_units#update", :id => "1")
    end
  end
end
