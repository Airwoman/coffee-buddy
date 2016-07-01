# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
harrison = Casein::AdminUser.create :name => 'harrison', :login => 'admin' :email=>'harrison.chow@hotmail.com', :password=> 'chicken', :password_confirmation=>'chicken'
