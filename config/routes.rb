Rails.application.routes.draw do
      resources :order_items, only: [:index, :show]
      resources :orders, only: [:index, :create, :show]
      resources :cart_items, only: [:index, :create, :show]
      resources :products, only: [:index, :show]
      resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      resources :users, only: [:create]
      # get "/signup", to: "users#new"
      post "/login", to: "users#login"
      get "/auto_login", to: "users#auto_login"
end
