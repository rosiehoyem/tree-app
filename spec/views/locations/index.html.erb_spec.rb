require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :city => "City",
        :state => "State",
        :bioregion => "Bioregion",
        :political_region => "Political Region"
      ),
      stub_model(Location,
        :city => "City",
        :state => "State",
        :bioregion => "Bioregion",
        :political_region => "Political Region"
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Bioregion".to_s, :count => 2
    assert_select "tr>td", :text => "Political Region".to_s, :count => 2
  end
end
