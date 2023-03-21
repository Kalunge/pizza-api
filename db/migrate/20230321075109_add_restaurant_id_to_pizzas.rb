class AddRestaurantIdToPizzas < ActiveRecord::Migration[7.0]
  def change
    add_column :pizzas, :restaurant_id, :integer
  end
end
