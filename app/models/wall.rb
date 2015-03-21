class Wall < ActiveRecord::Base
  belongs_to :gym
  has_many :boulder_routes
end
