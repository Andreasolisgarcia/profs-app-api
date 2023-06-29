Rails.application.routes.draw do
  resources :user_roles
  resources :roles
  resources :cart_courses
  resources :carts
  resources :orders
  resources :courses
  resources :addresses
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
