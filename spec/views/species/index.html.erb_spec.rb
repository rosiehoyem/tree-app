require 'spec_helper'

describe "species/index" do
  before(:each) do
    assign(:species, [
      stub_model(Species,
        :common_name => "Common Name",
        :scientific_name => "Scientific Name",
        :description => "Description",
        :distribution => "Distribution",
        :range_map => "Range Map"
      ),
      stub_model(Species,
        :common_name => "Common Name",
        :scientific_name => "Scientific Name",
        :description => "Description",
        :distribution => "Distribution",
        :range_map => "Range Map"
      )
    ])
  end

  it "renders a list of species" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "Scientific Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Distribution".to_s, :count => 2
    assert_select "tr>td", :text => "Range Map".to_s, :count => 2
  end
end
