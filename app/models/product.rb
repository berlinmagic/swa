class Product < ActiveRecord::Base
  
  belongs_to :person
  
  has_many :pics, :as => :owner
  
  attr_accessible :name, :data, :manufactor, :requirements, :product_type, :usecase, :person_id
  
end
