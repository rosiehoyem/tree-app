require 'spec_helper'

describe "trees/index" do
  before(:each) do
    assign(:trees, [
      stub_model(Tree,
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :species => "Species"
      ),
      stub_model(Tree,
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :species => "Species"
      )
    ])
  end

  it "renders a list of trees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Species".to_s, :count => 2
  end
end
