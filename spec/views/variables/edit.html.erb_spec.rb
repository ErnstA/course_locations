require 'spec_helper'

describe "variables/edit.html.erb" do
  before(:each) do
    @variable = assign(:variable, stub_model(Variable,
      :name => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit variable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => variable_path(@variable), :method => "post" do
      assert_select "input#variable_name", :name => "variable[name]"
      assert_select "input#variable_value", :name => "variable[value]"
    end
  end
end
