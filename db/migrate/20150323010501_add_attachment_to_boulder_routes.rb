class AddAttachmentToBoulderRoutes < ActiveRecord::Migration
  def change
    add_attachment :boulder_routes, :route_picture
  end
end
