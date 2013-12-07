class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :description
      t.string :distribution
      t.string :range_map

      t.timestamps
    end
  end
end
