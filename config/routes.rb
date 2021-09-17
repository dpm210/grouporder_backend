Rails.application.routes.draw do
  resources :individual_orders
  resources :orders
  resources :user_groups
  resources :groups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
