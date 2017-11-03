# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Populate listing with fake data

# user = User.create!(
# 	:name => 'Kinj',
#   :email => 'king4@gmail.com',
#   :password => '12345'
#   )
# puts user.inspect

ActiveRecord::Base.transaction do
  10.times do 
Listing.create!([{
	:title => Faker::Name.name,
	:description => Faker::Name.name,
	:country => Faker::Name.name,
	:state_or_province => Faker::Name.name,
	:address => Faker::Name.name,
	:number_of_guests => rand(1..5),
	:price_per_night => rand(10..500),
	:user_id => (1..User.all.size).to_a.sample
	}])
  end
end