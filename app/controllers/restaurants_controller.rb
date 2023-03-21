class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render json: @restaurant
    else
      render json: {errors: @restaurant.errors.full_messages}
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: {errors: @restaurant.errors.full_messages}
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    render json: {message: "Restaurant deleted"}
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
