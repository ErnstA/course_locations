require 'spec_helper'

describe "organisations/show.html.erb" do
  before(:each) do
    @organisation = assign(:organisation, stub_model(Organisation))
  end

  it "renders attributes in <p>" do
    render
  end
end
