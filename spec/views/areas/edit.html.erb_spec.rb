require 'spec_helper'

describe "areas/edit.html.erb" do
  before(:each) do
    @area = assign(:area, stub_model(Area))
  end

  it "renders the edit area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => area_path(@area), :method => "post" do
    end
  end
end
