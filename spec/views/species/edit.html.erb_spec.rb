require 'spec_helper'

describe "species/edit" do
  before(:each) do
    @species = assign(:species, stub_model(Species,
      :common_name => "MyString",
      :scientific_name => "MyString",
      :description => "MyString",
      :distribution => "MyString",
      :range_map => "MyString"
    ))
  end

  it "renders the edit species form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", species_path(@species), "post" do
      assert_select "input#species_common_name[name=?]", "species[common_name]"
      assert_select "input#species_scientific_name[name=?]", "species[scientific_name]"
      assert_select "input#species_description[name=?]", "species[description]"
      assert_select "input#species_distribution[name=?]", "species[distribution]"
      assert_select "input#species_range_map[name=?]", "species[range_map]"
    end
  end
end
