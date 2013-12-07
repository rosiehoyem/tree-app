class RemoveSpeciesAndAddSpeciesFkToTrees < ActiveRecord::Migration
  def change
  	remove_column :trees, :species, :string
  	add_reference :trees, :species, index: true  
  end
end
