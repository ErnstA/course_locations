require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe LocationsController do

  def mock_location(stubs={})
    @mock_location ||= mock_model(Location, stubs).as_null_object
  end

#  describe "GET index" do
#    it "assigns all locations as @locations" do
#      Location.stub(:all) { [mock_location] }
#      get :index
#      assigns(:locations).should eq([mock_location])
#    end
#  end
#
#  describe "GET show" do
#    it "assigns the requested location as @location" do
#      Location.stub(:find).with("37") { mock_location }
#      get :show, :id => "37"
#      assigns(:location).should be(mock_location)
#    end
#  end
#
#  describe "GET new" do
#    it "assigns a new location as @location" do
#      Location.stub(:new) { mock_location }
#      get :new
#      assigns(:location).should be(mock_location)
#    end
#  end
#
#  describe "GET edit" do
#    it "assigns the requested location as @location" do
#      Location.stub(:find).with("37") { mock_location }
#      get :edit, :id => "37"
#      assigns(:location).should be(mock_location)
#    end
#  end
#
#  describe "POST create" do
#    describe "with valid params" do
#      it "assigns a newly created location as @location" do
#        Location.stub(:new).with({'these' => 'params'}) { mock_location(:save => true) }
#        post :create, :location => {'these' => 'params'}
#        assigns(:location).should be(mock_location)
#      end
#
#      it "redirects to the created location" do
#        Location.stub(:new) { mock_location(:save => true) }
#        post :create, :location => {}
#        response.should redirect_to(location_url(mock_location))
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns a newly created but unsaved location as @location" do
#        Location.stub(:new).with({'these' => 'params'}) { mock_location(:save => false) }
#        post :create, :location => {'these' => 'params'}
#        assigns(:location).should be(mock_location)
#      end
#
#      it "re-renders the 'new' template" do
#        Location.stub(:new) { mock_location(:save => false) }
#        post :create, :location => {}
#        response.should render_template("new")
#      end
#    end
#  end
#
#  describe "PUT update" do
#    describe "with valid params" do
#      it "updates the requested location" do
#        Location.stub(:find).with("37") { mock_location }
#        mock_location.should_receive(:update_attributes).with({'these' => 'params'})
#        put :update, :id => "37", :location => {'these' => 'params'}
#      end
#
#      it "assigns the requested location as @location" do
#        Location.stub(:find) { mock_location(:update_attributes => true) }
#        put :update, :id => "1"
#        assigns(:location).should be(mock_location)
#      end
#
#      it "redirects to the location" do
#        Location.stub(:find) { mock_location(:update_attributes => true) }
#        put :update, :id => "1"
#        response.should redirect_to(location_url(mock_location))
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns the location as @location" do
#        Location.stub(:find) { mock_location(:update_attributes => false) }
#        put :update, :id => "1"
#        assigns(:location).should be(mock_location)
#      end
#
#      it "re-renders the 'edit' template" do
#        Location.stub(:find) { mock_location(:update_attributes => false) }
#        put :update, :id => "1"
#        response.should render_template("edit")
#      end
#    end
#  end
#
#  describe "DELETE destroy" do
#    it "destroys the requested location" do
#      Location.stub(:find).with("37") { mock_location }
#      mock_location.should_receive(:destroy)
#      delete :destroy, :id => "37"
#    end
#
#    it "redirects to the locations list" do
#      Location.stub(:find) { mock_location }
#      delete :destroy, :id => "1"
#      response.should redirect_to(locations_url)
#    end
#  end

end
