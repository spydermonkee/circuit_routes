class BoulderRoute < ActiveRecord::Base
  belongs_to :gym
  belongs_to :wall
  has_attached_file :route_picture, :styles => { :medium => "400x400>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :route_picture, :content_type => /\Aimage\/.*\Z/

end