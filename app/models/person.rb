class Person < ActiveRecord::Base
  
  GENDERS = %w(male female)
  
  attr_accessible :birthday, :first_name, :name, :nick_name, :proffession, :sex
end
