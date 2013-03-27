require "spec_helper"

describe UsersFactoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/users_factories").should route_to("users_factories#index")
    end

    it "routes to #new" do
      get("/users_factories/new").should route_to("users_factories#new")
    end

    it "routes to #show" do
      get("/users_factories/1").should route_to("users_factories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/users_factories/1/edit").should route_to("users_factories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/users_factories").should route_to("users_factories#create")
    end

    it "routes to #update" do
      put("/users_factories/1").should route_to("users_factories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/users_factories/1").should route_to("users_factories#destroy", :id => "1")
    end

  end
end
