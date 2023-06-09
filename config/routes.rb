Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # GET /restaurants and DELETE /restaurants/:id
  resources :restaurants, only: [:index, :destroy, :show]
  resources :pizzas, only: [:index, :destroy, :show]

  # POST /restaurant_pizzas
  resources :restaurant_pizzas, only: [:create]
end



