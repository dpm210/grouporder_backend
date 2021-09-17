Rails.application.routes.draw do
  resources :individual_orders, only: [:index, :show, :create, :update, :destroy]
  resources :orders, only: [:index, :show, :create, :update, :destroy]
  resources :user_groups, only: [:index, :show, :create, :destroy]
  resources :groups, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
