# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"


Boat.destroy_all
User.destroy_all

# user = User.create(
#   email: "lois@lois.com",
#   password: "123456"
# )

# Boat.create!(
#   user: user,
#   name: "Sailing Boat",
#   category: "Sailing Boat",
#   available: true,
#   capacity: 1000,
#   location: "Mallorca",
#   price: 1000.50
# )

10.times do
  u = User.create(email: Faker::Internet.email, password: "123456")
  2.times do
    boat = Boat.create!(
    user: u,
    name: Faker::Ancient.god,
    category: ["Luxury", "Fishing", "Sailing", "Superyacht"].sample,
    available: true,
    capacity: rand(5..200),
    location: Faker::Address.street_address,
    price: Faker::Number.within(range: 250..5000),
    rating: Faker::Number.within(range: 1..5)
    )
    puts boat.name
  end

end

# puts "adding restaurants"
