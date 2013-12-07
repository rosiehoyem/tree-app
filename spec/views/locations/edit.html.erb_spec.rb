require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :city => "MyString",
      :state => "MyString",
      :bioregion => "MyString",
      :political_region => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_path(@location), "post" do
      assert_select "input#location_city[name=?]", "location[city]"
      assert_select "input#location_state[name=?]", "location[state]"
      assert_select "input#location_bioregion[name=?]", "location[bioregion]"
      assert_select "input#location_political_region[name=?]", "location[political_region]"
    end
  end
end
