class Gym < ActiveRecord::Base
  has_many :walls
  has_many :boulder_routes
end