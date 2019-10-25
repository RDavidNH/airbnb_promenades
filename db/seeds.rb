# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |i|

  city = City.create(
    city_name: Faker::Address.city
  )

  dog_sitter = DogSitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: city
  )
  
  dog = Dog.create(
    name: Faker::Creature::Dog.name,
    city: city
  )
  
  stroll = Stroll.create(
    date: Faker::Date.in_date_period,
    dog: dog,
    dog_sitter: dog_sitter,
  )
  
end
