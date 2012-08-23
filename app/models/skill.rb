class Skill < ActiveRecord::Base
  
  belongs_to :person
  attr_accessible :certificate, :experience, :image_uid, :language, :level, :name, :panorama_crop, :scare_crop, :software
  
end
