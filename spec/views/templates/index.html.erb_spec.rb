require 'spec_helper'

describe "templates/index" do
  before(:each) do
    assign(:templates, [
      stub_model(Template,
        :title => "Title",
        :summary => "Summary",
        :inprog => false
      ),
      stub_model(Template,
        :title => "Title",
        :summary => "Summary",
        :inprog => false
      )
    ])
  end

  it "renders a list of templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
