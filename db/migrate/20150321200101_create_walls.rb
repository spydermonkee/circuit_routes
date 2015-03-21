class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.integer :gym_id
      t.string :name
      t.timestamps
    end
  end
end
