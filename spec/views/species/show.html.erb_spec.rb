require 'spec_helper'

describe "species/show" do
  before(:each) do
    @species = assign(:species, stub_model(Species,
      :common_name => "Common Name",
      :scientific_name => "Scientific Name",
      :description => "Description",
      :distribution => "Distribution",
      :range_map => "Range Map"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Common Name/)
    rendered.should match(/Scientific Name/)
    rendered.should match(/Description/)
    rendered.should match(/Distribution/)
    rendered.should match(/Range Map/)
  end
end
