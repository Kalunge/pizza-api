class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
    render json: @pizzas
  end

  def show
    @pizza = Pizza.find(params[:id])
    render json: @pizza
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      render json: @pizza
    else
      render json: {errors: @pizza.errors.full_messages}
    end
  end

  def update
    @pizza = Pizza.find(params[:id])
    if @pizza.update(pizza_params)
      render json: @pizza
    else
      render json: {errors: @pizza.errors.full_messages}
    end
  end

  def destroy
    @pizza = Pizza.find(params[:id])
    @pizza.destroy
    render json: {message: "Pizza deleted"}
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :price, :restaurant_id)
  end
end