class Person < ActiveRecord::Base
  
  belongs_to :user
  
  GENDERS = %w(male female)
  
  attr_accessible :birthday, :first_name, :name, :nick_name, :proffession, :sex
end
