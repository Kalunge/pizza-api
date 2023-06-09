# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# use faker to generate fake data
require "faker"
# create 10 restaurants
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end

# create 10 pizzas
10.times do
  Pizza.create(
    name: Faker::Food.dish,
    ingredients: Faker::Food.ingredient,
    restaurant_id: Faker::Number.between(from: 1, to: 10)
  )
end

# create 10 restaurant_pizzas
10.times do
  RestaurantPizza.create(
    restaurant_id: Faker::Number.between(from: 1, to: 10),
    pizza_id: Faker::Number.between(from: 1, to: 10),
    price: Faker::Number.between(from: 1, to: 30)
  )
end

# migration to add restaurant_id to pizzas