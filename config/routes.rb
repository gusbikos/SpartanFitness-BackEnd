Rails.application.routes.draw do
  resources :item_reviews
  resources :cart_items
  resources :items
  resources :class_reviews
  resources :scheduled_classes
  resources :gym_classes
  resources :users

  post "/login/google", to: "users#google_login"

  post "/login", to: "users#login"
  post "/signup", to: "users#signup"

  get "/me", to: "users#me"
  patch "/me", to: "users#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
