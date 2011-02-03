require 'spec_helper'

describe "organisations/index.html.erb" do
  before(:each) do
    assign(:organisations, [
      stub_model(Organisation),
      stub_model(Organisation)
    ])
  end

  it "renders a list of organisations" do
    render
  end
end
