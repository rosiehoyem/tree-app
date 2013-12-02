class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :species

      t.timestamps
    end
  end
end
