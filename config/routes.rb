# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET '/about'
  get "about", to: "about#index"
  
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"
  
  post "sign_in", to: "sessions#create"
  get "sign_in", to: "sessions#new"

  root to: "main#index"
end
