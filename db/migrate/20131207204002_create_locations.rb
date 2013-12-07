class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :bioregion
      t.string :political_region

      t.timestamps
    end
  end
end
