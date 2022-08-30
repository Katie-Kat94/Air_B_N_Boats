# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user = User.create(
  email: "lois@lois.com",
  password: "123456"
)

Boat.create!(
  user: user,
  name: "Sailing Boat",
  category: "Sailing Boat",
  available: true,
  capacity: 1000,
  location: "Mallorca",
  price: 1000.50
)
