# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


torsten = User.create! :email => "torstenwetzel@berlinmagic.com", :password => "behave", :password_confirmation => "behave", :name => "Wetzel", :first_name => "Torsten", :sex => "male", :proffession => "Cofounder at Berlinmagic", :birthday => "1981-04-01"


marco = User.create! :email => "marcosebald@berlinmagic.com", :password => "blackfish", :password_confirmation => "blackfish", :name => "Sebald", :first_name => "Marco", :sex => "male", :proffession => "Cofounder at Berlinmagic", :birthday => "1980-03-01"