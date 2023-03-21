class Pizza < ApplicationRecord
  # - A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`
has_many :restaurant_pizzas
end
