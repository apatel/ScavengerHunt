class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.text :hint_text, :null => false
      t.references :clue, :null => false
      t.timestamps
    end
  end
end
