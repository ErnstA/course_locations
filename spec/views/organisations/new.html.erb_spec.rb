require 'spec_helper'

describe "organisations/new.html.erb" do
  before(:each) do
    assign(:organisation, stub_model(Organisation).as_new_record)
  end

  it "renders new organisation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organisations_path, :method => "post" do
    end
  end
end
