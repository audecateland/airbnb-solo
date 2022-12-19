Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :listings, only: %i[new create destroy show index]
  resources :bookings, only: %i[new create destroy index]
  resources :reviews, only: %i[new create destroy index]
end
