require 'spec_helper'

describe "variables/new.html.erb" do
  before(:each) do
    assign(:variable, stub_model(Variable,
      :name => "MyString",
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new variable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => variables_path, :method => "post" do
      assert_select "input#variable_name", :name => "variable[name]"
      assert_select "input#variable_value", :name => "variable[value]"
    end
  end
end
