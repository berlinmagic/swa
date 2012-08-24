class Person < ActiveRecord::Base
  
  belongs_to :user
  
  has_many :skills, :class_name => "Skill", :foreign_key => "person_id", :dependent => :destroy
  
  has_many :services, :class_name => "Service", :foreign_key => "person_id", :dependent => :destroy
  
  GENDERS = %w(male female)
  
  attr_accessible :birthday, :first_name, :name, :nick_name, :proffession, :sex
  
  def full_name
    daname = []
    #daname << I18n.t(self.sex) if !self.sex.blank?
    daname << self.first_name if !self.first_name.blank?
    daname << self.name if !self.name.blank?
    daname.join(' ')
  end
  
end
