require 'spec_helper'

describe "trees/edit" do
  before(:each) do
    @tree = assign(:tree, stub_model(Tree,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :species => "MyString"
    ))
  end

  it "renders the edit tree form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tree_path(@tree), "post" do
      assert_select "input#tree_address[name=?]", "tree[address]"
      assert_select "input#tree_latitude[name=?]", "tree[latitude]"
      assert_select "input#tree_longitude[name=?]", "tree[longitude]"
      assert_select "input#tree_species[name=?]", "tree[species]"
    end
  end
end
