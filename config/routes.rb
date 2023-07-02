Rails.application.routes.draw do
  resources :addresses
  resources :user_roles
  resources :roles
  resources :cart_courses
  resources :carts
  resources :orders
  resources :courses
  devise_for :users

  resources :teachers, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
