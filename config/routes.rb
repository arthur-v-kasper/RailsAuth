# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET '/about'
  get "about", to: "about#index"
  
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"
  delete "logout", to: "sessions#destroy"
  
  post "sign_in", to: "sessions#create"
  get "sign_in", to: "sessions#new"

  root to: "main#index"
end
