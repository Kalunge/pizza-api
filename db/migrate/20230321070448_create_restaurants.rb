class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.timestamps
    end
  end
end

# write migrations for
# - A `Restaurant` has many `Pizza`s through `RestaurantPizza`
rails g model RestaurantPizza restaurant:references pizza:references
# - A `Pizza` has many `Restaurant`s through `RestaurantPizza`
