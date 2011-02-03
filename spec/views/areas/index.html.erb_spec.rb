require 'spec_helper'

describe "areas/index.html.erb" do
  before(:each) do
    assign(:areas, [
      stub_model(Area),
      stub_model(Area)
    ])
  end

  it "renders a list of areas" do
    render
  end
end
