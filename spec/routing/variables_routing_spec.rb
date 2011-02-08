require "spec_helper"

describe VariablesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/variables" }.should route_to(:controller => "variables", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/variables/new" }.should route_to(:controller => "variables", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/variables/1" }.should route_to(:controller => "variables", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/variables/1/edit" }.should route_to(:controller => "variables", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/variables" }.should route_to(:controller => "variables", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/variables/1" }.should route_to(:controller => "variables", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/variables/1" }.should route_to(:controller => "variables", :action => "destroy", :id => "1")
    end

  end
end
