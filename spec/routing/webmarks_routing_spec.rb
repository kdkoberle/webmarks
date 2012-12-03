require "spec_helper"

describe WebmarksController do
  describe "routing" do

    it "routes to #index" do
      get("/webmarks").should route_to("webmarks#index")
    end

    it "routes to #new" do
      get("/webmarks/new").should route_to("webmarks#new")
    end

    it "routes to #show" do
      get("/webmarks/1").should route_to("webmarks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/webmarks/1/edit").should route_to("webmarks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/webmarks").should route_to("webmarks#create")
    end

    it "routes to #update" do
      put("/webmarks/1").should route_to("webmarks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/webmarks/1").should route_to("webmarks#destroy", :id => "1")
    end

  end
end
