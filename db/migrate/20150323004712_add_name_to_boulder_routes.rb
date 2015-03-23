class AddNameToBoulderRoutes < ActiveRecord::Migration
  def change
    add_column :boulder_routes, :name, :string
  end
end
