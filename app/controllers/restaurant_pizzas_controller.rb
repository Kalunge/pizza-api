class RestaurantPizzasController < ApplicationController

  def index
    @restaurant_pizzas = RestaurantPizza.all
    render json: @restaurant_pizzas
  end

  def show
    @restaurant_pizza = RestaurantPizza.find(params[:id])
    render json: @restaurant_pizza

    # rescue not found using not_found method
    rescue ActiveRecord::RecordNotFound
      not_found
  end

  def create
    @restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
    if @restaurant_pizza.save
      render json: @restaurant_pizza
    else
      render json: {errors: @restaurant_pizza.errors.full_messages}
    end
  end

  private

  def restaurant_pizza_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
  end

  def not_found
    render json: {error: "RestaurantPizza not found"}, status: :not_found
  end

end

# migrations to add column price to restaurant_pizzas
# 
