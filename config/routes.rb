Rails.application.routes.draw do
  resources :order_items, only: [:index, :show]
  resources :orders, only: [:index, :create]
  resources :cart_items, only: [:create]
  resources :products, only: [:index, :show]
  resources :users, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
