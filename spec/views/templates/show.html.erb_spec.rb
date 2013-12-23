require 'spec_helper'

describe "templates/show" do
  before(:each) do
    @template = assign(:template, stub_model(Template,
      :title => "Title",
      :summary => "Summary",
      :inprog => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Summary/)
    rendered.should match(/false/)
  end
end
