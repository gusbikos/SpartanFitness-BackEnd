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

  patch "/items/:id", to: "items#update"

  post "/cart_items/:id", to: "cart_items#destroy"
  post "/cart_items", to: "cart_items#create"

end
