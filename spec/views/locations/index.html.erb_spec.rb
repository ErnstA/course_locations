require 'spec_helper'

describe "locations/index.html.erb" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :type => "Type",
        :parent_id => "Parent"
      ),
      stub_model(Location,
        :name => "Name",
        :type => "Type",
        :parent_id => "Parent"
      )
    ])
  end

  it "renders a list of locations" do
    :pending
#todo: undefined method `display_segment' for #<ActionView::Base:0x0000001f2db788>
#    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "tr>td", :text => "Parent".to_s, :count => 2
  end
end
