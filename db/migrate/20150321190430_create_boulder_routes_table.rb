class CreateBoulderRoutesTable < ActiveRecord::Migration
  def change
    create_table :boulder_routes do |t|
      t.string :route_setter
      t.integer :gym_id
      t.integer :wall_id
      t.timestamps
    end
  end
end
