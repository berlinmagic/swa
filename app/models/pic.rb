class Pic < ActiveRecord::Base
  
  belongs_to :owner, :polymorphic => true
  attr_accessible :cropping, :image, :owner_type, :owner_id, :owner
  
  image_accessor :image
  
end
