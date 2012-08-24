class Service < ActiveRecord::Base
  
  belongs_to :person
  
  has_many :pics, :as => :owner
  
  attr_accessible :certificate, :experience, :hardware, :level, :name, :price, :software, :person_id
  
end
