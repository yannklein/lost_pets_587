# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Pet.destroy_all

puts "Create 10 pets"
10.times do 
  Pet.create(
    name: Faker::Creature::Horse.name,
    species: ["Dog", "Cat", "Bird", "Turtle", "Hamster", "Oyster"].sample,
    lost_on: Faker::Date.between(from: rand(1..4).days.ago, to: Date.today),
    location: Faker::Address.full_address
  )
end
puts "Pets created!"