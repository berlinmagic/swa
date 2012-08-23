class Skill < ActiveRecord::Base
  attr_accessible :certificate, :experience, :image_uid, :language, :level, :name, :panorama_crop, :scare_crop, :software
end
