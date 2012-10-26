class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.references :team, :null => false
      t.references :location, :null => false
      t.timestamps
    end
  end
end
