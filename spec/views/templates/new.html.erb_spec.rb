require 'spec_helper'

describe "templates/new" do
  before(:each) do
    assign(:template, stub_model(Template,
      :title => "MyString",
      :summary => "MyString",
      :inprog => false
    ).as_new_record)
  end

  it "renders new template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", templates_path, "post" do
      assert_select "input#template_title[name=?]", "template[title]"
      assert_select "input#template_summary[name=?]", "template[summary]"
      assert_select "input#template_inprog[name=?]", "template[inprog]"
    end
  end
end
