class User < ActiveRecord::Base
  
  has_one :person
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessor :sex, :name, :first_name, :birthday, :proffession
  attr_accessible :email, :password, :password_confirmation, :remember_me, :sex, :name, :first_name, :birthday, :proffession
  # attr_accessible :title, :body
  
  cattr_accessor  :current_user,    :current_person,    :current_ip
  
  after_create :generate_user_dependencies
  
private
  
  def generate_user_dependencies
    self.create_person! :sex => self.sex, :name => self.name, :first_name => self.first_name, :birthday => !self.birthday.blank? ? Date.parse( self.birthday.to_s ) : nil, :proffession => self.proffession
  end
  
end
