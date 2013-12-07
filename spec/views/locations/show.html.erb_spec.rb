require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :city => "City",
      :state => "State",
      :bioregion => "Bioregion",
      :political_region => "Political Region"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Bioregion/)
    rendered.should match(/Political Region/)
  end
end
