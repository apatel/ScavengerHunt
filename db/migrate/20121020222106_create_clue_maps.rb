class CreateClueMaps < ActiveRecord::Migration
  def change
    create_table :clue_maps do |t|
      t.references :team
      t.references :current_location
      t.references :next_location
      t.boolean :first
      t.timestamps
    end
  end
end
