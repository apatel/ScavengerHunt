class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.text :clue_text, :null => false
      t.references :location, :null => false
      t.timestamps
    end
  end
end
