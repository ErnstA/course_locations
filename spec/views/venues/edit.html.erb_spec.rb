require 'spec_helper'

describe "venues/edit.html.erb" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue))
  end

  it "renders the edit venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => venue_path(@venue), :method => "post" do
    end
  end
end
