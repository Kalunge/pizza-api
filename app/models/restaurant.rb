class Restaurant < ApplicationRecord
  # - A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`
  has_many :restaurant_pizzas
  # add validations - must have a `price` between 1 and 30
  
end
