Rails.application.routes.draw do
      resources :order_items, only: [:index, :show]
      resources :orders, only: [:index, :create, :show]
      resources :cart_items, only: [:index, :create, :show]
      resources :products, only: [:index, :show]
    #   resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    namespace :api do
        namespace :v1 do
            resources :users, only: [:create]
            # get "/signup", to: "users#new"
            post "/login", to: "auth#login"
            post "/signup", to: "auth#signup"
            get "/auto_login", to: "auth#auto_login"
            get "/users", to: "users#index"
            get "/users/:id", to: "users#show"
        end 
    end 
end
