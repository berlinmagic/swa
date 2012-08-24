class Skill < ActiveRecord::Base
  
  belongs_to :person
  attr_accessible :certificate, :experience, :image_uid, :language, :level, :name, :panorama_crop, :scare_crop, :software, :hardware, :image, :person_id
  
  image_accessor :image
  validates_property  :mime_type, :of => :image, :in => %w(image/jpeg image/png image/gif)
  
end
