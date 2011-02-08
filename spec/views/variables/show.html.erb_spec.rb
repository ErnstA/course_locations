require 'spec_helper'

describe "variables/show.html.erb" do
  before(:each) do
    @variable = assign(:variable, stub_model(Variable,
      :name => "Name",
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
