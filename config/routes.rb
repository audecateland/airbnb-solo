Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :listings, only: %i[new create destroy show index edit update] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[destroy index]
  resources :reviews, only: %i[new create destroy index]
end
